package phaser.curves;

/**
 * @classdesc
 * Create a smooth 2d spline curve from a series of points.
 *
 * @class Spline
 * @extends Phaser.Curves.Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {(Phaser.Math.Vector2[]|number[]|number[][])} [points] - The points that configure the curve.
 */
@:native("Phaser.Curves.Spline")
extern class Spline extends phaser.curves.Curve {
    public function new(?points:Dynamic);
    /**
     * The Vector2 points that configure the curve.
     *
     * @name Phaser.Curves.Spline#points
     * @type {Phaser.Math.Vector2[]}
     * @default []
     * @since 3.0.0
     */
    public var points:Array<phaser.math.Vector2>;
    /**
     * Add a list of points to the current list of Vector2 points of the curve.
     *
     * @method Phaser.Curves.Spline#addPoints
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2[]|number[]|number[][])} points - The points that configure the curve.
     *
     * @return {Phaser.Curves.Spline} This curve object.
     */
    public function addPoints(points:Dynamic):phaser.curves.Spline;
    /**
     * Add a point to the current list of Vector2 points of the curve.
     *
     * @method Phaser.Curves.Spline#addPoint
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of this curve
     * @param {number} y - The y coordinate of this curve
     *
     * @return {Phaser.Math.Vector2} The new Vector2 added to the curve
     */
    public function addPoint(x:Float, y:Float):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Spline#getResolution
     * @since 3.0.0
     *
     * @param {number} divisions - [description]
     *
     * @return {number} [description]
     */
    public function getResolution(divisions:Float):Float;
    /**
     * Get point at relative position in curve according to length.
     *
     * @method Phaser.Curves.Spline#getPoint
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
     * Exports a JSON object containing this curve data.
     *
     * @method Phaser.Curves.Spline#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Curves.JSONCurve} The JSON object containing this curve data.
     */
    public function toJSON():phaser.types.curves.JSONCurve;
    /**
     * Imports a JSON object containing this curve data.
     *
     * @function Phaser.Curves.Spline.fromJSON
     * @since 3.0.0
     *
     * @param {Phaser.Types.Curves.JSONCurve} data - The JSON object containing this curve data.
     *
     * @return {Phaser.Curves.Spline} The spline curve created.
     */
    static public function fromJSON(data:phaser.types.curves.JSONCurve):phaser.curves.Spline;
}
