﻿using Avalonia.Collections;
using Avalonia.Controls;
using Avalonia.Media.Immutable;
using Avalonia.Media;
using Avalonia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Petzold.Media2D;
using DominoVisualizer.CustomControls;

namespace DominoVisualizer
{
    /// <summary>
    /// Provides a base class for shape elements, such as <see cref="Ellipse"/>, <see cref="Polygon"/> and <see cref="Rectangle"/>.
    /// </summary>
    public class ArrowLineNew : Control
    {
        /// <summary>
        /// Defines the <see cref="Fill"/> property.
        /// </summary>
        public static readonly StyledProperty<IBrush?> FillProperty =
            AvaloniaProperty.Register<ArrowLineNew, IBrush?>(nameof(Fill));

        /// <summary>
        /// Defines the <see cref="Stretch"/> property.
        /// </summary>
        public static readonly StyledProperty<Stretch> StretchProperty =
            AvaloniaProperty.Register<ArrowLineNew, Stretch>(nameof(Stretch));

        /// <summary>
        /// Defines the <see cref="Stroke"/> property.
        /// </summary>
        public static readonly StyledProperty<IBrush?> StrokeProperty =
            AvaloniaProperty.Register<ArrowLineNew, IBrush?>(nameof(Stroke));

        /// <summary>
        /// Defines the <see cref="StrokeDashArray"/> property.
        /// </summary>
        public static readonly StyledProperty<AvaloniaList<double>?> StrokeDashArrayProperty =
            AvaloniaProperty.Register<ArrowLineNew, AvaloniaList<double>?>(nameof(StrokeDashArray));

        /// <summary>
        /// Defines the <see cref="StrokeDashOffset"/> property.
        /// </summary>
        public static readonly StyledProperty<double> StrokeDashOffsetProperty =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(StrokeDashOffset));

