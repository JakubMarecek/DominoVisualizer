//----------------------------------------------
// ArrowLineBase.cs (c) 2007 by Charles Petzold
//----------------------------------------------
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Media;
using System.Windows.Shapes;

namespace Petzold.Media2D
{
    /// <summary>
    ///     Provides a base class for ArrowLine and ArrowPolyline.
    ///     This class is abstract.
    /// </summary>
    public abstract class ArrowLineBase : Shape
    {
        protected PathGeometry pathgeo;
        protected PathFigure pathfigLine;
        protected PolyBezierSegment bezsegLine;
        protected PolyLineSegment polysegLine;

        PathFigure pathfigHead1;
        PolyLineSegment polysegHead1;
        PathFigure pathfigHead2;
        PolyLineSegment polysegHead2;

        /// <summary>
        ///     Identifies the ArrowAngle dependency property.
        /// </summary>
        public static readonly DependencyProperty ArrowAngleProperty =
            DependencyProperty.Register("ArrowAngle",
                typeof(double), typeof(ArrowLineBase),
                new FrameworkPropertyMetadata(45.0,
                        FrameworkPropertyMetadataOptions.AffectsMeasure));

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
        public static readonly DependencyProperty ArrowLengthProperty =
            DependencyProperty.Register("ArrowLength",
                typeof(double), typeof(ArrowLineBase),
                new FrameworkPropertyMetadata(12.0,
                        FrameworkPropertyMetadataOptions.AffectsMeasure));

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
        public static readonly DependencyProperty IsArrowClosedProperty =
            DependencyProperty.Register("IsArrowClosed",
                typeof(bool), typeof(ArrowLineBase),
                new FrameworkPropertyMetadata(false,
                        FrameworkPropertyMetadataOptions.AffectsMeasure));

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
        ///     Initializes a new instance of ArrowLineBase.
        /// </summary>
        public ArrowLineBase()
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

        public void MakeBezier()
        {
            bezsegLine = new PolyBezierSegment();
            pathfigLine.Segments.Add(bezsegLine);
        }

        public void MakePoly()
        {
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

        /// <summary>
        ///     Gets a value that represents the Geometry of the ArrowLine.
        /// </summary>
        protected override Geometry DefiningGeometry
        {
            get
            {
                if (bezsegLine != null)
                {
                    int count = bezsegLine.Points.Count;

                    if (count > 0)
                    {
                        // Draw the arrow at the start of the line.
                        //if ((ArrowEnds & ArrowEnds.Start) == ArrowEnds.Start)
                        {
                            Point pt1 = pathfigLine.StartPoint;
                            Point pt2 = GetPos(pathfigLine.StartPoint, bezsegLine.Points[0], bezsegLine.Points[^2], bezsegLine.Points[^1], 0.03);
                            pathgeo.Figures.Add(CalculateDot(pathfigHead1, pt2, pt1));
                        }

                        // Draw the arrow at the end of the line.
                        //if ((ArrowEnds & ArrowEnds.End) == ArrowEnds.End)
                        {
                            Point pt1 = GetPos(pathfigLine.StartPoint, bezsegLine.Points[0], bezsegLine.Points[^2], bezsegLine.Points[^1], 0.97);
                            Point pt2 = bezsegLine.Points[^1];
                            pathgeo.Figures.Add(CalculateArrow(pathfigHead2, pt1, pt2));
                        }
                    }
                }
                else
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
            }
        }

        PathFigure CalculateArrow(PathFigure pathfig, Point pt1, Point pt2)
        {
            Matrix matx = new Matrix();
            Vector vect = pt1 - pt2;
            vect.Normalize();
            vect *= ArrowLength;

            PolyLineSegment polyseg = pathfig.Segments[0] as PolyLineSegment;
            polyseg.Points.Clear();
            matx.Rotate(ArrowAngle / 2);
            pathfig.StartPoint = pt2 + vect * matx;
            polyseg.Points.Add(pt2);

            matx.Rotate(-ArrowAngle);
            polyseg.Points.Add(pt2 + vect * matx);
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
