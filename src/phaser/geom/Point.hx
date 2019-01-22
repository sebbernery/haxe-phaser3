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
     * [description]
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
     * [description]
     *
     * @function Phaser.Geom.Point.GetMagnitude
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Point} point - [description]
     *
     * @return {number} [description]
     */
    public function GetMagnitude(point:phaser.geom.Point):Float;
    /**
     * [description]
     *
     * @function Phaser.Geom.Point.GetMagnitudeSq
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Point} point - [description]
     *
     * @return {number} [description]
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
     * Interpolate two given Point objects, based on `t` value. Return result either as new Point if `out` parameter is omitted or load result into Point passed as `out` parameter and return it. For `out` parameter you can also use any object with public x/y properties.
     *
     * @function Phaser.Geom.Point.Interpolate
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Point} pointA - [description]
     * @param {Phaser.Geom.Point} pointB - [description]
     * @param {number} [t=0] - [description]
     * @param {(Phaser.Geom.Point|object)} [out] - [description]
     *
     * @return {(Phaser.Geom.Point|object)} [description]
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
     * [description]
     *
     * @function Phaser.Geom.Point.Negative
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Point} point - [description]
     * @param {Phaser.Geom.Point} [out] - [description]
     *
     * @return {Phaser.Geom.Point} [description]
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
     * [description]
     *
     * @function Phaser.Geom.Point.SetMagnitude
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {Phaser.Geom.Point} point - [description]
     * @param {number} magnitude - [description]
     *
     * @return {Phaser.Geom.Point} [description]
     */
    public function SetMagnitude(point:phaser.geom.Point, magnitude:Float):phaser.geom.Point;
}