        /// <summary>
        /// Defines the <see cref="StrokeThickness"/> property.
        /// </summary>
        public static readonly StyledProperty<double> StrokeThicknessProperty =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(StrokeThickness));

        /// <summary>
        /// Defines the <see cref="StrokeLineCap"/> property.
        /// </summary>
        public static readonly StyledProperty<PenLineCap> StrokeLineCapProperty =
            AvaloniaProperty.Register<ArrowLineNew, PenLineCap>(nameof(StrokeLineCap), PenLineCap.Flat);

        /// <summary>
        /// Defines the <see cref="StrokeJoin"/> property.
        /// </summary>
        public static readonly StyledProperty<PenLineJoin> StrokeJoinProperty =
            AvaloniaProperty.Register<ArrowLineNew, PenLineJoin>(nameof(StrokeJoin), PenLineJoin.Miter);

        /// <summary>
        ///     Identifies the ArrowAngle dependency property.
        /// </summary>
        public static readonly StyledProperty<double> ArrowAngleProperty =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(ArrowAngle), 45);

        /// <summary>
        ///     Gets or sets the angle between the two sides of the arrowhead.
        /// </summary>
        public double ArrowAngle
        {
            set { SetValue(ArrowAngleProperty, value); }
            get { return (double)GetValue(ArrowAngleProperty); }
        }

        /// <summary>
        ///     Identifies the ArrowLength dependency property.
        /// </summary>
        public static readonly StyledProperty<double> ArrowLengthProperty =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(ArrowLength), 12);

        /// <summary>
        ///     Gets or sets the length of the two sides of the arrowhead.
        /// </summary>
        public double ArrowLength
        {
            set { SetValue(ArrowLengthProperty, value); }
            get { return (double)GetValue(ArrowLengthProperty); }
        }

        /// <summary>
        ///     Identifies the IsArrowClosed dependency property.
        /// </summary>
        public static readonly StyledProperty<bool> IsArrowClosedProperty =
            AvaloniaProperty.Register<ArrowLineNew, bool>(nameof(IsArrowClosed), false);

        /// <summary>
        ///     Gets or sets the property that determines if the arrow head
        ///     is closed to resemble a triangle.
        /// </summary>
        public bool IsArrowClosed
        {
            set { SetValue(IsArrowClosedProperty, value); }
            get { return (bool)GetValue(IsArrowClosedProperty); }
        }

        /// <summary>
        ///     Identifies the X1 dependency property.
        /// </summary>
        public static readonly StyledProperty<double> X1Property =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(X1), 0);

        /// <summary>
        ///     Gets or sets the x-coordinate of the ArrowLine start point.
        /// </summary>
        public double X1
        {
            set { SetValue(X1Property, value); }
            get { return (double)GetValue(X1Property); }
        }

        /// <summary>
        ///     Identifies the Y1 dependency property.
        /// </summary>
        public static readonly StyledProperty<double> Y1Property =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(Y1), 0);

        /// <summary>
        ///     Gets or sets the y-coordinate of the ArrowLine start point.
        /// </summary>
        public double Y1
        {
            set { SetValue(Y1Property, value); }
            get { return (double)GetValue(Y1Property); }
        }

        /// <summary>
        ///     Identifies the X2 dependency property.
        /// </summary>
        public static readonly StyledProperty<double> X2Property =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(X2), 0);

        /// <summary>
        ///     Gets or sets the x-coordinate of the ArrowLine end point.
        /// </summary>
        public double X2
        {
            set { SetValue(X2Property, value); }
            get { return (double)GetValue(X2Property); }
        }

        /// <summary>
        ///     Identifies the Y2 dependency property.
        /// </summary>
        public static readonly StyledProperty<double> Y2Property =
            AvaloniaProperty.Register<ArrowLineNew, double>(nameof(Y2), 0);

        /// <summary>
        ///     Gets or sets the y-coordinate of the ArrowLine end point.
        /// </summary>
        public double Y2
        {
            set { SetValue(Y2Property, value); }
            get { return (double)GetValue(Y2Property); }
        }

        private Matrix _transform = Matrix.Identity;
        private Geometry? _definingGeometry;
        private Geometry? _renderedGeometry;

        protected PathGeometry pathgeo;
        protected PathFigure pathfigLine;
        //protected PolyBezierSegment bezsegLine;
        protected PolyLineSegment polysegLine;

        PathFigure pathfigHead1;
        PolyLineSegment polysegHead1;
        PathFigure pathfigHead2;
        PolyLineSegment polysegHead2;

        public List<DominoUILinePoint> Points { set; get; }

        public bool PointBezier { set; get; } = true;

        static ArrowLineNew()
        {
            AffectsMeasure<ArrowLineNew>(StretchProperty, StrokeThicknessProperty);

            AffectsRender<ArrowLineNew>(FillProperty, StrokeProperty, StrokeDashArrayProperty, StrokeDashOffsetProperty,
                StrokeThicknessProperty, StrokeLineCapProperty, StrokeJoinProperty);

            AffectsMeasure<ArrowLineNew>(ArrowAngleProperty, ArrowLengthProperty, IsArrowClosedProperty);
            AffectsRender<ArrowLineNew>(ArrowAngleProperty, ArrowLengthProperty, IsArrowClosedProperty);

            AffectsMeasure<ArrowLineNew>(X1Property, Y1Property, X2Property, Y2Property);
            AffectsRender<ArrowLineNew>(X1Property, Y1Property, X2Property, Y2Property);
        }

        public ArrowLineNew()
        {
            pathgeo = new PathGeometry();

            pathfigLine = new PathFigure();

            pathfigHead1 = new PathFigure();
            polysegHead1 = new PolyLineSegment();
            pathfigHead1.Segments.Add(polysegHead1);

            pathfigHead2 = new PathFigure();
            polysegHead2 = new PolyLineSegment();
            pathfigHead2.Segments.Add(polysegHead2);
        }

        /// <summary>
        /// Gets a value that represents the <see cref="Geometry"/> of the shape.
        /// </summary>
        public Geometry? DefiningGeometry
        {
            get
            {
                pathgeo.Figures.Clear();

                /*if (bezsegLine != null)
                {
                    double lineLen1;
                    double lineLen2;

                    if (Points != null && Points.Count > 0)
                    {
                        lineLen1 = Point.Subtract(Points[0].Point, new Point(X1, Y1)).Length;
                        lineLen2 = Point.Subtract(new Point(X2, Y2), Points[^1].Point).Length;
                    }
                    else
                    {
                        var p1 = new Point(X1, Y1);
                        var p2 = new Point(X2, Y2);

                        lineLen1 = Point.Subtract(p2, p1).Length;
                        lineLen2 = Point.Subtract(p2, p1).Length;
                    }

                    pathfigLine.StartPoint = new Point(X1, Y1);
                    bezsegLine.Points.Clear();
                    bezsegLine.Points.Add(new Point(X1 + Math.Min(100, lineLen1 / 3), Y1)); // (lineLen / 5)

                    if (Points != null)
                        for (int i = 0; i < Points.Count; i++)
                        {
                            Point currPoint = Points[i].Point;

                            if (PointBezier)
                            {
                                Point refPoint;
                                double lineLenRef;
                                bool refEnd = false;

                                if (i == 0)
                                {
                                    refPoint = new Point(X1, Y1);
                                    lineLenRef = Point.Subtract(currPoint, refPoint).Length;
                                    double lineTmp;

                                    if (Points.Count == 1)
                                        lineTmp = Point.Subtract(new Point(X2, Y2), currPoint).Length;
                                    else
                                        lineTmp = Point.Subtract(Points[i + 1].Point, currPoint).Length;

                                    if (lineTmp < lineLenRef)
                                    {
                                        lineLenRef = lineTmp;
                                        refEnd = true;

                                        if (Points.Count == 1)
                                            refPoint = new Point(X2, Y2);
                                        else
                                            refPoint = Points[i + 1].Point;
                                    }
                                }
                                else if (i == Points.Count - 1)
                                {
                                    refPoint = new Point(X2, Y2);
                                    lineLenRef = Point.Subtract(currPoint, refPoint).Length;
                                    double lineTmp = Point.Subtract(Points[i - 1].Point, currPoint).Length;
                                    refEnd = true;

                                    if (lineTmp < lineLenRef)
                                    {
                                        lineLenRef = lineTmp;
                                        refEnd = false;

                                        refPoint = Points[i - 1].Point;
                                    }
                                }
                                else
                                {
                                    refPoint = Points[i - 1].Point;
                                    lineLenRef = Point.Subtract(currPoint, refPoint).Length;
                                    double lineTmp = Point.Subtract(Points[i + 1].Point, currPoint).Length;

                                    if (lineTmp < lineLenRef)
                                    {
                                        lineLenRef = lineTmp;
                                        refEnd = true;
                                        refPoint = Points[i + 1].Point;
                                    }
                                }

                                double alX1 = 0;
                                double alX2 = 0;
                                double alY1 = 0;
                                double alY2 = 0;

                                double angle = Math.Atan2(refPoint.X - currPoint.X, refPoint.Y - currPoint.Y) * (180 / Math.PI);
                                if (refEnd)
                                    angle = Math.Atan2(currPoint.X - refPoint.X, currPoint.Y - refPoint.Y) * (180 / Math.PI);

                                if (angle >= -45 && angle <= 45)
                                {
                                    alX1 = 0;
                                    alX2 = 0;
                                    alY1 = +Math.Min(100, lineLenRef / 3);
                                    alY2 = -Math.Min(100, lineLenRef / 3);
                                }
                                if (angle < -45 && angle >= -135)
                                {
                                    alX1 = -Math.Min(100, lineLenRef / 3);
                                    alX2 = +Math.Min(100, lineLenRef / 3);
                                    alY1 = 0;
                                    alY2 = 0;
                                }
                                if ((angle < -135 && angle >= -180) || (angle > 135 && angle <= 180))
                                {
                                    alX1 = 0;
                                    alX2 = 0;
                                    alY1 = -Math.Min(100, lineLenRef / 3);
                                    alY2 = +Math.Min(100, lineLenRef / 3);
                                }
                                if (angle > 45 && angle <= 135)
                                {
                                    alX1 = +Math.Min(100, lineLenRef / 3);
                                    alX2 = -Math.Min(100, lineLenRef / 3);
                                    alY1 = 0;
                                    alY2 = 0;
                                }

                                bezsegLine.Points.Add(new Point(currPoint.X + alX1, currPoint.Y + alY1));
                                bezsegLine.Points.Add(currPoint);
                                bezsegLine.Points.Add(new Point(currPoint.X + alX2, currPoint.Y + alY2));
                            }
                            else
                            {
                                bezsegLine.Points.Add(currPoint);
                                bezsegLine.Points.Add(currPoint);
                                bezsegLine.Points.Add(currPoint);
                            }
                        }

                    bezsegLine.Points.Add(new Point(X2 - Math.Min(100, lineLen2 / 3), Y2)); // (lineLen / 5)
                    bezsegLine.Points.Add(new Point(X2, Y2));
                }
                else*/
                {
                    // Define a single PathFigure with the points.
                    pathfigLine.StartPoint = new Point(X1, Y1);
                    polysegLine.Points.Clear();

                    if (Points != null)
                        foreach (var p in Points)
                            polysegLine.Points.Add(new Point(p.Point.X, p.Point.Y));

                    polysegLine.Points.Add(new Point(X2, Y2));
                }

                pathgeo.Figures.Add(pathfigLine);

                /*if (bezsegLine != null)
                {
                    int count = bezsegLine.Points.Count;

                    if (count > 0)
                    {
                        // Draw the arrow at the start of the line.
                        //if ((ArrowEnds & ArrowEnds.Start) == ArrowEnds.Start)
                        {
                            Point pt1 = pathfigLine.StartPoint;
                            Point pt2 = GetPos(pathfigLine.StartPoint, bezsegLine.Points[0], bezsegLine.Points[1], bezsegLine.Points[2], 0.03);
                            pathgeo.Figures.Add(CalculateDot(pathfigHead1, pt2, pt1));
                        }

                        // Draw the arrow at the end of the line.
                        //if ((ArrowEnds & ArrowEnds.End) == ArrowEnds.End)
                        {
                            Point pt1 = GetPos(bezsegLine.Points.Count > 4 ? bezsegLine.Points[^4] : pathfigLine.StartPoint, bezsegLine.Points[^3], bezsegLine.Points[^2], bezsegLine.Points[^1], 0.97);
                            Point pt2 = bezsegLine.Points[^1];
                            pathgeo.Figures.Add(CalculateArrow(pathfigHead2, pt1, pt2));
                        }
                    }
                }
                else*/
                {
                    int count = polysegLine.Points.Count;

                    if (count > 0)
                    {
                        // Draw the arrow at the start of the line.
                        //if ((ArrowEnds & ArrowEnds.Start) == ArrowEnds.Start)
                        {
                            Point pt1 = pathfigLine.StartPoint;
                            Point pt2 = polysegLine.Points[0];
                            pathgeo.Figures.Add(CalculateDot(pathfigHead1, pt2, pt1));
                        }

                        // Draw the arrow at the end of the line.
                        //if ((ArrowEnds & ArrowEnds.End) == ArrowEnds.End)
                        {
                            Point pt1 = count == 1 ? pathfigLine.StartPoint :
                                                     polysegLine.Points[count - 2];
                            Point pt2 = polysegLine.Points[count - 1];
                            pathgeo.Figures.Add(CalculateArrow(pathfigHead2, pt1, pt2));
                        }
                    }
                }

                return pathgeo;

                /*if (_definingGeometry == null)
                {
                    _definingGeometry = CreateDefiningGeometry();
                }

                return _definingGeometry;*/
            }
        }

        /// <summary>
        /// Gets a value that represents the final rendered <see cref="Geometry"/> of the shape.
        /// </summary>
        public Geometry? RenderedGeometry
        {
            get
            {
                //if (_renderedGeometry == null && DefiningGeometry != null)
                {
                    if (_transform == Matrix.Identity)
                    {
                        _renderedGeometry = DefiningGeometry;
                    }
                    else
                    {
                        _renderedGeometry = DefiningGeometry.Clone();

                        if (_renderedGeometry.Transform == null ||
                            _renderedGeometry.Transform.Value == Matrix.Identity)
                        {
                            _renderedGeometry.Transform = new MatrixTransform(_transform);
                        }
                        else
                        {
                            _renderedGeometry.Transform = new MatrixTransform(
                                _renderedGeometry.Transform.Value * _transform);
                        }
                    }
                }

                return _renderedGeometry;
            }
        }

        /// <summary>
        /// Gets or sets the <see cref="IBrush"/> that specifies how the shape's interior is painted.
        /// </summary>
        public IBrush? Fill
        {
            get => GetValue(FillProperty);
            set => SetValue(FillProperty, value);
        }

        /// <summary>
        /// Gets or sets a <see cref="Stretch"/> enumeration value that describes how the shape fills its allocated space.
        /// </summary>
        public Stretch Stretch
        {
            get => GetValue(StretchProperty);
            set => SetValue(StretchProperty, value);
        }

        /// <summary>
        /// Gets or sets the <see cref="IBrush"/> that specifies how the shape's outline is painted.
        /// </summary>
        public IBrush? Stroke
        {
            get => GetValue(StrokeProperty);
            set => SetValue(StrokeProperty, value);
        }

        /// <summary>
        /// Gets or sets a collection of <see cref="double"/> values that indicate the pattern of dashes and gaps that is used to outline shapes.
        /// </summary>
        public AvaloniaList<double>? StrokeDashArray
        {
            get => GetValue(StrokeDashArrayProperty);
            set => SetValue(StrokeDashArrayProperty, value);
        }

        /// <summary>
        /// Gets or sets a value that specifies the distance within the dash pattern where a dash begins.
        /// </summary>
        public double StrokeDashOffset
        {
            get => GetValue(StrokeDashOffsetProperty);
            set => SetValue(StrokeDashOffsetProperty, value);
        }

        /// <summary>
        /// Gets or sets the width of the shape outline.
        /// </summary>
        public double StrokeThickness
        {
            get => GetValue(StrokeThicknessProperty);
            set => SetValue(StrokeThicknessProperty, value);
        }

        /// <summary>
        /// Gets or sets a <see cref="PenLineCap"/> enumeration value that describes the shape at the ends of a line.
        /// </summary>
        public PenLineCap StrokeLineCap
        {
            get => GetValue(StrokeLineCapProperty);
            set => SetValue(StrokeLineCapProperty, value);
        }

        /// <summary>
        /// Gets or sets a <see cref="PenLineJoin"/> enumeration value that specifies the type of join that is used at the vertices of a Shape.
        /// </summary>
        public PenLineJoin StrokeJoin
        {
            get => GetValue(StrokeJoinProperty);
            set => SetValue(StrokeJoinProperty, value);
        }

        public sealed override void Render(DrawingContext context)
        {
            var geometry = RenderedGeometry;

            if (geometry != null)
            {
                var stroke = Stroke;

                ImmutablePen? pen = null;

                if (stroke != null)
                {
                    var strokeDashArray = StrokeDashArray;

                    ImmutableDashStyle? dashStyle = null;

                    if (strokeDashArray != null && strokeDashArray.Count > 0)
                    {
                        dashStyle = new ImmutableDashStyle(strokeDashArray, StrokeDashOffset);
                    }

                    pen = new ImmutablePen(
                        stroke.ToImmutable(),
                        StrokeThickness,
                        dashStyle,
                        StrokeLineCap,
                        StrokeJoin);
                }

                context.DrawGeometry(Fill, pen, geometry);
            }
        }

        /// <summary>
        /// Marks a property as affecting the shape's geometry.
        /// </summary>
        /// <param name="properties">The properties.</param>
        /// <remarks>
        /// After a call to this method in a control's static constructor, any change to the
        /// property will cause <see cref="InvalidateGeometry"/> to be called on the element.
        /// </remarks>
        protected static void AffectsGeometry<TArrowLineNew>(params AvaloniaProperty[] properties)
            where TArrowLineNew : ArrowLineNew
        {
            foreach (var property in properties)
            {
                /*property.Changed.Subscribe(e =>
                {
                    if (e.Sender is TArrowLineNew shape)
                    {
                        AffectsGeometryInvalidate(shape, e);
                    }
                });*/
            }
        }

        /// <summary>
        /// Invalidates the geometry of this shape.
        /// </summary>
        protected void InvalidateGeometry()
        {
            _renderedGeometry = null;
            _definingGeometry = null;

            InvalidateMeasure();
        }

        protected override Size MeasureOverride(Size availableSize)
        {
            if (DefiningGeometry is null)
            {
                return default;
            }

            return CalculateSizeAndTransform(availableSize, DefiningGeometry.Bounds, Stretch).size;
        }

        protected override Size ArrangeOverride(Size finalSize)
        {
            if (DefiningGeometry != null)
            {
                // This should probably use GetRenderBounds(strokeThickness) but then the calculations
                // will multiply the stroke thickness as well, which isn't correct.
                var (_, transform) = CalculateSizeAndTransform(finalSize, DefiningGeometry.Bounds, Stretch);

                if (_transform != transform)
                {
                    _transform = transform;
                    _renderedGeometry = null;
                }

                return finalSize;
            }

            return default;
        }

        internal static (Size size, Matrix transform) CalculateSizeAndTransform(Size availableSize, Rect shapeBounds, Stretch Stretch)
        {
            Size shapeSize = new Size(shapeBounds.Right, shapeBounds.Bottom);
            Matrix translate = Matrix.Identity;
            double desiredX = availableSize.Width;
            double desiredY = availableSize.Height;
            double sx = 0.0;
            double sy = 0.0;

            if (Stretch != Stretch.None)
            {
                shapeSize = shapeBounds.Size;
                translate = Matrix.CreateTranslation(-(Vector)shapeBounds.Position);
            }

            if (double.IsInfinity(availableSize.Width))
            {
                desiredX = shapeSize.Width;
            }

            if (double.IsInfinity(availableSize.Height))
            {
                desiredY = shapeSize.Height;
            }

            if (shapeBounds.Width > 0)
            {
                sx = desiredX / shapeSize.Width;
            }

            if (shapeBounds.Height > 0)
            {
                sy = desiredY / shapeSize.Height;
            }

            if (double.IsInfinity(availableSize.Width))
            {
                sx = sy;
            }

            if (double.IsInfinity(availableSize.Height))
            {
                sy = sx;
            }

            switch (Stretch)
            {
                case Stretch.Uniform:
                    sx = sy = Math.Min(sx, sy);
                    break;
                case Stretch.UniformToFill:
                    sx = sy = Math.Max(sx, sy);
                    break;
                case Stretch.Fill:
                    if (double.IsInfinity(availableSize.Width))
                    {
                        sx = 1.0;
                    }

                    if (double.IsInfinity(availableSize.Height))
                    {
                        sy = 1.0;
                    }

                    break;
                default:
                    sx = sy = 1;
                    break;
            }

            var transform = translate * Matrix.CreateScale(sx, sy);
            var size = new Size(shapeSize.Width * sx, shapeSize.Height * sy);
            return (size, transform);
        }

        private static void AffectsGeometryInvalidate(ArrowLineNew control, AvaloniaPropertyChangedEventArgs e)
        {
            // If the geometry is invalidated when Bounds changes, only invalidate when the Size
            // portion changes.
            if (e.Property == BoundsProperty)
            {
                var oldBounds = (Rect)e.OldValue!;
                var newBounds = (Rect)e.NewValue!;

                if (oldBounds.Size == newBounds.Size)
                {
                    return;
                }
            }

            control.InvalidateGeometry();
        }

        public void MakeBezier()
        {
            pathfigLine.Segments.Clear();
            polysegLine = null;

            /*bezsegLine = new PolyBezierSegment();
            pathfigLine.Segments.Add(bezsegLine);*/
        }

        public void MakePoly()
        {
            pathfigLine.Segments.Clear();
            //bezsegLine = null;

            polysegLine = new PolyLineSegment();
            pathfigLine.Segments.Add(polysegLine);
        }

        private Point GetPos(Point p1, Point p2, Point p3, Point p4, double t)
        {
            double x = ((1 - t) * (1 - t) * (1 - t)) * p1.X
            + 3 * ((1 - t) * (1 - t)) * t * p2.X
            + 3 * (1 - t) * (t * t) * p3.X
            + (t * t * t) * p4.X;

            double y = ((1 - t) * (1 - t) * (1 - t)) * p1.Y
            + 3 * ((1 - t) * (1 - t)) * t * p2.Y
            + 3 * (1 - t) * (t * t) * p3.Y
            + (t * t * t) * p4.Y;

            return new Point(x, y);
        }

        PathFigure CalculateArrow(PathFigure pathfig, Point pt1, Point pt2)
        {
            //Matrix matx = new Matrix();
            Vector vect = pt1 - pt2;
            vect.Normalize();
            vect *= ArrowLength;

            PolyLineSegment polyseg = pathfig.Segments[0] as PolyLineSegment;
            polyseg.Points.Clear();
            //matx.Rotate(ArrowAngle / 2);
            //pathfig.StartPoint = pt2 + vect * matx;
            pathfig.StartPoint = pt2 + (MatrixHelper.TransformVector(MatrixHelper.Rotation(ArrowAngle / 2), vect));
            polyseg.Points.Add(pt2);

            //matx.Rotate(-ArrowAngle);
            //polyseg.Points.Add(pt2 + vect * matx);
            polyseg.Points.Add(pt2 + (MatrixHelper.TransformVector(MatrixHelper.Rotation(-ArrowAngle), vect)));
            pathfig.IsClosed = IsArrowClosed;

            return pathfig;
        }

        PathFigure CalculateDot(PathFigure pathfig, Point pt1, Point pt2)
        {
            pathfig.StartPoint = pt2;

            PolyLineSegment polyseg = pathfig.Segments[0] as PolyLineSegment;
            polyseg.Points.Clear();
            polyseg.Points.Add(new(pt2.X - 2, pt2.Y - 5));
            polyseg.Points.Add(new(pt2.X + 3, pt2.Y - 5));
            polyseg.Points.Add(new(pt2.X + 3, pt2.Y + 5));
            polyseg.Points.Add(new(pt2.X - 2, pt2.Y + 5));

            polyseg.Points.Add(new(pt2.X - 2, pt2.Y - 3));
            polyseg.Points.Add(new(pt2.X + 1, pt2.Y - 3));
            polyseg.Points.Add(new(pt2.X + 1, pt2.Y + 3));
            polyseg.Points.Add(new(pt2.X - 1, pt2.Y + 3));

            polyseg.Points.Add(new(pt2.X - 1, pt2.Y - 3));

            return pathfig;
        }
    }
}
