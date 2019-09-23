package phaser.curves;

/**
 * @classdesc
 * A LineCurve is a "curve" comprising exactly two points (a line segment).
 *
 * @class Line
 * @extends Phaser.Curves.Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {(Phaser.Math.Vector2|number[])} p0 - The first endpoint.
 * @param {Phaser.Math.Vector2} [p1] - The second endpoint.
 */
@:native("Phaser.Curves.Line")
extern class Line extends phaser.curves.Curve {
    public function new(p0:Dynamic, ?p1:phaser.math.Vector2);
    /**
     * The first endpoint.
     *
     * @name Phaser.Curves.Line#p0
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p0:phaser.math.Vector2;
    /**
     * The second endpoint.
     *
     * @name Phaser.Curves.Line#p1
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p1:phaser.math.Vector2;
    /**
     * Gets the resolution of the line.
     *
     * @method Phaser.Curves.Line#getResolution
     * @since 3.0.0
     *
     * @param {number} [divisions=1] - The number of divisions to consider.
     *
     * @return {number} The resolution. Equal to the number of divisions.
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
     * Gets a JSON representation of the line.
     *
     * @method Phaser.Curves.Line#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Curves.JSONCurve} The JSON object containing this curve data.
     */
    public function toJSON():phaser.types.curves.JSONCurve;
    /**
     * Configures this line from a JSON representation.
     *
     * @function Phaser.Curves.Line.fromJSON
     * @since 3.0.0
     *
     * @param {Phaser.Types.Curves.JSONCurve} data - The JSON object containing this curve data.
     *
     * @return {Phaser.Curves.Line} A new LineCurve object.
     */
    static public function fromJSON(data:phaser.types.curves.JSONCurve):phaser.curves.Line;
}
