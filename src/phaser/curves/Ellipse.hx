package phaser.curves;

/**
 * @classdesc
 * An Elliptical Curve derived from the Base Curve class.
 *
 * See https://en.wikipedia.org/wiki/Elliptic_curve for more details.
 *
 * @class Ellipse
 * @extends Phaser.Curves.Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {(number|Phaser.Types.Curves.EllipseCurveConfig)} [x=0] - The x coordinate of the ellipse, or an Ellipse Curve configuration object.
 * @param {number} [y=0] - The y coordinate of the ellipse.
 * @param {number} [xRadius=0] - The horizontal radius of ellipse.
 * @param {number} [yRadius=0] - The vertical radius of ellipse.
 * @param {integer} [startAngle=0] - The start angle of the ellipse, in degrees.
 * @param {integer} [endAngle=360] - The end angle of the ellipse, in degrees.
 * @param {boolean} [clockwise=false] - Whether the ellipse angles are given as clockwise (`true`) or counter-clockwise (`false`).
 * @param {integer} [rotation=0] - The rotation of the ellipse, in degrees.
 */
@:native("Phaser.Curves.Ellipse")
extern class Ellipse extends phaser.curves.Curve {
    public function new(?x:Dynamic, ?y:Float, ?xRadius:Float, ?yRadius:Float, ?startAngle:Int, ?endAngle:Int, ?clockwise:Bool, ?rotation:Int);
    /**
     * The center point of the ellipse. Used for calculating rotation.
     *
     * @name Phaser.Curves.Ellipse#p0
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p0:phaser.math.Vector2;
    /**
     * The x coordinate of the center of the ellipse.
     *
     * @name Phaser.Curves.Ellipse#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y coordinate of the center of the ellipse.
     *
     * @name Phaser.Curves.Ellipse#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The horizontal radius of the ellipse.
     *
     * @name Phaser.Curves.Ellipse#xRadius
     * @type {number}
     * @since 3.0.0
     */
    public var xRadius:Float;
    /**
     * The vertical radius of the ellipse.
     *
     * @name Phaser.Curves.Ellipse#yRadius
     * @type {number}
     * @since 3.0.0
     */
    public var yRadius:Float;
    /**
     * The start angle of the ellipse in degrees.
     *
     * @name Phaser.Curves.Ellipse#startAngle
     * @type {number}
     * @since 3.0.0
     */
    public var startAngle:Float;
    /**
     * The end angle of the ellipse in degrees.
     *
     * @name Phaser.Curves.Ellipse#endAngle
     * @type {number}
     * @since 3.0.0
     */
    public var endAngle:Float;
    /**
     * `true` if the ellipse rotation is clockwise or `false` if anti-clockwise.
     *
     * @name Phaser.Curves.Ellipse#clockwise
     * @type {boolean}
     * @since 3.0.0
     */
    public var clockwise:Bool;
    /**
     * The rotation of the ellipse, relative to the center, in degrees.
     *
     * @name Phaser.Curves.Ellipse#angle
     * @type {number}
     * @since 3.14.0
     */
    public var angle:Float;
    /**
     * The rotation of the ellipse, relative to the center, in radians.
     *
     * @name Phaser.Curves.Ellipse#rotation
     * @type {number}
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Get the resolution of the curve.
     *
     * @method Phaser.Curves.Ellipse#getResolution
     * @since 3.0.0
     *
     * @param {number} divisions - Optional divisions value.
     *
     * @return {number} The curve resolution.
     */
    public function getResolution(divisions:Float):Float;
    /**
     * Get point at relative position in curve according to length.
     *
     * @method Phaser.Curves.Ellipse#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} t - The position along the curve to return. Where 0 is the start and 1 is the end.
     * @param {Phaser.Math.Vector2} [out] - A Vector2 object to store the result in. If not given will be created.
     *
     * @return {Phaser.Math.Vector2} The coordinates of the point on the curve. If an `out` object was given this will be returned.
     */
    public function getPoint(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Sets the horizontal radius of this curve.
     *
     * @method Phaser.Curves.Ellipse#setXRadius
     * @since 3.0.0
     *
     * @param {number} value - The horizontal radius of this curve.
     *
     * @return {this} This curve object.
     */
    public function setXRadius(value:Float):Dynamic;
    /**
     * Sets the vertical radius of this curve.
     *
     * @method Phaser.Curves.Ellipse#setYRadius
     * @since 3.0.0
     *
     * @param {number} value - The vertical radius of this curve.
     *
     * @return {this} This curve object.
     */
    public function setYRadius(value:Float):Dynamic;
    /**
     * Sets the width of this curve.
     *
     * @method Phaser.Curves.Ellipse#setWidth
     * @since 3.0.0
     *
     * @param {number} value - The width of this curve.
     *
     * @return {this} This curve object.
     */
    public function setWidth(value:Float):Dynamic;
    /**
     * Sets the height of this curve.
     *
     * @method Phaser.Curves.Ellipse#setHeight
     * @since 3.0.0
     *
     * @param {number} value - The height of this curve.
     *
     * @return {this} This curve object.
     */
    public function setHeight(value:Float):Dynamic;
    /**
     * Sets the start angle of this curve.
     *
     * @method Phaser.Curves.Ellipse#setStartAngle
     * @since 3.0.0
     *
     * @param {number} value - The start angle of this curve, in radians.
     *
     * @return {this} This curve object.
     */
    public function setStartAngle(value:Float):Dynamic;
    /**
     * Sets the end angle of this curve.
     *
     * @method Phaser.Curves.Ellipse#setEndAngle
     * @since 3.0.0
     *
     * @param {number} value - The end angle of this curve, in radians.
     *
     * @return {this} This curve object.
     */
    public function setEndAngle(value:Float):Dynamic;
    /**
     * Sets if this curve extends clockwise or anti-clockwise.
     *
     * @method Phaser.Curves.Ellipse#setClockwise
     * @since 3.0.0
     *
     * @param {boolean} value - The clockwise state of this curve.
     *
     * @return {this} This curve object.
     */
    public function setClockwise(value:Bool):Dynamic;
    /**
     * Sets the rotation of this curve.
     *
     * @method Phaser.Curves.Ellipse#setRotation
     * @since 3.0.0
     *
     * @param {number} value - The rotation of this curve, in radians.
     *
     * @return {this} This curve object.
     */
    public function setRotation(value:Float):Dynamic;
    /**
     * JSON serialization of the curve.
     *
     * @method Phaser.Curves.Ellipse#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Curves.JSONEllipseCurve} The JSON object containing this curve data.
     */
    public function toJSON():phaser.types.curves.JSONEllipseCurve;
    /**
     * Creates a curve from the provided Ellipse Curve Configuration object.
     *
     * @function Phaser.Curves.Ellipse.fromJSON
     * @since 3.0.0
     *
     * @param {Phaser.Types.Curves.JSONEllipseCurve} data - The JSON object containing this curve data.
     *
     * @return {Phaser.Curves.Ellipse} The ellipse curve constructed from the configuration object.
     */
    static public function fromJSON(data:phaser.types.curves.JSONEllipseCurve):phaser.curves.Ellipse;
}
