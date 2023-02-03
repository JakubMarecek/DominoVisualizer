//------------------------------------------
// ArrowLine.cs (c) 2007 by Charles Petzold
//------------------------------------------
using DominoVisualizer;
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

        public Dictionary<string, LinesPoint> Points { set; get; }

        /// <summary>
        ///     Gets a value that represents the Geometry of the ArrowLine.
        /// </summary>
        protected override Geometry DefiningGeometry
        {
            get
            {
                // Clear out the PathGeometry.
                pathgeo.Figures.Clear();

                if (bezsegLine != null)
                {
                    var p1 = new Point(X1, Y1);
                    var p2 = new Point(X2, Y2);
                    var lineLen = Point.Subtract(p2, p1).Length;

                    // Define a single PathFigure with the points.
                    pathfigLine.StartPoint = new Point(X1, Y1);
                    bezsegLine.Points.Clear();
                    bezsegLine.Points.Add(new Point(X1 + Math.Min(100, lineLen / 3), Y1)); // (lineLen / 5)

                    if (Points != null)
                        foreach (var p in Points)
                        {
                            bezsegLine.Points.Add(new Point(p.Value.Point.X, p.Value.Point.Y)); // (lineLen / 5)
                            bezsegLine.Points.Add(new Point(p.Value.Point.X, p.Value.Point.Y)); // (lineLen / 5)
                            bezsegLine.Points.Add(new Point(p.Value.Point.X, p.Value.Point.Y)); // (lineLen / 5)
                        }

                    bezsegLine.Points.Add(new Point(X2 - Math.Min(100, lineLen / 3), Y2)); // (lineLen / 5)
                    bezsegLine.Points.Add(p2);
                }
                else
                {
                    // Define a single PathFigure with the points.
                    pathfigLine.StartPoint = new Point(X1, Y1);
                    polysegLine.Points.Clear();
                    polysegLine.Points.Add(new Point(X2, Y2));
                }

                pathgeo.Figures.Add(pathfigLine);

                // Call the base property to add arrows on the ends.
                return base.DefiningGeometry;
            }
        }
    }
}
