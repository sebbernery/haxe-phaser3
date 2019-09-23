package phaser.curves;

/**
 * @classdesc
 * [description]
 *
 * @class Spline
 * @extends Phaser.Curves.Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Math.Vector2[]} [points] - [description]
 */
@:native("Phaser.Curves.Spline")
extern class Spline extends phaser.curves.Curve {
    public function new(?points:Array<phaser.math.Vector2>);
    /**
     * [description]
     *
     * @name Phaser.Curves.Spline#points
     * @type {Phaser.Math.Vector2[]}
     * @default []
     * @since 3.0.0
     */
    public var points:Array<phaser.math.Vector2>;
    /**
     * [description]
     *
     * @method Phaser.Curves.Spline#addPoints
     * @since 3.0.0
     *
     * @param {(Phaser.Math.Vector2[]|number[]|number[][])} points - [description]
     *
     * @return {Phaser.Curves.Spline} This curve object.
     */
    public function addPoints(points:Dynamic):phaser.curves.Spline;
    /**
     * [description]
     *
     * @method Phaser.Curves.Spline#addPoint
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     *
     * @return {Phaser.Math.Vector2} [description]
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
     * [description]
     *
     * @method Phaser.Curves.Spline#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Curves.JSONCurve} The JSON object containing this curve data.
     */
    public function toJSON():phaser.types.curves.JSONCurve;
    /**
     * [description]
     *
     * @function Phaser.Curves.Spline.fromJSON
     * @since 3.0.0
     *
     * @param {Phaser.Types.Curves.JSONCurve} data - The JSON object containing this curve data.
     *
     * @return {Phaser.Curves.Spline} [description]
     */
    static public function fromJSON(data:phaser.types.curves.JSONCurve):phaser.curves.Spline;
}
