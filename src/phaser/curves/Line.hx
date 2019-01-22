package phaser.curves;

/**
 * @classdesc
 * [description]
 *
 * @class Line
 * @extends Phaser.Curves.Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {(Phaser.Math.Vector2|number[])} p0 - [description]
 * @param {Phaser.Math.Vector2} [p1] - [description]
 */
@:native("Phaser.Curves.Line")
extern class Line extends phaser.curves.Curve {
    public function new(p0:Dynamic, ?p1:phaser.math.Vector2);
    /**
     * [description]
     *
     * @name Phaser.Curves.Line#p0
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p0:phaser.math.Vector2;
    /**
     * [description]
     *
     * @name Phaser.Curves.Line#p1
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p1:phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Line#getResolution
     * @since 3.0.0
     *
     * @param {number} [divisions=1] - [description]
     *
     * @return {number} [description]
     */
    public function getResolution(?divisions:Float):Float;
    /**
     * Get point at relative position in curve according to length.
     *
     * @method Phaser.Curves.Line#getPoint
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
     * @method Phaser.Curves.Line#toJSON
     * @since 3.0.0
     *
     * @return {JSONCurve} The JSON object containing this curve data.
     */
    public function toJSON():JSONCurve;
    /**
     * [description]
     *
     * @function Phaser.Curves.Line.fromJSON
     * @since 3.0.0
     *
     * @param {JSONCurve} data - The JSON object containing this curve data.
     *
     * @return {Phaser.Curves.Line} [description]
     */
    public function fromJSON(data:JSONCurve):phaser.curves.Line;
}
