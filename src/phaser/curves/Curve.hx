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
 * @param {string} type - [description]
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
     * @type {integer}
     * @default 5
     * @since 3.0.0
     */
    public var defaultDivisions:Int;
    /**
     * The quantity of arc length divisions within the curve.
     *
     * @name Phaser.Curves.Curve#arcLengthDivisions
     * @type {integer}
     * @default 100
     * @since 3.0.0
     */
    public var arcLengthDivisions:Int;
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
     * [description]
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
     * @param {integer} [pointsTotal=32] - The resolution of the curve. The higher the value the smoother it will render, at the cost of rendering performance.
     *
     * @return {Phaser.GameObjects.Graphics} The Graphics object to which the curve was drawn.
     */
    public function draw(graphics:phaser.gameobjects.Graphics, ?pointsTotal:Int):phaser.gameobjects.Graphics;
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
     * @param {integer} [accuracy=16] - The accuracy of the bounds calculations.
     *
     * @return {Phaser.Geom.Rectangle} A Rectangle object holding the bounds of this curve. If `out` was given it will be this object.
     */
    public function getBounds(?out:phaser.geom.Rectangle, ?accuracy:Int):phaser.geom.Rectangle;
    /**
     * Returns an array of points, spaced out X distance pixels apart.
     * The smaller the distance, the larger the array will be.
     *
     * @method Phaser.Curves.Curve#getDistancePoints
     * @since 3.0.0
     *
     * @param {integer} distance - The distance, in pixels, between each point along the curve.
     *
     * @return {Phaser.Geom.Point[]} An Array of Point objects.
     */
    public function getDistancePoints(distance:Int):Array<phaser.geom.Point>;
    /**
     * [description]
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
     * [description]
     *
     * @method Phaser.Curves.Curve#getLength
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getLength():Float;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getLengths
     * @since 3.0.0
     *
     * @param {integer} [divisions] - [description]
     *
     * @return {number[]} [description]
     */
    public function getLengths(?divisions:Int):Array<Float>;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getPointAt
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
     * [description]
     *
     * @method Phaser.Curves.Curve#getPoints
     * @since 3.0.0
     *
     * @param {integer} [divisions] - [description]
     *
     * @return {Phaser.Math.Vector2[]} [description]
     */
    public function getPoints(?divisions:Int):Array<phaser.math.Vector2>;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {Phaser.Math.Vector2} [description]
     */
    public function getRandomPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getSpacedPoints
     * @since 3.0.0
     *
     * @param {integer} [divisions] - [description]
     *
     * @return {Phaser.Math.Vector2[]} [description]
     */
    public function getSpacedPoints(?divisions:Int):Array<phaser.math.Vector2>;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getStartPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {Phaser.Math.Vector2} [description]
     */
    public function getStartPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getTangent
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} t - [description]
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {Phaser.Math.Vector2} Vector approximating the tangent line at the point t (delta +/- 0.0001)
     */
    public function getTangent(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getTangentAt
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} u - [description]
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {Phaser.Math.Vector2} [description]
     */
    public function getTangentAt(u:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getTFromDistance
     * @since 3.0.0
     *
     * @param {integer} distance - [description]
     * @param {integer} [divisions] - [description]
     *
     * @return {number} [description]
     */
    public function getTFromDistance(distance:Int, ?divisions:Int):Float;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#getUtoTmapping
     * @since 3.0.0
     *
     * @param {number} u - [description]
     * @param {integer} distance - [description]
     * @param {integer} [divisions] - [description]
     *
     * @return {number} [description]
     */
    public function getUtoTmapping(u:Float, distance:Int, ?divisions:Int):Float;
    /**
     * [description]
     *
     * @method Phaser.Curves.Curve#updateArcLengths
     * @since 3.0.0
     */
    public function updateArcLengths():Void;
}
