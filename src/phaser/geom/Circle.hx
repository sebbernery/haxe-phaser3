package phaser.geom;

/**
 * @classdesc
 * A Circle object.
 *
 * This is a geometry object, containing numerical values and related methods to inspect and modify them.
 * It is not a Game Object, in that you cannot add it to the display list, and it has no texture.
 * To render a Circle you should look at the capabilities of the Graphics class.
 *
 * @class Circle
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x=0] - The x position of the center of the circle.
 * @param {number} [y=0] - The y position of the center of the circle.
 * @param {number} [radius=0] - The radius of the circle.
 */
@:native("Phaser.Geom.Circle")
extern class Circle {
    public function new(?x:Float, ?y:Float, ?radius:Float);
    /**
     * The geometry constant type of this object: `GEOM_CONST.CIRCLE`.
     * Used for fast type comparisons.
     *
     * @name Phaser.Geom.Circle#type
     * @type {integer}
     * @readonly
     * @since 3.19.0
     */
    public var type:Int;
    /**
     * The x position of the center of the circle.
     *
     * @name Phaser.Geom.Circle#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of the center of the circle.
     *
     * @name Phaser.Geom.Circle#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The radius of the Circle.
     *
     * @name Phaser.Geom.Circle#radius
     * @type {number}
     * @since 3.0.0
     */
    public var radius:Float;
    /**
     * The diameter of the Circle.
     *
     * @name Phaser.Geom.Circle#diameter
     * @type {number}
     * @since 3.0.0
     */
    public var diameter:Float;
    /**
     * The left position of the Circle.
     *
     * @name Phaser.Geom.Circle#left
     * @type {number}
     * @since 3.0.0
     */
    public var left:Float;
    /**
     * The right position of the Circle.
     *
     * @name Phaser.Geom.Circle#right
     * @type {number}
     * @since 3.0.0
     */
    public var right:Float;
    /**
     * The top position of the Circle.
     *
     * @name Phaser.Geom.Circle#top
     * @type {number}
     * @since 3.0.0
     */
    public var top:Float;
    /**
     * The bottom position of the Circle.
     *
     * @name Phaser.Geom.Circle#bottom
     * @type {number}
     * @since 3.0.0
     */
    public var bottom:Float;
    /**
     * Calculates the area of the circle.
     *
     * @function Phaser.Geom.Circle.Area
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to get the area of.
     *
     * @return {number} The area of the Circle.
     */
    public function Area(circle:phaser.geom.Circle):Float;
    /**
     * Check to see if the Circle contains the given x / y coordinates.
     *
     * @method Phaser.Geom.Circle#contains
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to check within the circle.
     * @param {number} y - The y coordinate to check within the circle.
     *
     * @return {boolean} True if the coordinates are within the circle, otherwise false.
     */
    public function contains(x:Float, y:Float):Bool;
    /**
     * Returns a Point object containing the coordinates of a point on the circumference of the Circle
     * based on the given angle normalized to the range 0 to 1. I.e. a value of 0.5 will give the point
     * at 180 degrees around the circle.
     *
     * @method Phaser.Geom.Circle#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {number} position - A value between 0 and 1, where 0 equals 0 degrees, 0.5 equals 180 degrees and 1 equals 360 around the circle.
     * @param {(Phaser.Geom.Point|object)} [out] - An object to store the return values in. If not given a Point object will be created.
     *
     * @return {(Phaser.Geom.Point|object)} A Point, or point-like object, containing the coordinates of the point around the circle.
     */
    public function getPoint(position:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Returns an array of Point objects containing the coordinates of the points around the circumference of the Circle,
     * based on the given quantity or stepRate values.
     *
     * @method Phaser.Geom.Circle#getPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [output,$return]
     *
     * @param {integer} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the circumference of the circle and dividing it by the stepRate.
     * @param {(array|Phaser.Geom.Point[])} [output] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {(array|Phaser.Geom.Point[])} An array of Point objects pertaining to the points around the circumference of the circle.
     */
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Dynamic):Array<Dynamic>;
    /**
     * Returns a uniformly distributed random point from anywhere within the Circle.
     *
     * @method Phaser.Geom.Circle#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [point,$return]
     *
     * @param {(Phaser.Geom.Point|object)} [point] - A Point or point-like object to set the random `x` and `y` values in.
     *
     * @return {(Phaser.Geom.Point|object)} A Point object with the random values set in the `x` and `y` properties.
     */
    public function getRandomPoint(?point:Dynamic):phaser.geom.Point;
    /**
     * Sets the x, y and radius of this circle.
     *
     * @method Phaser.Geom.Circle#setTo
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x position of the center of the circle.
     * @param {number} [y=0] - The y position of the center of the circle.
     * @param {number} [radius=0] - The radius of the circle.
     *
     * @return {Phaser.Geom.Circle} This Circle object.
     */
    public function setTo(?x:Float, ?y:Float, ?radius:Float):phaser.geom.Circle;
    /**
     * Sets this Circle to be empty with a radius of zero.
     * Does not change its position.
     *
     * @method Phaser.Geom.Circle#setEmpty
     * @since 3.0.0
     *
     * @return {Phaser.Geom.Circle} This Circle object.
     */
    public function setEmpty():phaser.geom.Circle;
    /**
     * Sets the position of this Circle.
     *
     * @method Phaser.Geom.Circle#setPosition
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x position of the center of the circle.
     * @param {number} [y=0] - The y position of the center of the circle.
     *
     * @return {Phaser.Geom.Circle} This Circle object.
     */
    public function setPosition(?x:Float, ?y:Float):phaser.geom.Circle;
    /**
     * Checks to see if the Circle is empty: has a radius of zero.
     *
     * @method Phaser.Geom.Circle#isEmpty
     * @since 3.0.0
     *
     * @return {boolean} True if the Circle is empty, otherwise false.
     */
    public function isEmpty():Bool;
    /**
     * Returns the circumference of the given Circle.
     *
     * @function Phaser.Geom.Circle.Circumference
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to get the circumference of.
     *
     * @return {number} The circumference of the Circle.
     */
    public function Circumference(circle:phaser.geom.Circle):Float;
    /**
     * Returns a Point object containing the coordinates of a point on the circumference of the Circle based on the given angle.
     *
     * @function Phaser.Geom.Circle.CircumferencePoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to get the circumference point on.
     * @param {number} angle - The angle from the center of the Circle to the circumference to return the point from. Given in radians.
     * @param {(Phaser.Geom.Point|object)} [out] - A Point, or point-like object, to store the results in. If not given a Point will be created.
     *
     * @return {(Phaser.Geom.Point|object)} A Point object where the `x` and `y` properties are the point on the circumference.
     */
    public function CircumferencePoint(circle:phaser.geom.Circle, angle:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Creates a new Circle instance based on the values contained in the given source.
     *
     * @function Phaser.Geom.Circle.Clone
     * @since 3.0.0
     *
     * @param {(Phaser.Geom.Circle|object)} source - The Circle to be cloned. Can be an instance of a Circle or a circle-like object, with x, y and radius properties.
     *
     * @return {Phaser.Geom.Circle} A clone of the source Circle.
     */
    public function Clone(source:Dynamic):phaser.geom.Circle;
    /**
     * Check to see if the Circle contains the given x / y coordinates.
     *
     * @function Phaser.Geom.Circle.Contains
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to check.
     * @param {number} x - The x coordinate to check within the circle.
     * @param {number} y - The y coordinate to check within the circle.
     *
     * @return {boolean} True if the coordinates are within the circle, otherwise false.
     */
    public function Contains(circle:phaser.geom.Circle, x:Float, y:Float):Bool;
    /**
     * Check to see if the Circle contains the given Point object.
     *
     * @function Phaser.Geom.Circle.ContainsPoint
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to check.
     * @param {(Phaser.Geom.Point|object)} point - The Point object to check if it's within the Circle or not.
     *
     * @return {boolean} True if the Point coordinates are within the circle, otherwise false.
     */
    public function ContainsPoint(circle:phaser.geom.Circle, point:Dynamic):Bool;
    /**
     * Check to see if the Circle contains all four points of the given Rectangle object.
     *
     * @function Phaser.Geom.Circle.ContainsRect
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to check.
     * @param {(Phaser.Geom.Rectangle|object)} rect - The Rectangle object to check if it's within the Circle or not.
     *
     * @return {boolean} True if all of the Rectangle coordinates are within the circle, otherwise false.
     */
    public function ContainsRect(circle:phaser.geom.Circle, rect:Dynamic):Bool;
    /**
     * Copies the `x`, `y` and `radius` properties from the `source` Circle
     * into the given `dest` Circle, then returns the `dest` Circle.
     *
     * @function Phaser.Geom.Circle.CopyFrom
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Circle} O - [dest,$return]
     *
     * @param {Phaser.Geom.Circle} source - The source Circle to copy the values from.
     * @param {Phaser.Geom.Circle} dest - The destination Circle to copy the values to.
     *
     * @return {Phaser.Geom.Circle} The destination Circle.
     */
    public function CopyFrom(source:phaser.geom.Circle, dest:phaser.geom.Circle):phaser.geom.Circle;
    /**
     * Compares the `x`, `y` and `radius` properties of the two given Circles.
     * Returns `true` if they all match, otherwise returns `false`.
     *
     * @function Phaser.Geom.Circle.Equals
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The first Circle to compare.
     * @param {Phaser.Geom.Circle} toCompare - The second Circle to compare.
     *
     * @return {boolean} `true` if the two Circles equal each other, otherwise `false`.
     */
    public function Equals(circle:phaser.geom.Circle, toCompare:phaser.geom.Circle):Bool;
    /**
     * Returns the bounds of the Circle object.
     *
     * @function Phaser.Geom.Circle.GetBounds
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [out,$return]
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to get the bounds from.
     * @param {(Phaser.Geom.Rectangle|object)} [out] - A Rectangle, or rectangle-like object, to store the circle bounds in. If not given a new Rectangle will be created.
     *
     * @return {(Phaser.Geom.Rectangle|object)} The Rectangle object containing the Circles bounds.
     */
    public function GetBounds(circle:phaser.geom.Circle, ?out:Dynamic):phaser.geom.Rectangle;
    /**
     * Returns a Point object containing the coordinates of a point on the circumference of the Circle
     * based on the given angle normalized to the range 0 to 1. I.e. a value of 0.5 will give the point
     * at 180 degrees around the circle.
     *
     * @function Phaser.Geom.Circle.GetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to get the circumference point on.
     * @param {number} position - A value between 0 and 1, where 0 equals 0 degrees, 0.5 equals 180 degrees and 1 equals 360 around the circle.
     * @param {(Phaser.Geom.Point|object)} [out] - An object to store the return values in. If not given a Point object will be created.
     *
     * @return {(Phaser.Geom.Point|object)} A Point, or point-like object, containing the coordinates of the point around the circle.
     */
    public function GetPoint(circle:phaser.geom.Circle, position:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Returns an array of Point objects containing the coordinates of the points around the circumference of the Circle,
     * based on the given quantity or stepRate values.
     *
     * @function Phaser.Geom.Circle.GetPoints
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to get the points from.
     * @param {integer} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the circumference of the circle and dividing it by the stepRate.
     * @param {array} [output] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {Phaser.Geom.Point[]} An array of Point objects pertaining to the points around the circumference of the circle.
     */
    public function GetPoints(circle:phaser.geom.Circle, quantity:Int, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
    /**
     * Offsets the Circle by the values given.
     *
     * @function Phaser.Geom.Circle.Offset
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Circle} O - [circle,$return]
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to be offset (translated.)
     * @param {number} x - The amount to horizontally offset the Circle by.
     * @param {number} y - The amount to vertically offset the Circle by.
     *
     * @return {Phaser.Geom.Circle} The Circle that was offset.
     */
    public function Offset(circle:phaser.geom.Circle, x:Float, y:Float):phaser.geom.Circle;
    /**
     * Offsets the Circle by the values given in the `x` and `y` properties of the Point object.
     *
     * @function Phaser.Geom.Circle.OffsetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Circle} O - [circle,$return]
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to be offset (translated.)
     * @param {(Phaser.Geom.Point|object)} point - The Point object containing the values to offset the Circle by.
     *
     * @return {Phaser.Geom.Circle} The Circle that was offset.
     */
    public function OffsetPoint(circle:phaser.geom.Circle, point:Dynamic):phaser.geom.Circle;
    /**
     * Returns a uniformly distributed random point from anywhere within the given Circle.
     *
     * @function Phaser.Geom.Circle.Random
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Circle} circle - The Circle to get a random point from.
     * @param {(Phaser.Geom.Point|object)} [out] - A Point or point-like object to set the random `x` and `y` values in.
     *
     * @return {(Phaser.Geom.Point|object)} A Point object with the random values set in the `x` and `y` properties.
     */
    public function Random(circle:phaser.geom.Circle, ?out:Dynamic):phaser.geom.Point;
}
