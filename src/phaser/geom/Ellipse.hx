package phaser.geom;

/**
 * @classdesc
 * An Ellipse object.
 *
 * This is a geometry object, containing numerical values and related methods to inspect and modify them.
 * It is not a Game Object, in that you cannot add it to the display list, and it has no texture.
 * To render an Ellipse you should look at the capabilities of the Graphics class.
 *
 * @class Ellipse
 * @memberof Phaser.Geom
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x=0] - The x position of the center of the ellipse.
 * @param {number} [y=0] - The y position of the center of the ellipse.
 * @param {number} [width=0] - The width of the ellipse.
 * @param {number} [height=0] - The height of the ellipse.
 */
@:native("Phaser.Geom.Ellipse")
extern class Ellipse {
    public function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
    /**
     * The geometry constant type of this object: `GEOM_CONST.ELLIPSE`.
     * Used for fast type comparisons.
     *
     * @name Phaser.Geom.Ellipse#type
     * @type {integer}
     * @readonly
     * @since 3.19.0
     */
    public var type:Int;
    /**
     * The x position of the center of the ellipse.
     *
     * @name Phaser.Geom.Ellipse#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of the center of the ellipse.
     *
     * @name Phaser.Geom.Ellipse#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The width of the ellipse.
     *
     * @name Phaser.Geom.Ellipse#width
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the ellipse.
     *
     * @name Phaser.Geom.Ellipse#height
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The left position of the Ellipse.
     *
     * @name Phaser.Geom.Ellipse#left
     * @type {number}
     * @since 3.0.0
     */
    public var left:Float;
    /**
     * The right position of the Ellipse.
     *
     * @name Phaser.Geom.Ellipse#right
     * @type {number}
     * @since 3.0.0
     */
    public var right:Float;
    /**
     * The top position of the Ellipse.
     *
     * @name Phaser.Geom.Ellipse#top
     * @type {number}
     * @since 3.0.0
     */
    public var top:Float;
    /**
     * The bottom position of the Ellipse.
     *
     * @name Phaser.Geom.Ellipse#bottom
     * @type {number}
     * @since 3.0.0
     */
    public var bottom:Float;
    /**
     * Calculates the area of the Ellipse.
     *
     * @function Phaser.Geom.Ellipse.Area
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to get the area of.
     *
     * @return {number} The area of the Ellipse.
     */
    static public function Area(ellipse:phaser.geom.Ellipse):Float;
    /**
     * Returns the circumference of the given Ellipse.
     *
     * @function Phaser.Geom.Ellipse.Circumference
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to get the circumference of.
     *
     * @return {number} The circumference of th Ellipse.
     */
    static public function Circumference(ellipse:phaser.geom.Ellipse):Float;
    /**
     * Returns a Point object containing the coordinates of a point on the circumference of the Ellipse based on the given angle.
     *
     * @function Phaser.Geom.Ellipse.CircumferencePoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to get the circumference point on.
     * @param {number} angle - The angle from the center of the Ellipse to the circumference to return the point from. Given in radians.
     * @param {(Phaser.Geom.Point|object)} [out] - A Point, or point-like object, to store the results in. If not given a Point will be created.
     *
     * @return {(Phaser.Geom.Point|object)} A Point object where the `x` and `y` properties are the point on the circumference.
     */
    static public function CircumferencePoint(ellipse:phaser.geom.Ellipse, angle:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Creates a new Ellipse instance based on the values contained in the given source.
     *
     * @function Phaser.Geom.Ellipse.Clone
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} source - The Ellipse to be cloned. Can be an instance of an Ellipse or a ellipse-like object, with x, y, width and height properties.
     *
     * @return {Phaser.Geom.Ellipse} A clone of the source Ellipse.
     */
    static public function Clone(source:phaser.geom.Ellipse):phaser.geom.Ellipse;
    /**
     * Check to see if the Ellipse contains the given x / y coordinates.
     *
     * @function Phaser.Geom.Ellipse.Contains
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to check.
     * @param {number} x - The x coordinate to check within the ellipse.
     * @param {number} y - The y coordinate to check within the ellipse.
     *
     * @return {boolean} True if the coordinates are within the ellipse, otherwise false.
     */
    static public function Contains(ellipse:phaser.geom.Ellipse, x:Float, y:Float):Bool;
    /**
     * Check to see if the Ellipse contains the given Point object.
     *
     * @function Phaser.Geom.Ellipse.ContainsPoint
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to check.
     * @param {(Phaser.Geom.Point|object)} point - The Point object to check if it's within the Circle or not.
     *
     * @return {boolean} True if the Point coordinates are within the circle, otherwise false.
     */
    static public function ContainsPoint(ellipse:phaser.geom.Ellipse, point:Dynamic):Bool;
    /**
     * Check to see if the Ellipse contains all four points of the given Rectangle object.
     *
     * @function Phaser.Geom.Ellipse.ContainsRect
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to check.
     * @param {(Phaser.Geom.Rectangle|object)} rect - The Rectangle object to check if it's within the Ellipse or not.
     *
     * @return {boolean} True if all of the Rectangle coordinates are within the ellipse, otherwise false.
     */
    static public function ContainsRect(ellipse:phaser.geom.Ellipse, rect:Dynamic):Bool;
    /**
     * Copies the `x`, `y`, `width` and `height` properties from the `source` Ellipse
     * into the given `dest` Ellipse, then returns the `dest` Ellipse.
     *
     * @function Phaser.Geom.Ellipse.CopyFrom
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Ellipse} O - [dest,$return]
     *
     * @param {Phaser.Geom.Ellipse} source - The source Ellipse to copy the values from.
     * @param {Phaser.Geom.Ellipse} dest - The destination Ellipse to copy the values to.
     *
     * @return {Phaser.Geom.Ellipse} The destination Ellipse.
     */
    static public function CopyFrom(source:phaser.geom.Ellipse, dest:phaser.geom.Ellipse):phaser.geom.Ellipse;
    /**
     * Check to see if the Ellipse contains the given x / y coordinates.
     *
     * @method Phaser.Geom.Ellipse#contains
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to check within the ellipse.
     * @param {number} y - The y coordinate to check within the ellipse.
     *
     * @return {boolean} True if the coordinates are within the ellipse, otherwise false.
     */
    public function contains(x:Float, y:Float):Bool;
    /**
     * Returns a Point object containing the coordinates of a point on the circumference of the Ellipse
     * based on the given angle normalized to the range 0 to 1. I.e. a value of 0.5 will give the point
     * at 180 degrees around the circle.
     *
     * @method Phaser.Geom.Ellipse#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {number} position - A value between 0 and 1, where 0 equals 0 degrees, 0.5 equals 180 degrees and 1 equals 360 around the ellipse.
     * @param {(Phaser.Geom.Point|object)} [out] - An object to store the return values in. If not given a Point object will be created.
     *
     * @return {(Phaser.Geom.Point|object)} A Point, or point-like object, containing the coordinates of the point around the ellipse.
     */
    public function getPoint(position:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Returns an array of Point objects containing the coordinates of the points around the circumference of the Ellipse,
     * based on the given quantity or stepRate values.
     *
     * @method Phaser.Geom.Ellipse#getPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [output,$return]
     *
     * @param {integer} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the circumference of the ellipse and dividing it by the stepRate.
     * @param {(array|Phaser.Geom.Point[])} [output] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {(array|Phaser.Geom.Point[])} An array of Point objects pertaining to the points around the circumference of the ellipse.
     */
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Dynamic):Array<Dynamic>;
    /**
     * Returns a uniformly distributed random point from anywhere within the given Ellipse.
     *
     * @method Phaser.Geom.Ellipse#getRandomPoint
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
     * Sets the x, y, width and height of this ellipse.
     *
     * @method Phaser.Geom.Ellipse#setTo
     * @since 3.0.0
     *
     * @param {number} x - The x position of the center of the ellipse.
     * @param {number} y - The y position of the center of the ellipse.
     * @param {number} width - The width of the ellipse.
     * @param {number} height - The height of the ellipse.
     *
     * @return {this} This Ellipse object.
     */
    public function setTo(x:Float, y:Float, width:Float, height:Float):Dynamic;
    /**
     * Sets this Ellipse to be empty with a width and height of zero.
     * Does not change its position.
     *
     * @method Phaser.Geom.Ellipse#setEmpty
     * @since 3.0.0
     *
     * @return {this} This Ellipse object.
     */
    public function setEmpty():Dynamic;
    /**
     * Sets the position of this Ellipse.
     *
     * @method Phaser.Geom.Ellipse#setPosition
     * @since 3.0.0
     *
     * @param {number} x - The x position of the center of the ellipse.
     * @param {number} y - The y position of the center of the ellipse.
     *
     * @return {this} This Ellipse object.
     */
    public function setPosition(x:Float, y:Float):Dynamic;
    /**
     * Sets the size of this Ellipse.
     * Does not change its position.
     *
     * @method Phaser.Geom.Ellipse#setSize
     * @since 3.0.0
     *
     * @param {number} width - The width of the ellipse.
     * @param {number} [height=width] - The height of the ellipse.
     *
     * @return {this} This Ellipse object.
     */
    public function setSize(width:Float, ?height:Float):Dynamic;
    /**
     * Checks to see if the Ellipse is empty: has a width or height equal to zero.
     *
     * @method Phaser.Geom.Ellipse#isEmpty
     * @since 3.0.0
     *
     * @return {boolean} True if the Ellipse is empty, otherwise false.
     */
    public function isEmpty():Bool;
    /**
     * Returns the minor radius of the ellipse. Also known as the Semi Minor Axis.
     *
     * @method Phaser.Geom.Ellipse#getMinorRadius
     * @since 3.0.0
     *
     * @return {number} The minor radius.
     */
    public function getMinorRadius():Float;
    /**
     * Returns the major radius of the ellipse. Also known as the Semi Major Axis.
     *
     * @method Phaser.Geom.Ellipse#getMajorRadius
     * @since 3.0.0
     *
     * @return {number} The major radius.
     */
    public function getMajorRadius():Float;
    /**
     * Compares the `x`, `y`, `width` and `height` properties of the two given Ellipses.
     * Returns `true` if they all match, otherwise returns `false`.
     *
     * @function Phaser.Geom.Ellipse.Equals
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The first Ellipse to compare.
     * @param {Phaser.Geom.Ellipse} toCompare - The second Ellipse to compare.
     *
     * @return {boolean} `true` if the two Ellipse equal each other, otherwise `false`.
     */
    static public function Equals(ellipse:phaser.geom.Ellipse, toCompare:phaser.geom.Ellipse):Bool;
    /**
     * Returns the bounds of the Ellipse object.
     *
     * @function Phaser.Geom.Ellipse.GetBounds
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [out,$return]
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to get the bounds from.
     * @param {(Phaser.Geom.Rectangle|object)} [out] - A Rectangle, or rectangle-like object, to store the ellipse bounds in. If not given a new Rectangle will be created.
     *
     * @return {(Phaser.Geom.Rectangle|object)} The Rectangle object containing the Ellipse bounds.
     */
    static public function GetBounds(ellipse:phaser.geom.Ellipse, ?out:Dynamic):phaser.geom.Rectangle;
    /**
     * Returns a Point object containing the coordinates of a point on the circumference of the Ellipse
     * based on the given angle normalized to the range 0 to 1. I.e. a value of 0.5 will give the point
     * at 180 degrees around the circle.
     *
     * @function Phaser.Geom.Ellipse.GetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to get the circumference point on.
     * @param {number} position - A value between 0 and 1, where 0 equals 0 degrees, 0.5 equals 180 degrees and 1 equals 360 around the ellipse.
     * @param {(Phaser.Geom.Point|object)} [out] - An object to store the return values in. If not given a Point object will be created.
     *
     * @return {(Phaser.Geom.Point|object)} A Point, or point-like object, containing the coordinates of the point around the ellipse.
     */
    static public function GetPoint(ellipse:phaser.geom.Ellipse, position:Float, ?out:Dynamic):phaser.geom.Point;
    /**
     * Returns an array of Point objects containing the coordinates of the points around the circumference of the Ellipse,
     * based on the given quantity or stepRate values.
     *
     * @function Phaser.Geom.Ellipse.GetPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point[]} O - [out,$return]
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to get the points from.
     * @param {integer} quantity - The amount of points to return. If a falsey value the quantity will be derived from the `stepRate` instead.
     * @param {number} [stepRate] - Sets the quantity by getting the circumference of the ellipse and dividing it by the stepRate.
     * @param {(array|Phaser.Geom.Point[])} [out] - An array to insert the points in to. If not provided a new array will be created.
     *
     * @return {(array|Phaser.Geom.Point[])} An array of Point objects pertaining to the points around the circumference of the ellipse.
     */
    static public function GetPoints(ellipse:phaser.geom.Ellipse, quantity:Int, ?stepRate:Float, ?out:Dynamic):Array<Dynamic>;
    /**
     * Offsets the Ellipse by the values given.
     *
     * @function Phaser.Geom.Ellipse.Offset
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Ellipse} O - [ellipse,$return]
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to be offset (translated.)
     * @param {number} x - The amount to horizontally offset the Ellipse by.
     * @param {number} y - The amount to vertically offset the Ellipse by.
     *
     * @return {Phaser.Geom.Ellipse} The Ellipse that was offset.
     */
    static public function Offset(ellipse:phaser.geom.Ellipse, x:Float, y:Float):phaser.geom.Ellipse;
    /**
     * Offsets the Ellipse by the values given in the `x` and `y` properties of the Point object.
     *
     * @function Phaser.Geom.Ellipse.OffsetPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Ellipse} O - [ellipse,$return]
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to be offset (translated.)
     * @param {(Phaser.Geom.Point|object)} point - The Point object containing the values to offset the Ellipse by.
     *
     * @return {Phaser.Geom.Ellipse} The Ellipse that was offset.
     */
    static public function OffsetPoint(ellipse:phaser.geom.Ellipse, point:Dynamic):phaser.geom.Ellipse;
    /**
     * Returns a uniformly distributed random point from anywhere within the given Ellipse.
     *
     * @function Phaser.Geom.Ellipse.Random
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Point} O - [out,$return]
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The Ellipse to get a random point from.
     * @param {(Phaser.Geom.Point|object)} [out] - A Point or point-like object to set the random `x` and `y` values in.
     *
     * @return {(Phaser.Geom.Point|object)} A Point object with the random values set in the `x` and `y` properties.
     */
    static public function Random(ellipse:phaser.geom.Ellipse, ?out:Dynamic):phaser.geom.Point;
}
