package phaser.geom;

/**
 * @classdesc
 * Defines a Point in 2D space, with an x and y component.
 *
 * @class Point
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x=0] - The x coordinate of this Point.
 * @param {number} [y=x] - The y coordinate of this Point.
 */
@:native("Phaser.Geom.Point")
extern class Point {
    public function new(?x:Float, ?y:Float);
    /**
     * The geometry constant type of this object: `GEOM_CONST.POINT`.
     * Used for fast type comparisons.
     *
     * @name Phaser.Geom.Point#type
     * @type {integer}
     * @readonly
     * @since 3.19.0
     */
    public var type:Int;
    /**
     * The x coordinate of this Point.
     *
     * @name Phaser.Geom.Point#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y coordinate of this Point.
     *
     * @name Phaser.Geom.Point#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * Apply `Math.ceil()` to each coordinate of the given Point.
     *
     * @function Phaser.Geom.Point.Ceil
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {Phaser.Geom.Point} point - The Point to ceil.
     *
     * @return {Phaser.Geom.Point} The Point with `Math.ceil()` applied to its coordinates.
     */
    public function Ceil(point:phaser.geom.Point):phaser.geom.Point;
    /**
     * Clone the given Point.
     *
     * @function Phaser.Geom.Point.Clone
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Point} source - The source Point to clone.
     *
     * @return {Phaser.Geom.Point} The cloned Point.
     */
    public function Clone(source:phaser.geom.Point):phaser.geom.Point;
    /**
     * Copy the values of one Point to a destination Point.
     *
     * @function Phaser.Geom.Point.CopyFrom
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [dest,$return]
     *
     * @param {Phaser.Geom.Point} source - The source Point to copy the values from.
     * @param {Phaser.Geom.Point} dest - The destination Point to copy the values to.
     *
     * @return {Phaser.Geom.Point} The destination Point.
     */
    public function CopyFrom(source:phaser.geom.Point, dest:phaser.geom.Point):phaser.geom.Point;
    /**
     * A comparison of two `Point` objects to see if they are equal.
     *
     * @function Phaser.Geom.Point.Equals
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Point} point - The original `Point` to compare against.
     * @param {Phaser.Geom.Point} toCompare - The second `Point` to compare.
     *
     * @return {boolean} Returns true if the both `Point` objects are equal.
     */
    public function Equals(point:phaser.geom.Point, toCompare:phaser.geom.Point):Bool;
    /**
     * Apply `Math.ceil()` to each coordinate of the given Point.
     *
     * @function Phaser.Geom.Point.Floor
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {Phaser.Geom.Point} point - The Point to floor.
     *
     * @return {Phaser.Geom.Point} The Point with `Math.floor()` applied to its coordinates.
     */
    public function Floor(point:phaser.geom.Point):phaser.geom.Point;
    /**
     * Get the centroid or geometric center of a plane figure (the arithmetic mean position of all the points in the figure).
     * Informally, it is the point at which a cutout of the shape could be perfectly balanced on the tip of a pin.
     *
     * @function Phaser.Geom.Point.GetCentroid
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Point[]} points - [description]
     * @param {Phaser.Geom.Point} [out] - [description]
     *
     * @return {Phaser.Geom.Point} [description]
     */
    public function GetCentroid(points:Array<phaser.geom.Point>, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Calculate the magnitude of the point, which equivalent to the length of the line from the origin to this point.
     *
     * @function Phaser.Geom.Point.GetMagnitude
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Point} point - The point to calculate the magnitude for
     *
     * @return {number} The resulting magnitude
     */
    public function GetMagnitude(point:phaser.geom.Point):Float;
    /**
     * Calculates the square of magnitude of given point.(Can be used for fast magnitude calculation of point)
     *
     * @function Phaser.Geom.Point.GetMagnitudeSq
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Point} point - Returns square of the magnitude/length of given point.
     *
     * @return {number} Returns square of the magnitude of given point.
     */
    public function GetMagnitudeSq(point:phaser.geom.Point):Float;
    /**
     * Calculates the Axis Aligned Bounding Box (or aabb) from an array of points.
     *
     * @function Phaser.Geom.Point.GetRectangleFromPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [out,$return]
     *
     * @param {Phaser.Geom.Point[]} points - [description]
     * @param {Phaser.Geom.Rectangle} [out] - [description]
     *
     * @return {Phaser.Geom.Rectangle} [description]
     */
    public function GetRectangleFromPoints(points:Array<phaser.geom.Point>, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * [description]
     *
     * @function Phaser.Geom.Point.Interpolate
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Point} pointA - The starting `Point` for the interpolation.
     * @param {Phaser.Geom.Point} pointB - The target `Point` for the interpolation.
     * @param {number} [t=0] - The amount to interpolate between the two points. Generally, a value between 0 (returns the starting `Point`) and 1 (returns the target `Point`). If omitted, 0 is used.
     * @param {(Phaser.Geom.Point|object)} [out] - An optional `Point` object whose `x` and `y` values will be set to the result of the interpolation (can also be any object with `x` and `y` properties). If omitted, a new `Point` created and returned.
     *
     * @return {(Phaser.Geom.Point|object)} Either the object from the `out` argument with the properties `x` and `y` set to the result of the interpolation or a newly created `Point` object.
     */
    public function Interpolate(pointA:phaser.geom.Point, pointB:phaser.geom.Point, ?t:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Swaps the X and the Y coordinate of a point.
     *
     * @function Phaser.Geom.Point.Invert
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {Phaser.Geom.Point} point - The Point to modify.
     *
     * @return {Phaser.Geom.Point} The modified `point`.
     */
    public function Invert(point:phaser.geom.Point):phaser.geom.Point;
    /**
     * Inverts a Point's coordinates.
     *
     * @function Phaser.Geom.Point.Negative
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Point} point - The Point to invert.
     * @param {Phaser.Geom.Point} [out] - The Point to return the inverted coordinates in.
     *
     * @return {Phaser.Geom.Point} The modified `out` Point, or a new Point if none was provided.
     */
    public function Negative(point:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Set the x and y coordinates of the point to the given values.
     *
     * @method Phaser.Geom.Point#setTo
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x coordinate of this Point.
     * @param {number} [y=x] - The y coordinate of this Point.
     *
     * @return {Phaser.Geom.Point} This Point object.
     */
    public function setTo(?x:Float, ?y:Float):phaser.geom.Point;
    /**
     * [description]
     *
     * @function Phaser.Geom.Point.Project
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Point} pointA - [description]
     * @param {Phaser.Geom.Point} pointB - [description]
     * @param {Phaser.Geom.Point} [out] - [description]
     *
     * @return {Phaser.Geom.Point} [description]
     */
    public function Project(pointA:phaser.geom.Point, pointB:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * [description]
     *
     * @function Phaser.Geom.Point.ProjectUnit
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Point} pointA - [description]
     * @param {Phaser.Geom.Point} pointB - [description]
     * @param {Phaser.Geom.Point} [out] - [description]
     *
     * @return {Phaser.Geom.Point} [description]
     */
    public function ProjectUnit(pointA:phaser.geom.Point, pointB:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
    /**
     * Changes the magnitude (length) of a two-dimensional vector without changing its direction.
     *
     * @function Phaser.Geom.Point.SetMagnitude
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {Phaser.Geom.Point} point - The Point to treat as the end point of the vector.
     * @param {number} magnitude - The new magnitude of the vector.
     *
     * @return {Phaser.Geom.Point} The modified Point.
     */
    public function SetMagnitude(point:phaser.geom.Point, magnitude:Float):phaser.geom.Point;
}
