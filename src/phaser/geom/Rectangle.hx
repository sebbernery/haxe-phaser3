package phaser.geom;

/**
 * @classdesc
 * Encapsulates a 2D rectangle defined by its corner point in the top-left and its extends in x (width) and y (height)
 *
 * @class Rectangle
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x=0] - The X coordinate of the top left corner of the Rectangle.
 * @param {number} [y=0] - The Y coordinate of the top left corner of the Rectangle.
 * @param {number} [width=0] - The width of the Rectangle.
 * @param {number} [height=0] - The height of the Rectangle.
 */
@:native("Phaser.Geom.Rectangle")
extern class Rectangle {
    public function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
    /**
     * The geometry constant type of this object: `GEOM_CONST.RECTANGLE`.
     * Used for fast type comparisons.
     *
     * @name Phaser.Geom.Rectangle#type
     * @type {integer}
     * @readonly
     * @since 3.19.0
     */
    public var type:Int;
    /**
     * The X coordinate of the top left corner of the Rectangle.
     *
     * @name Phaser.Geom.Rectangle#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The Y coordinate of the top left corner of the Rectangle.
     *
     * @name Phaser.Geom.Rectangle#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The width of the Rectangle, i.e. the distance between its left side (defined by `x`) and its right side.
     *
     * @name Phaser.Geom.Rectangle#width
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the Rectangle, i.e. the distance between its top side (defined by `y`) and its bottom side.
     *
     * @name Phaser.Geom.Rectangle#height
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The x coordinate of the left of the Rectangle.
     * Changing the left property of a Rectangle object has no effect on the y and height properties. However it does affect the width property, whereas changing the x value does not affect the width property.
     *
     * @name Phaser.Geom.Rectangle#left
     * @type {number}
     * @since 3.0.0
     */
    public var left:Float;
    /**
     * The sum of the x and width properties.
     * Changing the right property of a Rectangle object has no effect on the x, y and height properties, however it does affect the width property.
     *
     * @name Phaser.Geom.Rectangle#right
     * @type {number}
     * @since 3.0.0
     */
    public var right:Float;
    /**
     * The y coordinate of the top of the Rectangle. Changing the top property of a Rectangle object has no effect on the x and width properties.
     * However it does affect the height property, whereas changing the y value does not affect the height property.
     *
     * @name Phaser.Geom.Rectangle#top
     * @type {number}
     * @since 3.0.0
     */
    public var top:Float;
    /**
     * The sum of the y and height properties.
     * Changing the bottom property of a Rectangle object has no effect on the x, y and width properties, but does change the height property.
     *
     * @name Phaser.Geom.Rectangle#bottom
     * @type {number}
     * @since 3.0.0
     */
    public var bottom:Float;
    /**
     * The x coordinate of the center of the Rectangle.
     *
     * @name Phaser.Geom.Rectangle#centerX
     * @type {number}
     * @since 3.0.0
     */
    public var centerX:Float;
    /**
     * The y coordinate of the center of the Rectangle.
     *
     * @name Phaser.Geom.Rectangle#centerY
     * @type {number}
     * @since 3.0.0
     */
    public var centerY:Float;
    /**
     * Calculates the area of the given Rectangle object.
     *
     * @function Phaser.Geom.Rectangle.Area
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The rectangle to calculate the area of.
     *
     * @return {number} The area of the Rectangle object.
     */
    static public function Area(rect:phaser.geom.Rectangle):Float;
    /**
     * Rounds a Rectangle's position up to the smallest integer greater than or equal to each current coordinate.
     *
     * @function Phaser.Geom.Rectangle.Ceil
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to adjust.
     *
     * @return {Phaser.Geom.Rectangle} The adjusted Rectangle.
     */
    static public function Ceil(rect:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Rounds a Rectangle's position and size up to the smallest integer greater than or equal to each respective value.
     *
     * @function Phaser.Geom.Rectangle.CeilAll
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to modify.
     *
     * @return {Phaser.Geom.Rectangle} The modified Rectangle.
     */
    static public function CeilAll(rect:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Moves the top-left corner of a Rectangle so that its center is at the given coordinates.
     *
     * @function Phaser.Geom.Rectangle.CenterOn
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to be centered.
     * @param {number} x - The X coordinate of the Rectangle's center.
     * @param {number} y - The Y coordinate of the Rectangle's center.
     *
     * @return {Phaser.Geom.Rectangle} The centered rectangle.
     */
    static public function CenterOn(rect:phaser.geom.Rectangle, x:Float, y:Float):phaser.geom.Rectangle;
    /**
     * Creates a new Rectangle which is identical to the given one.
     *
     * @function Phaser.Geom.Rectangle.Clone
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} source - The Rectangle to clone.
     *
     * @return {Phaser.Geom.Rectangle} The newly created Rectangle, which is separate from the given one.
     */
    static public function Clone(source:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Checks if a given point is inside a Rectangle's bounds.
     *
     * @function Phaser.Geom.Rectangle.Contains
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to check.
     * @param {number} x - The X coordinate of the point to check.
     * @param {number} y - The Y coordinate of the point to check.
     *
     * @return {boolean} `true` if the point is within the Rectangle's bounds, otherwise `false`.
     */
    static public function Contains(rect:phaser.geom.Rectangle, x:Float, y:Float):Bool;
    /**
     * Determines whether the specified point is contained within the rectangular region defined by this Rectangle object.
     *
     * @function Phaser.Geom.Rectangle.ContainsPoint
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle object.
     * @param {Phaser.Geom.Point} point - The point object to be checked. Can be a Phaser Point object or any object with x and y values.
     *
     * @return {boolean} A value of true if the Rectangle object contains the specified point, otherwise false.
     */
    static public function ContainsPoint(rect:phaser.geom.Rectangle, point:phaser.geom.Point):Bool;
    /**
     * Tests if one rectangle fully contains another.
     *
     * @function Phaser.Geom.Rectangle.ContainsRect
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rectA - The first rectangle.
     * @param {Phaser.Geom.Rectangle} rectB - The second rectangle.
     *
     * @return {boolean} True only if rectA fully contains rectB.
     */
    static public function ContainsRect(rectA:phaser.geom.Rectangle, rectB:phaser.geom.Rectangle):Bool;
    /**
     * Copy the values of one Rectangle to a destination Rectangle.
     *
     * @function Phaser.Geom.Rectangle.CopyFrom
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [dest,$return]
     *
     * @param {Phaser.Geom.Rectangle} source - The source Rectangle to copy the values from.
     * @param {Phaser.Geom.Rectangle} dest - The destination Rectangle to copy the values to.
     *
     * @return {Phaser.Geom.Rectangle} The destination Rectangle.
     */
    static public function CopyFrom(source:phaser.geom.Rectangle, dest:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Create an array of points for each corner of a Rectangle
     * If an array is specified, each point object will be added to the end of the array, otherwise a new array will be created.
     *
     * @function Phaser.Geom.Rectangle.Decompose
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle object to be decomposed.
     * @param {array} [out] - If provided, each point will be added to this array.
     *
     * @return {array} Will return the array you specified or a new array containing the points of the Rectangle.
     */
    static public function Decompose(rect:phaser.geom.Rectangle, ?out:Array<Dynamic>):Array<Dynamic>;
    /**
     * Compares the `x`, `y`, `width` and `height` properties of two rectangles.
     *
     * @function Phaser.Geom.Rectangle.Equals
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - Rectangle A
     * @param {Phaser.Geom.Rectangle} toCompare - Rectangle B
     *
     * @return {boolean} `true` if the rectangles' properties are an exact match, otherwise `false`.
     */
    static public function Equals(rect:phaser.geom.Rectangle, toCompare:phaser.geom.Rectangle):Bool;
    /**
     * Adjusts the target rectangle, changing its width, height and position,
     * so that it fits inside the area of the source rectangle, while maintaining its original
     * aspect ratio.
     *
     * Unlike the `FitOutside` function, there may be some space inside the source area not covered.
     *
     * @function Phaser.Geom.Rectangle.FitInside
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [target,$return]
     *
     * @param {Phaser.Geom.Rectangle} target - The target rectangle to adjust.
     * @param {Phaser.Geom.Rectangle} source - The source rectangle to envelop the target in.
     *
     * @return {Phaser.Geom.Rectangle} The modified target rectangle instance.
     */
    static public function FitInside(target:phaser.geom.Rectangle, source:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Adjusts the target rectangle, changing its width, height and position,
     * so that it fully covers the area of the source rectangle, while maintaining its original
     * aspect ratio.
     *
     * Unlike the `FitInside` function, the target rectangle may extend further out than the source.
     *
     * @function Phaser.Geom.Rectangle.FitOutside
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [target,$return]
     *
     * @param {Phaser.Geom.Rectangle} target - The target rectangle to adjust.
     * @param {Phaser.Geom.Rectangle} source - The source rectangle to envelope the target in.
     *
     * @return {Phaser.Geom.Rectangle} The modified target rectangle instance.
     */
    static public function FitOutside(target:phaser.geom.Rectangle, source:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Rounds down (floors) the top left X and Y coordinates of the given Rectangle to the largest integer less than or equal to them
     *
     * @function Phaser.Geom.Rectangle.Floor
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The rectangle to floor the top left X and Y coordinates of
     *
     * @return {Phaser.Geom.Rectangle} The rectangle that was passed to this function with its coordinates floored.
     */
    static public function Floor(rect:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Rounds a Rectangle's position and size down to the largest integer less than or equal to each current coordinate or dimension.
     *
     * @function Phaser.Geom.Rectangle.FloorAll
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to adjust.
     *
     * @return {Phaser.Geom.Rectangle} The adjusted Rectangle.
     */
    static public function FloorAll(rect:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Constructs new Rectangle or repositions and resizes an existing Rectangle so that all of the given points are on or within its bounds.
     *
     * @function Phaser.Geom.Rectangle.FromPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [out,$return]
     *
     * @param {array} points - An array of points (either arrays with two elements corresponding to the X and Y coordinate or an object with public `x` and `y` properties) which should be surrounded by the Rectangle.
     * @param {Phaser.Geom.Rectangle} [out] - Optional Rectangle to adjust.
     *
     * @return {Phaser.Geom.Rectangle} The adjusted `out` Rectangle, or a new Rectangle if none was provided.
     */
    static public function FromPoints(points:Array<Dynamic>, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Calculates the width/height ratio of a rectangle.
     *
     * @function Phaser.Geom.Rectangle.GetAspectRatio
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The rectangle.
     *
     * @return {number} The width/height ratio of the rectangle.
     */
    static public function GetAspectRatio(rect:phaser.geom.Rectangle):Float;
    /**
     * Returns the center of a Rectangle as a Point.
     *
     * @function Phaser.Geom.Rectangle.GetCenter
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to get the center of.
     * @param {(Phaser.Geom.Point|object)} [out] - Optional point-like object to update with the center coordinates.
     *
     * @return {(Phaser.Geom.Point|object)} The modified `out` object, or a new Point if none was provided.
     */
    static public function GetCenter(rect:phaser.geom.Rectangle, ?out:Dynamic):phaser.geom.Point;
    /**
     * Position is a value between 0 and 1 where 0 = the top-left of the rectangle and 0.5 = the bottom right.
     *
     * @function Phaser.Geom.Rectangle.GetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rectangle - [description]
     * @param {number} position - [description]
     * @param {(Phaser.Geom.Point|object)} [out] - [description]
     *
     * @return {Phaser.Geom.Point} [description]
     */
    static public function GetPoint(rectangle:phaser.geom.Rectangle, position:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Return an array of points from the perimeter of the rectangle, each spaced out based on the quantity or step required.
     *
     * @function Phaser.Geom.Rectangle.GetPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rectangle - The Rectangle object to get the points from.
     * @param {number} step - Step between points. Used to calculate the number of points to return when quantity is falsey. Ignored if quantity is positive.
     * @param {integer} quantity - The number of evenly spaced points from the rectangles perimeter to return. If falsey, step param will be used to calculate the number of points.
     * @param {(array|Phaser.Geom.Point[])} [out] - An optional array to store the points in.
     *
     * @return {(array|Phaser.Geom.Point[])} An array of Points from the perimeter of the rectangle.
     */
    static public function GetPoints(rectangle:phaser.geom.Rectangle, step:Float, quantity:Int, ?out:Dynamic):Array<Dynamic>;
    /**
     *  The size of the Rectangle object, expressed as a Point object
     *  with the values of the width and height properties.
     *
     * @function Phaser.Geom.Rectangle.GetSize
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - [description]
     * @param {(Phaser.Geom.Point|object)} [out] - [description]
     *
     * @return {(Phaser.Geom.Point|object)} [description]
     */
    static public function GetSize(rect:phaser.geom.Rectangle, ?out:Dynamic):phaser.geom.Point;
    /**
     * Increases the size of a Rectangle by a specified amount.
     *
     * The center of the Rectangle stays the same. The amounts are added to each side, so the actual increase in width or height is two times bigger than the respective argument.
     *
     * @function Phaser.Geom.Rectangle.Inflate
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to inflate.
     * @param {number} x - How many pixels the left and the right side should be moved by horizontally.
     * @param {number} y - How many pixels the top and the bottom side should be moved by vertically.
     *
     * @return {Phaser.Geom.Rectangle} The inflated Rectangle.
     */
    static public function Inflate(rect:phaser.geom.Rectangle, x:Float, y:Float):phaser.geom.Rectangle;
    /**
     * Takes two Rectangles and first checks to see if they intersect.
     * If they intersect it will return the area of intersection in the `out` Rectangle.
     * If they do not intersect, the `out` Rectangle will have a width and height of zero.
     *
     * @function Phaser.Geom.Rectangle.Intersection
     * @since 3.11.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rectA - The first Rectangle to get the intersection from.
     * @param {Phaser.Geom.Rectangle} rectB - The second Rectangle to get the intersection from.
     * @param {Phaser.Geom.Rectangle} [out] - A Rectangle to store the intersection results in.
     *
     * @return {Phaser.Geom.Rectangle} The intersection result. If the width and height are zero, no intersection occurred.
     */
    static public function Intersection(rectA:phaser.geom.Rectangle, rectB:phaser.geom.Rectangle, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     *  Return an array of points from the perimeter of the rectangle
     *  each spaced out based on the quantity or step required
     *
     * @function Phaser.Geom.Rectangle.MarchingAnts
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - [description]
     * @param {number} step - [description]
     * @param {integer} quantity - [description]
     * @param {(array|Phaser.Geom.Point[])} [out] - [description]
     *
     * @return {(array|Phaser.Geom.Point[])} [description]
     */
    static public function MarchingAnts(rect:phaser.geom.Rectangle, step:Float, quantity:Int, ?out:Dynamic):Array<Dynamic>;
    /**
     * Merges a Rectangle with a list of points by repositioning and/or resizing it such that all points are located on or within its bounds.
     *
     * @function Phaser.Geom.Rectangle.MergePoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [target,$return]
     *
     * @param {Phaser.Geom.Rectangle} target - The Rectangle which should be merged.
     * @param {Phaser.Geom.Point[]} points - An array of Points (or any object with public `x` and `y` properties) which should be merged with the Rectangle.
     *
     * @return {Phaser.Geom.Rectangle} The modified Rectangle.
     */
    static public function MergePoints(target:phaser.geom.Rectangle, points:Array<phaser.geom.Point>):phaser.geom.Rectangle;
    /**
     * Merges the source rectangle into the target rectangle and returns the target.
     * Neither rectangle should have a negative width or height.
     *
     * @function Phaser.Geom.Rectangle.MergeRect
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [target,$return]
     *
     * @param {Phaser.Geom.Rectangle} target - Target rectangle. Will be modified to include source rectangle.
     * @param {Phaser.Geom.Rectangle} source - Rectangle that will be merged into target rectangle.
     *
     * @return {Phaser.Geom.Rectangle} Modified target rectangle that contains source rectangle.
     */
    static public function MergeRect(target:phaser.geom.Rectangle, source:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Merges a Rectangle with a point by repositioning and/or resizing it so that the point is on or within its bounds.
     *
     * @function Phaser.Geom.Rectangle.MergeXY
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [target,$return]
     *
     * @param {Phaser.Geom.Rectangle} target - The Rectangle which should be merged and modified.
     * @param {number} x - The X coordinate of the point which should be merged.
     * @param {number} y - The Y coordinate of the point which should be merged.
     *
     * @return {Phaser.Geom.Rectangle} The modified `target` Rectangle.
     */
    static public function MergeXY(target:phaser.geom.Rectangle, x:Float, y:Float):phaser.geom.Rectangle;
    /**
     * Nudges (translates) the top left corner of a Rectangle by a given offset.
     *
     * @function Phaser.Geom.Rectangle.Offset
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to adjust.
     * @param {number} x - The distance to move the Rectangle horizontally.
     * @param {number} y - The distance to move the Rectangle vertically.
     *
     * @return {Phaser.Geom.Rectangle} The adjusted Rectangle.
     */
    static public function Offset(rect:phaser.geom.Rectangle, x:Float, y:Float):phaser.geom.Rectangle;
    /**
     * Nudges (translates) the top-left corner of a Rectangle by the coordinates of a point (translation vector).
     *
     * @function Phaser.Geom.Rectangle.OffsetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to adjust.
     * @param {(Phaser.Geom.Point|Phaser.Math.Vector2)} point - The point whose coordinates should be used as an offset.
     *
     * @return {Phaser.Geom.Rectangle} The adjusted Rectangle.
     */
    static public function OffsetPoint(rect:phaser.geom.Rectangle, point:Dynamic):phaser.geom.Rectangle;
    /**
     * Checks if two Rectangles overlap. If a Rectangle is within another Rectangle, the two will be considered overlapping. Thus, the Rectangles are treated as "solid".
     *
     * @function Phaser.Geom.Rectangle.Overlaps
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rectA - The first Rectangle to check.
     * @param {Phaser.Geom.Rectangle} rectB - The second Rectangle to check.
     *
     * @return {boolean} `true` if the two Rectangles overlap, `false` otherwise.
     */
    static public function Overlaps(rectA:phaser.geom.Rectangle, rectB:phaser.geom.Rectangle):Bool;
    /**
     * Calculates the perimeter of a Rectangle.
     *
     * @function Phaser.Geom.Rectangle.Perimeter
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to use.
     *
     * @return {number} The perimeter of the Rectangle, equal to `(width * 2) + (height * 2)`.
     */
    static public function Perimeter(rect:phaser.geom.Rectangle):Float;
    /**
     * [description]
     *
     * @function Phaser.Geom.Rectangle.PerimeterPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rectangle - [description]
     * @param {integer} angle - [description]
     * @param {Phaser.Geom.Point} [out] - [description]
     *
     * @return {Phaser.Geom.Point} [description]
     */
    static public function PerimeterPoint(rectangle:phaser.geom.Rectangle, angle:Int, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Returns a random point within a Rectangle.
     *
     * @function Phaser.Geom.Rectangle.Random
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The Rectangle to return a point from.
     * @param {Phaser.Geom.Point} out - The object to update with the point's coordinates.
     *
     * @return {Phaser.Geom.Point} The modified `out` object, or a new Point if none was provided.
     */
    static public function Random(rect:phaser.geom.Rectangle, out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Calculates a random point that lies within the `outer` Rectangle, but outside of the `inner` Rectangle.
     * The inner Rectangle must be fully contained within the outer rectangle.
     *
     * @function Phaser.Geom.Rectangle.RandomOutside
     * @since 3.10.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} outer - The outer Rectangle to get the random point within.
     * @param {Phaser.Geom.Rectangle} inner - The inner Rectangle to exclude from the returned point.
     * @param {Phaser.Geom.Point} [out] - A Point, or Point-like object to store the result in. If not specified, a new Point will be created.
     *
     * @return {Phaser.Geom.Point} A Point object containing the random values in its `x` and `y` properties.
     */
    static public function RandomOutside(outer:phaser.geom.Rectangle, inner:phaser.geom.Rectangle, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Checks if the given point is inside the Rectangle's bounds.
     *
     * @method Phaser.Geom.Rectangle#contains
     * @since 3.0.0
     *
     * @param {number} x - The X coordinate of the point to check.
     * @param {number} y - The Y coordinate of the point to check.
     *
     * @return {boolean} `true` if the point is within the Rectangle's bounds, otherwise `false`.
     */
    public function contains(x:Float, y:Float):Bool;
    /**
     * Calculates the coordinates of a point at a certain `position` on the Rectangle's perimeter.
     *
     * The `position` is a fraction between 0 and 1 which defines how far into the perimeter the point is.
     *
     * A value of 0 or 1 returns the point at the top left corner of the rectangle, while a value of 0.5 returns the point at the bottom right corner of the rectangle. Values between 0 and 0.5 are on the top or the right side and values between 0.5 and 1 are on the bottom or the left side.
     *
     * @method Phaser.Geom.Rectangle#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [output,$return]
     *
     * @param {number} position - The normalized distance into the Rectangle's perimeter to return.
     * @param {(Phaser.Geom.Point|object)} [output] - An object to update with the `x` and `y` coordinates of the point.
     *
     * @return {(Phaser.Geom.Point|object)} The updated `output` object, or a new Point if no `output` object was given.
     */
    public function getPoint(position:Float, ?output:Dynamic):phaser.geom.Point;
    /**
     * Returns an array of points from the perimeter of the Rectangle, each spaced out based on the quantity or step required.
     *
     * @method Phaser.Geom.Rectangle#getPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [output,$return]
     *
     * @param {integer} quantity - The number of points to return. Set to `false` or 0 to return an arbitrary number of points (`perimeter / stepRate`) evenly spaced around the Rectangle based on the `stepRate`.
     * @param {number} [stepRate] - If `quantity` is 0, determines the normalized distance between each returned point.
     * @param {(array|Phaser.Geom.Point[])} [output] - An array to which to append the points.
     *
     * @return {(array|Phaser.Geom.Point[])} The modified `output` array, or a new array if none was provided.
     */
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Dynamic):Array<Dynamic>;
    /**
     * Returns a random point within the Rectangle's bounds.
     *
     * @method Phaser.Geom.Rectangle#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {Phaser.Geom.Point} [point] - The object in which to store the `x` and `y` coordinates of the point.
     *
     * @return {Phaser.Geom.Point} The updated `point`, or a new Point if none was provided.
     */
    public function getRandomPoint(?point:phaser.geom.Point):phaser.geom.Point;
    /**
     * Sets the position, width, and height of the Rectangle.
     *
     * @method Phaser.Geom.Rectangle#setTo
     * @since 3.0.0
     *
     * @param {number} x - The X coordinate of the top left corner of the Rectangle.
     * @param {number} y - The Y coordinate of the top left corner of the Rectangle.
     * @param {number} width - The width of the Rectangle.
     * @param {number} height - The height of the Rectangle.
     *
     * @return {Phaser.Geom.Rectangle} This Rectangle object.
     */
    public function setTo(x:Float, y:Float, width:Float, height:Float):phaser.geom.Rectangle;
    /**
     * Resets the position, width, and height of the Rectangle to 0.
     *
     * @method Phaser.Geom.Rectangle#setEmpty
     * @since 3.0.0
     *
     * @return {Phaser.Geom.Rectangle} This Rectangle object.
     */
    public function setEmpty():phaser.geom.Rectangle;
    /**
     * Sets the position of the Rectangle.
     *
     * @method Phaser.Geom.Rectangle#setPosition
     * @since 3.0.0
     *
     * @param {number} x - The X coordinate of the top left corner of the Rectangle.
     * @param {number} [y=x] - The Y coordinate of the top left corner of the Rectangle.
     *
     * @return {Phaser.Geom.Rectangle} This Rectangle object.
     */
    public function setPosition(x:Float, ?y:Float):phaser.geom.Rectangle;
    /**
     * Sets the width and height of the Rectangle.
     *
     * @method Phaser.Geom.Rectangle#setSize
     * @since 3.0.0
     *
     * @param {number} width - The width to set the Rectangle to.
     * @param {number} [height=width] - The height to set the Rectangle to.
     *
     * @return {Phaser.Geom.Rectangle} This Rectangle object.
     */
    public function setSize(width:Float, ?height:Float):phaser.geom.Rectangle;
    /**
     * Determines if the Rectangle is empty. A Rectangle is empty if its width or height is less than or equal to 0.
     *
     * @method Phaser.Geom.Rectangle#isEmpty
     * @since 3.0.0
     *
     * @return {boolean} `true` if the Rectangle is empty. A Rectangle object is empty if its width or height is less than or equal to 0.
     */
    public function isEmpty():Bool;
    /**
     * Returns a Line object that corresponds to the top of this Rectangle.
     *
     * @method Phaser.Geom.Rectangle#getLineA
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} [line] - A Line object to set the results in. If `undefined` a new Line will be created.
     *
     * @return {Phaser.Geom.Line} A Line object that corresponds to the top of this Rectangle.
     */
    public function getLineA(?line:phaser.geom.Line):phaser.geom.Line;
    /**
     * Returns a Line object that corresponds to the right of this Rectangle.
     *
     * @method Phaser.Geom.Rectangle#getLineB
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} [line] - A Line object to set the results in. If `undefined` a new Line will be created.
     *
     * @return {Phaser.Geom.Line} A Line object that corresponds to the right of this Rectangle.
     */
    public function getLineB(?line:phaser.geom.Line):phaser.geom.Line;
    /**
     * Returns a Line object that corresponds to the bottom of this Rectangle.
     *
     * @method Phaser.Geom.Rectangle#getLineC
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} [line] - A Line object to set the results in. If `undefined` a new Line will be created.
     *
     * @return {Phaser.Geom.Line} A Line object that corresponds to the bottom of this Rectangle.
     */
    public function getLineC(?line:phaser.geom.Line):phaser.geom.Line;
    /**
     * Returns a Line object that corresponds to the left of this Rectangle.
     *
     * @method Phaser.Geom.Rectangle#getLineD
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Line} O - [line,$return]
     *
     * @param {Phaser.Geom.Line} [line] - A Line object to set the results in. If `undefined` a new Line will be created.
     *
     * @return {Phaser.Geom.Line} A Line object that corresponds to the left of this Rectangle.
     */
    public function getLineD(?line:phaser.geom.Line):phaser.geom.Line;
    /**
     * Determines if the two objects (either Rectangles or Rectangle-like) have the same width and height values under strict equality.
     *
     * @function Phaser.Geom.Rectangle.SameDimensions
     * @since 3.15.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The first Rectangle object.
     * @param {Phaser.Geom.Rectangle} toCompare - The second Rectangle object.
     *
     * @return {boolean} `true` if the objects have equivalent values for the `width` and `height` properties, otherwise `false`.
     */
    static public function SameDimensions(rect:phaser.geom.Rectangle, toCompare:phaser.geom.Rectangle):Bool;
    /**
     * Scales the width and height of this Rectangle by the given amounts.
     *
     * @function Phaser.Geom.Rectangle.Scale
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [rect,$return]
     *
     * @param {Phaser.Geom.Rectangle} rect - The `Rectangle` object that will be scaled by the specified amount(s).
     * @param {number} x - The factor by which to scale the rectangle horizontally.
     * @param {number} y - The amount by which to scale the rectangle vertically. If this is not specified, the rectangle will be scaled by the factor `x` in both directions.
     *
     * @return {Phaser.Geom.Rectangle} The rectangle object with updated `width` and `height` properties as calculated from the scaling factor(s).
     */
    static public function Scale(rect:phaser.geom.Rectangle, x:Float, y:Float):phaser.geom.Rectangle;
    /**
     * Creates a new Rectangle or repositions and/or resizes an existing Rectangle so that it encompasses the two given Rectangles, i.e. calculates their union.
     *
     * @function Phaser.Geom.Rectangle.Union
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} rectA - The first Rectangle to use.
     * @param {Phaser.Geom.Rectangle} rectB - The second Rectangle to use.
     * @param {Phaser.Geom.Rectangle} [out] - The Rectangle to store the union in.
     *
     * @return {Phaser.Geom.Rectangle} The modified `out` Rectangle, or a new Rectangle if none was provided.
     */
    static public function Union(rectA:phaser.geom.Rectangle, rectB:phaser.geom.Rectangle, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
}
