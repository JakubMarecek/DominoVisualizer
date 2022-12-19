using DominoVisualizer.CustomControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;

namespace WpfPanAndZoom.CustomControls
{
    /// <summary>
    /// Interaktionslogik für PanAndZoomCanvas.xaml
    /// https://stackoverflow.com/questions/35165349/how-to-drag-rendertransform-with-mouse-in-wpf
    /// </summary>
    public partial class PanAndZoomCanvas : Canvas
    {
        private  MatrixTransform _transform = new MatrixTransform();
        private Point _initialMousePosition;

        private bool _dragging;
        private UIElement _selectedElement;
        private Vector _draggingDelta;

        private Color _lineColor = Color.FromArgb(0xFF, 0x66, 0x66, 0x66);
        private Color _backgroundColor = (Color)ColorConverter.ConvertFromString("#1e1e1e"); // Color.FromArgb(0xFF, 0x33, 0x33, 0x33);
        private List<Line> _gridLines = new List<Line>();

        public delegate void MyEventHandler(string foo, double x, double y);

        public event MyEventHandler SomethingHappened;

        private List<UIElement> _borderChilds = new();
        private List<Vector> _borderChildsDeltas = new();

        public PanAndZoomCanvas()
        {
            InitializeComponent();

            MouseDown += PanAndZoomCanvas_MouseDown;
            MouseUp += PanAndZoomCanvas_MouseUp;
            MouseMove += PanAndZoomCanvas_MouseMove;
            MouseWheel += PanAndZoomCanvas_MouseWheel;

            Clean();
        }

        public void Clean()
        {
            _transform = new MatrixTransform();
            _gridLines = new();
            Children.Clear();
            _borderChilds = new();
            _borderChildsDeltas = new();
            //zoom = 0;

            BackgroundColor = _backgroundColor;

            // draw lines
            for (int x = -1000; x <= 50000; x += 100)
            {
                Line verticalLine = new Line
                {
                    Stroke = new SolidColorBrush(_lineColor),
                    X1 = x,
                    Y1 = -1000,
                    X2 = x,
                    Y2 = 10000
                };

                if (x % 1000 == 0)
                {
                    verticalLine.StrokeThickness = 6;
                }
                else
                {
                    verticalLine.StrokeThickness = 2;
                }

                Children.Add(verticalLine);
                _gridLines.Add(verticalLine);
            }

            for (int y = -1000; y <= 10000; y += 100)
            {
                Line horizontalLine = new Line
                {
                    Stroke = new SolidColorBrush(_lineColor),
                    X1 = -1000,
                    Y1 = y,
                    X2 = 50000,
                    Y2 = y
                };

                if (y % 1000 == 0)
                {
                    horizontalLine.StrokeThickness = 6;
                }
                else
                {
                    horizontalLine.StrokeThickness = 2;
                }

                Children.Add(horizontalLine);
                _gridLines.Add(horizontalLine);
            }
        }

        public void RefreshChilds()
        {
            foreach (UIElement child in this.Children)
            {
                child.RenderTransform = _transform;
            }
        }

        /*public void ResetZoom()
        {
            for (int i = 0; i < Math.Abs(zoom); i++)
            {
                double xx = Mouse.GetPosition(this).X;
                double yy = Mouse.GetPosition(this).Y;

                aaa(zoom * -1, new(xx, yy));
            }
            zoom = 0;
        }*/

        public Point Transform(Point source)
        {
            return _transform.Inverse.Transform(source);
        }

        public Point Transform2(Point source)
        {
            var bb = Point.Subtract(_transform.Inverse.Transform(source), _transform.Inverse.Transform(new Point(0, 0)));
            return new(bb.X, bb.Y);
        }

        public Point Transform3(Point source)
        {
            var aa = _transform.Inverse.Transform(new Point(0, 0));
            var bb = _transform.Inverse.Transform(source);

            var cc = Point.Add(aa, new(bb.X, bb.Y));

            var dd = _transform.Transform(cc);

            return new(dd.X, dd.Y);
        }

