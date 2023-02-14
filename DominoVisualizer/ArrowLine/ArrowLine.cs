//------------------------------------------
// ArrowLine.cs (c) 2007 by Charles Petzold
//------------------------------------------
using DominoVisualizer;
using DominoVisualizer.CustomControls;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Media;

namespace Petzold.Media2D
{
    /// <summary>
    ///     Draws a straight line between two points with 
    ///     optional arrows on the ends.
    /// </summary>
    public class ArrowLine : ArrowLineBase
    {
        /// <summary>
        ///     Identifies the X1 dependency property.
        /// </summary>
        public static readonly DependencyProperty X1Property =
            DependencyProperty.Register("X1",
                typeof(double), typeof(ArrowLine),
                new FrameworkPropertyMetadata(0.0,
                        FrameworkPropertyMetadataOptions.AffectsMeasure));

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
        public static readonly DependencyProperty Y1Property =
            DependencyProperty.Register("Y1",
                typeof(double), typeof(ArrowLine),
                new FrameworkPropertyMetadata(0.0,
                        FrameworkPropertyMetadataOptions.AffectsMeasure));

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
        public static readonly DependencyProperty X2Property =
            DependencyProperty.Register("X2",
                typeof(double), typeof(ArrowLine),
                new FrameworkPropertyMetadata(0.0,
                        FrameworkPropertyMetadataOptions.AffectsMeasure));

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
        public static readonly DependencyProperty Y2Property =
            DependencyProperty.Register("Y2",
                typeof(double), typeof(ArrowLine),
                new FrameworkPropertyMetadata(0.0,
                        FrameworkPropertyMetadataOptions.AffectsMeasure));

        /// <summary>
        ///     Gets or sets the y-coordinate of the ArrowLine end point.
        /// </summary>
        public double Y2
        {
            set { SetValue(Y2Property, value); }
            get { return (double)GetValue(Y2Property); }
        }

        public List<DominoUILinePoint> Points { set; get; }

        /// <summary>
        ///     Gets a value that represents the Geometry of the ArrowLine.
        /// </summary>
        protected override Geometry DefiningGeometry
        {
            get
            {
                pathgeo.Figures.Clear();

                if (bezsegLine != null)
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

                            double angle = Math.Atan2(refPoint.X - Points[i].Point.X, refPoint.Y - Points[i].Point.Y) * (180 / Math.PI);
                            if (refEnd)
                                angle = Math.Atan2(Points[i].Point.X - refPoint.X, Points[i].Point.Y - refPoint.Y) * (180 / Math.PI);

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

                            bezsegLine.Points.Add(new Point(Points[i].Point.X + alX1, Points[i].Point.Y + alY1));
                            bezsegLine.Points.Add(currPoint);
                            bezsegLine.Points.Add(new Point(Points[i].Point.X + alX2, Points[i].Point.Y + alY2));

                            /*bezsegLine.Points.Add(new Point(p.Point.X, p.Point.Y));
                            bezsegLine.Points.Add(new Point(p.Point.X, p.Point.Y));
                            bezsegLine.Points.Add(new Point(p.Point.X, p.Point.Y));*/
                        }

                    bezsegLine.Points.Add(new Point(X2 - Math.Min(100, lineLen2 / 3), Y2)); // (lineLen / 5)
                    bezsegLine.Points.Add(new Point(X2, Y2));
                }
                else
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

                // Call the base property to add arrows on the ends.
                return base.DefiningGeometry;
            }
        }
    }
}
