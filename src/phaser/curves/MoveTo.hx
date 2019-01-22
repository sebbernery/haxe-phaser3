package phaser.curves;

/**
 * @classdesc
 * [description]
 *
 * @class MoveTo
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x] - [description]
 * @param {number} [y] - [description]
 */
@:native("Phaser.Curves.MoveTo")
extern class MoveTo {
    public function new(?x:Float, ?y:Float);
    /**
     * [description]
     *
     * @name Phaser.Curves.MoveTo#active
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * [description]
     *
     * @name Phaser.Curves.MoveTo#p0
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var p0:phaser.math.Vector2;
    /**
     * Get point at relative position in curve according to length.
     *
     * @method Phaser.Curves.MoveTo#getPoint
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
     * @method Phaser.Curves.MoveTo#getPointAt
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} u - [description]
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {Phaser.Math.Vector2} [description]
     */
    public function getPointAt(u:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Gets the resolution of this curve.
     *
     * @method Phaser.Curves.MoveTo#getResolution
     * @since 3.0.0
     *
     * @return {number} The resolution of this curve. For a MoveTo the value is always 1.
     */
    public function getResolution():Float;
    /**
     * Gets the length of this curve.
     *
     * @method Phaser.Curves.MoveTo#getLength
     * @since 3.0.0
     *
     * @return {number} The length of this curve. For a MoveTo the value is always 0.
     */
    public function getLength():Float;
    /**
     * [description]
     *
     * @method Phaser.Curves.MoveTo#toJSON
     * @since 3.0.0
     *
     * @return {JSONCurve} [description]
     */
    public function toJSON():JSONCurve;
}