        public Point Transform4(Point source)
        {
            var bb = Point.Subtract(_transform.Transform(source), _transform.Transform(new Point(0, 0)));
            return new(bb.X, bb.Y);
        }

        public float Zoomfactor { get; set; } = 1.1f;

        public Color LineColor
        {
            get { return _lineColor; }

            set
            {
                _lineColor = value;

                foreach( Line line in _gridLines )
                {
                    line.Stroke = new SolidColorBrush(_lineColor);
                }
            }
        }

        public Color BackgroundColor
        {
            get { return _backgroundColor; }

            set
            {
                _backgroundColor = value;
                Background = new SolidColorBrush(_backgroundColor);
            }
        }

        public void SetGridVisibility(Visibility value)
        {
            foreach (Line line in _gridLines)
            {
                line.Visibility = value;
            }
        }

        private void PanAndZoomCanvas_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Right)
            {
                _initialMousePosition = _transform.Inverse.Transform(e.GetPosition(this));
                Cursor = Cursors.SizeAll;
            }

            if (e.ChangedButton == MouseButton.Left && Keyboard.Modifiers == ModifierKeys.Control)
            {
                Cursor = Cursors.SizeAll;

                if (this.Children.Contains((UIElement)e.Source))
                {
                    if (e.Source is Widget widget)
                        if (widget.DisableMove)
                            return;

                    //ResetZoom();

                    _selectedElement = (UIElement)e.Source;
                    Point mousePosition = Mouse.GetPosition(this);
                    double x = Canvas.GetLeft(_selectedElement);
                    double y = Canvas.GetTop(_selectedElement);
                    Point elementPosition = new Point(x, y);
                    _draggingDelta = elementPosition - mousePosition;

                    if (e.Source is BorderD borderD)
                    {
                        if (borderD.EnableMovingChilds)
                            foreach (UIElement child in this.Children)
                            {
                                if (child is Widget widgetC)
                                    if (widgetC.DisableMove)
                                        continue;

                                /*if (child is BorderD)
                                    continue;*/

                                double xc = Canvas.GetLeft(child);
                                double yc = Canvas.GetTop(child);
                                var aa = _transform.Transform(new(borderD.Width, borderD.Height));
                                var bb = _transform.Transform(new Point(0, 0));
                                var cc = Point.Subtract(aa, bb);

                                if (
                                    xc > x &&
                                    yc > y &&
                                    xc < x + cc.X &&
                                    yc < y + cc.Y
                                    )
                                {
                                    _borderChilds.Add(child);
                                    _borderChildsDeltas.Add(new Point(xc, yc) - mousePosition);
                                }
                            }
                    }
                }

                _dragging = true;
            }

