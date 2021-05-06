package phaser.curves;

/**
 * @classdesc
 * A Base Curve class, which all other curve types extend.
 *
 * Based on the three.js Curve classes created by [zz85](http://www.lab4games.net/zz85/blog)
 *
 * @class Curve
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {string} type - The curve type.
 */
@:native("Phaser.Curves.Curve")
extern class Curve {
    public function new(type:String);
    /**
     * String based identifier for the type of curve.
     *
     * @name Phaser.Curves.Curve#type
     * @type {string}
     * @since 3.0.0
     */
    public var type:String;
    /**
     * The default number of divisions within the curve.
     *
     * @name Phaser.Curves.Curve#defaultDivisions
     * @type {number}
     * @default 5
     * @since 3.0.0
     */
    public var defaultDivisions:Float;
    /**
     * The quantity of arc length divisions within the curve.
     *
     * @name Phaser.Curves.Curve#arcLengthDivisions
     * @type {number}
     * @default 100
     * @since 3.0.0
     */
    public var arcLengthDivisions:Float;
    /**
     * An array of cached arc length values.
     *
     * @name Phaser.Curves.Curve#cacheArcLengths
     * @type {number[]}
     * @default []
     * @since 3.0.0
     */
    public var cacheArcLengths:Array<Float>;
    /**
     * Does the data of this curve need updating?
     *
     * @name Phaser.Curves.Curve#needsUpdate
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var needsUpdate:Bool;
    /**
     * For a curve on a Path, `false` means the Path will ignore this curve.
     *
     * @name Phaser.Curves.Curve#active
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * Draws this curve on the given Graphics object.
     *
     * The curve is drawn using `Graphics.strokePoints` so will be drawn at whatever the present Graphics stroke color is.
     * The Graphics object is not cleared before the draw, so the curve will appear on-top of anything else already rendered to it.
     *
     * @method Phaser.Curves.Curve#draw
     * @since 3.0.0
     *
     * @generic {Phaser.GameObjects.Graphics} G - [graphics,$return]
     *
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics instance onto which this curve will be drawn.
     * @param {number} [pointsTotal=32] - The resolution of the curve. The higher the value the smoother it will render, at the cost of rendering performance.
     *
     * @return {Phaser.GameObjects.Graphics} The Graphics object to which the curve was drawn.
     */
    public function draw(graphics:phaser.gameobjects.Graphics, ?pointsTotal:Float):phaser.gameobjects.Graphics;
    /**
     * Returns a Rectangle where the position and dimensions match the bounds of this Curve.
     *
     * You can control the accuracy of the bounds. The value given is used to work out how many points
     * to plot across the curve. Higher values are more accurate at the cost of calculation speed.
     *
     * @method Phaser.Curves.Curve#getBounds
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} [out] - The Rectangle to store the bounds in. If falsey a new object will be created.
     * @param {number} [accuracy=16] - The accuracy of the bounds calculations.
     *
     * @return {Phaser.Geom.Rectangle} A Rectangle object holding the bounds of this curve. If `out` was given it will be this object.
     */
    public function getBounds(?out:phaser.geom.Rectangle, ?accuracy:Float):phaser.geom.Rectangle;
    /**
     * Returns an array of points, spaced out X distance pixels apart.
     * The smaller the distance, the larger the array will be.
     *
     * @method Phaser.Curves.Curve#getDistancePoints
     * @since 3.0.0
     *
     * @param {number} distance - The distance, in pixels, between each point along the curve.
     *
     * @return {Phaser.Geom.Point[]} An Array of Point objects.
     */
    public function getDistancePoints(distance:Float):Array<phaser.geom.Point>;
    /**
     * Get a point at the end of the curve.
     *
     * @method Phaser.Curves.Curve#getEndPoint
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector2} [out] - Optional Vector object to store the result in.
     *
     * @return {Phaser.Math.Vector2} Vector2 containing the coordinates of the curves end point.
     */
    public function getEndPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Get total curve arc length
     *
     * @method Phaser.Curves.Curve#getLength
     * @since 3.0.0
     *
     * @return {number} The total length of the curve.
     */
    public function getLength():Float;
    /**
     * Get a list of cumulative segment lengths.
     *
     * These lengths are
     *
     * - [0] 0
     * - [1] The first segment
     * - [2] The first and second segment
     * - ...
     * - [divisions] All segments
     *
     * @method Phaser.Curves.Curve#getLengths
     * @since 3.0.0
     *
     * @param {number} [divisions] - The number of divisions or segments.
     *
     * @return {number[]} An array of cumulative lengths.
     */
    public function getLengths(?divisions:Float):Array<Float>;
    /**
     * Get a point at a relative position on the curve, by arc length.
     *
     * @method Phaser.Curves.Curve#getPointAt
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} u - The relative position, [0..1].
     * @param {Phaser.Math.Vector2} [out] - A point to store the result in.
     *
     * @return {Phaser.Math.Vector2} The point.
     */
    public function getPointAt(u:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Get a sequence of evenly spaced points from the curve.
     *
     * You can pass `divisions`, `stepRate`, or neither.
     *
     * The number of divisions will be
     *
     * 1. `divisions`, if `divisions` > 0; or
     * 2. `this.getLength / stepRate`, if `stepRate` > 0; or
     * 3. `this.defaultDivisions`
     *
     * `1 + divisions` points will be returned.
     *
     * @method Phaser.Curves.Curve#getPoints
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2[]} O - [out,$return]
     *
     * @param {number} [divisions] - The number of divisions to make.
     * @param {number} [stepRate] - The curve distance between points, implying `divisions`.
     * @param {(array|Phaser.Math.Vector2[])} [out] - An optional array to store the points in.
     *
     * @return {(array|Phaser.Math.Vector2[])} An array of Points from the curve.
     */
    public function getPoints(?divisions:Float, ?stepRate:Float, ?out:Dynamic):Array<Dynamic>;
    /**
     * Get a random point from the curve.
     *
     * @method Phaser.Curves.Curve#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - A point object to store the result in.
     *
     * @return {Phaser.Math.Vector2} The point.
     */
    public function getRandomPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Get a sequence of equally spaced points (by arc distance) from the curve.
     *
     * `1 + divisions` points will be returned.
     *
     * @method Phaser.Curves.Curve#getSpacedPoints
     * @since 3.0.0
     *
     * @param {number} [divisions=this.defaultDivisions] - The number of divisions to make.
     * @param {number} [stepRate] - Step between points. Used to calculate the number of points to return when divisions is falsy. Ignored if divisions is positive.
     * @param {(array|Phaser.Math.Vector2[])} [out] - An optional array to store the points in.
     *
     * @return {Phaser.Math.Vector2[]} An array of points.
     */
    public function getSpacedPoints(?divisions:Float, ?stepRate:Float, ?out:Dynamic):Array<phaser.math.Vector2>;
    /**
     * Get a point at the start of the curve.
     *
     * @method Phaser.Curves.Curve#getStartPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - A point to store the result in.
     *
     * @return {Phaser.Math.Vector2} The point.
     */
    public function getStartPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Get a unit vector tangent at a relative position on the curve.
     * In case any sub curve does not implement its tangent derivation,
     * 2 points a small delta apart will be used to find its gradient
     * which seems to give a reasonable approximation
     *
     * @method Phaser.Curves.Curve#getTangent
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} t - The relative position on the curve, [0..1].
     * @param {Phaser.Math.Vector2} [out] - A vector to store the result in.
     *
     * @return {Phaser.Math.Vector2} Vector approximating the tangent line at the point t (delta +/- 0.0001)
     */
    public function getTangent(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Get a unit vector tangent at a relative position on the curve, by arc length.
     *
     * @method Phaser.Curves.Curve#getTangentAt
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} u - The relative position on the curve, [0..1].
     * @param {Phaser.Math.Vector2} [out] - A vector to store the result in.
     *
     * @return {Phaser.Math.Vector2} The tangent vector.
     */
    public function getTangentAt(u:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Given a distance in pixels, get a t to find p.
     *
     * @method Phaser.Curves.Curve#getTFromDistance
     * @since 3.0.0
     *
     * @param {number} distance - The distance, in pixels.
     * @param {number} [divisions] - Optional amount of divisions.
     *
     * @return {number} The distance.
     */
    public function getTFromDistance(distance:Float, ?divisions:Float):Float;
    /**
     * Given u ( 0 .. 1 ), get a t to find p. This gives you points which are equidistant.
     *
     * @method Phaser.Curves.Curve#getUtoTmapping
     * @since 3.0.0
     *
     * @param {number} u - A float between 0 and 1.
     * @param {number} distance - The distance, in pixels.
     * @param {number} [divisions] - Optional amount of divisions.
     *
     * @return {number} The equidistant value.
     */
    public function getUtoTmapping(u:Float, distance:Float, ?divisions:Float):Float;
    /**
     * Calculate and cache the arc lengths.
     *
     * @method Phaser.Curves.Curve#updateArcLengths
     * @since 3.0.0
     *
     * @see Phaser.Curves.Curve#getLengths()
     */
    public function updateArcLengths():Void;
}
