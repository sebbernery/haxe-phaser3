package phaser.curves;

/**
 * @classdesc
 * [description]
 *
 * @class QuadraticBezier
 * @extends Phaser.Curves.Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.2.0
 *
 * @param {(Phaser.Math.Vector2|number[])} p0 - Start point, or an array of point pairs.
 * @param {Phaser.Math.Vector2} p1 - Control Point 1.
 * @param {Phaser.Math.Vector2} p2 - Control Point 2.
 */
@:native("Phaser.Curves.QuadraticBezier")
extern class QuadraticBezier extends phaser.curves.Curve {
    public function new(p0:Dynamic, p1:phaser.math.Vector2, p2:phaser.math.Vector2);
    /**
     * [description]
     *
     * @name Phaser.Curves.QuadraticBezier#p0
     * @type {Phaser.Math.Vector2}
     * @since 3.2.0
     */
    public var p0:phaser.math.Vector2;
    /**
     * [description]
     *
     * @name Phaser.Curves.QuadraticBezier#p1
     * @type {Phaser.Math.Vector2}
     * @since 3.2.0
     */
    public var p1:phaser.math.Vector2;
    /**
     * [description]
     *
     * @name Phaser.Curves.QuadraticBezier#p2
     * @type {Phaser.Math.Vector2}
     * @since 3.2.0
     */
    public var p2:phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.QuadraticBezier#getResolution
     * @since 3.2.0
     *
     * @param {number} divisions - [description]
     *
     * @return {number} [description]
     */
    public function getResolution(divisions:Float):Float;
    /**
     * Get point at relative position in curve according to length.
     *
     * @method Phaser.Curves.QuadraticBezier#getPoint
     * @since 3.2.0
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
     * Converts the curve into a JSON compatible object.
     *
     * @method Phaser.Curves.QuadraticBezier#toJSON
     * @since 3.2.0
     *
     * @return {Phaser.Types.Curves.JSONCurve} The JSON object containing this curve data.
     */
    public function toJSON():phaser.types.curves.JSONCurve;
    /**
     * Creates a curve from a JSON object, e. g. created by `toJSON`.
     *
     * @function Phaser.Curves.QuadraticBezier.fromJSON
     * @since 3.2.0
     *
     * @param {Phaser.Types.Curves.JSONCurve} data - The JSON object containing this curve data.
     *
     * @return {Phaser.Curves.QuadraticBezier} The created curve instance.
     */
    static public function fromJSON(data:phaser.types.curves.JSONCurve):phaser.curves.QuadraticBezier;
}
