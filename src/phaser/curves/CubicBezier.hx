package phaser.curves;

/**
 * @classdesc
 * A higher-order Bézier curve constructed of four points.
 *
 * @class CubicBezier
 * @extends Phaser.Curves.Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {(Phaser.Math.Vector2|Phaser.Math.Vector2[])} p0 - Start point, or an array of point pairs.
 * @param {Phaser.Math.Vector2} p1 - Control Point 1.
 * @param {Phaser.Math.Vector2} p2 - Control Point 2.
 * @param {Phaser.Math.Vector2} p3 - End Point.
 */
@:native("Phaser.Curves.CubicBezier")
extern class CubicBezier extends phaser.curves.Curve {
    public function new(p0:Dynamic, p1:phaser.math.Vector2, p2:phaser.math.Vector2, p3:phaser.math.Vector2);
    /**
     * The start point of this curve.
     *
     * @name Phaser.Curves.CubicBezier#p0
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p0:phaser.math.Vector2;
    /**
     * The first control point of this curve.
     *
     * @name Phaser.Curves.CubicBezier#p1
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p1:phaser.math.Vector2;
    /**
     * The second control point of this curve.
     *
     * @name Phaser.Curves.CubicBezier#p2
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p2:phaser.math.Vector2;
    /**
     * The end point of this curve.
     *
     * @name Phaser.Curves.CubicBezier#p3
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p3:phaser.math.Vector2;
    /**
     * Returns the resolution of this curve.
     *
     * @method Phaser.Curves.CubicBezier#getResolution
     * @since 3.0.0
     *
     * @param {number} divisions - The amount of divisions used by this curve.
     *
     * @return {number} The resolution of the curve.
     */
    public function getResolution(divisions:Float):Float;
    /**
     * Get point at relative position in curve according to length.
     *
     * @method Phaser.Curves.CubicBezier#getPoint
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
     * Returns a JSON object that describes this curve.
     *
     * @method Phaser.Curves.CubicBezier#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Curves.JSONCurve} The JSON object containing this curve data.
     */
    public function toJSON():phaser.types.curves.JSONCurve;
    /**
     * Generates a curve from a JSON object.
     *
     * @function Phaser.Curves.CubicBezier.fromJSON
     * @since 3.0.0
     *
     * @param {Phaser.Types.Curves.JSONCurve} data - The JSON object containing this curve data.
     *
     * @return {Phaser.Curves.CubicBezier} The curve generated from the JSON object.
     */
    public function fromJSON(data:phaser.types.curves.JSONCurve):phaser.curves.CubicBezier;
}