            if (e.ChangedButton == MouseButton.Left && Keyboard.Modifiers == ModifierKeys.Shift)
                if (this.Children.Contains((UIElement)e.Source))
                    if (e.Source is BorderD borderD)
                        if (borderD.EnableMove)
                        {
                            Cursor = Cursors.SizeNWSE;

                            _selectedElement = (UIElement)e.Source;

                            _dragging = true;
                        }
        }

        private void PanAndZoomCanvas_MouseUp(object sender, MouseButtonEventArgs e)
        {
            _dragging = false;
            _selectedElement = null;
            _borderChilds.Clear();
            _borderChildsDeltas.Clear();
            Cursor = Cursors.Arrow;
        }

        private void PanAndZoomCanvas_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.RightButton == MouseButtonState.Pressed)
            {
                Point mousePosition = _transform.Inverse.Transform(e.GetPosition(this));
                Vector delta = Point.Subtract(mousePosition, _initialMousePosition);
                var translate = new TranslateTransform(delta.X, delta.Y);
                _transform.Matrix = translate.Value * _transform.Matrix;

                foreach (UIElement child in this.Children)
                {
                    child.RenderTransform = _transform;
                }
            }

            if (_dragging && e.LeftButton == MouseButtonState.Pressed && Keyboard.Modifiers == ModifierKeys.Control)
            {
                if (_selectedElement != null)
                {
                    double x = Mouse.GetPosition(this).X;
                    double y = Mouse.GetPosition(this).Y;

                    Canvas.SetLeft(_selectedElement, x + _draggingDelta.X);
                    Canvas.SetTop(_selectedElement, y + _draggingDelta.Y);

                    if (_selectedElement is Widget widget)
                    {
                        var a = _transform.Inverse.Transform(Mouse.GetPosition(this));
                        var b = Point.Subtract(a, Mouse.GetPosition(_selectedElement));
                        SomethingHappened(widget.ID, b.X, b.Y);
                    }

                    if (_borderChilds.Any())
                    {
                        for (int i = 0; i < _borderChilds.Count; i++)
                        {
                            Canvas.SetLeft(_borderChilds[i], x + _borderChildsDeltas[i].X);
                            Canvas.SetTop(_borderChilds[i], y + _borderChildsDeltas[i].Y);

                            if (_borderChilds[i] is Widget widgetC)
                            {
                                /*var a = _transform.Inverse.Transform(Mouse.GetPosition(this));

                                var aa = new Point(_borderChildsDeltas[i].X, _borderChildsDeltas[i].Y);

                                var bb = _transform.Transform(aa);

                                var c = Point.Add(a, new(bb.X, bb.Y));*/

                                var a = _transform.Inverse.Transform(Mouse.GetPosition(this));
                                var c = Point.Subtract(a, Mouse.GetPosition(_borderChilds[i]));

                                SomethingHappened(widgetC.ID, c.X, c.Y);
                            }
                        }
                    }
                }
            }

            if (_dragging && e.LeftButton == MouseButtonState.Pressed && Keyboard.Modifiers == ModifierKeys.Shift)
                if (_selectedElement is BorderD borderD)
                    if (borderD.EnableMove)
                    {
                        if (_selectedElement != null)
                        {
                            double x = Mouse.GetPosition(this).X;
                            double y = Mouse.GetPosition(this).Y;

                            x -= Canvas.GetLeft(_selectedElement);
                            y -= Canvas.GetTop(_selectedElement);

                            var a = _transform.Inverse.Transform(new(x, y));

                            if (a.X > 50)
                                (_selectedElement as FrameworkElement).Width = a.X;

                            if (a.Y > 50)
                                (_selectedElement as FrameworkElement).Height = a.Y;
                        }
                    }
        }

        /*
        int zoom = 0;

        void aaa(int delta, Point mousePostion)
        {
            float scaleFactor = Zoomfactor;
            if (delta < 0)
            {
                scaleFactor = 1f / scaleFactor;
            }

            Matrix scaleMatrix = _transform.Matrix;
            scaleMatrix.ScaleAt(scaleFactor, scaleFactor, mousePostion.X, mousePostion.Y);
            _transform.Matrix = scaleMatrix;

            foreach (UIElement child in this.Children)
            {
                double x = Canvas.GetLeft(child);
                double y = Canvas.GetTop(child);

                double sx = x * scaleFactor;
                double sy = y * scaleFactor;

                Canvas.SetLeft(child, sx);
                Canvas.SetTop(child, sy);

                child.RenderTransform = _transform;
            }
        }*/

        private void PanAndZoomCanvas_MouseWheel(object sender, MouseWheelEventArgs e)
        {
            /*if (e.Delta > 0)
                zoom++;
            else
                zoom--;*/

            float scaleFactor = Zoomfactor;
            if (e.Delta < 0)
            {
                scaleFactor = 1f / scaleFactor;
            }

            Point mousePostion = e.GetPosition(this);

            Matrix scaleMatrix = _transform.Matrix;
            scaleMatrix.ScaleAt(scaleFactor, scaleFactor, mousePostion.X, mousePostion.Y);
            _transform.Matrix = scaleMatrix;

            foreach (UIElement child in this.Children)
            {
                double x = Canvas.GetLeft(child);
                double y = Canvas.GetTop(child);

                double sx = x * scaleFactor;
                double sy = y * scaleFactor;

                Canvas.SetLeft(child, sx);
                Canvas.SetTop(child, sy);

                child.RenderTransform = _transform;
            }
        }
    }
}
