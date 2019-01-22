package phaser.curves;

/**
 * @classdesc
 * [description]
 *
 * @class Path
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x=0] - [description]
 * @param {number} [y=0] - [description]
 */
@:native("Phaser.Curves.Path")
extern class Path {
    public function new(?x:Float, ?y:Float);
    /**
     * [description]
     *
     * @name Phaser.Curves.Path#name
     * @type {string}
     * @default ''
     * @since 3.0.0
     */
    public var name:String;
    /**
     * [description]
     *
     * @name Phaser.Curves.Path#curves
     * @type {Phaser.Curves.Curve[]}
     * @default []
     * @since 3.0.0
     */
    public var curves:Array<phaser.curves.Curve>;
    /**
     * [description]
     *
     * @name Phaser.Curves.Path#cacheLengths
     * @type {number[]}
     * @default []
     * @since 3.0.0
     */
    public var cacheLengths:Array<Float>;
    /**
     * Automatically closes the path.
     *
     * @name Phaser.Curves.Path#autoClose
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var autoClose:Bool;
    /**
     * [description]
     *
     * @name Phaser.Curves.Path#startPoint
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var startPoint:phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#add
     * @since 3.0.0
     *
     * @param {Phaser.Curves.Curve} curve - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function add(curve:phaser.curves.Curve):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#circleTo
     * @since 3.0.0
     *
     * @param {number} radius - [description]
     * @param {boolean} [clockwise=false] - [description]
     * @param {number} [rotation=0] - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function circleTo(radius:Float, ?clockwise:Bool, ?rotation:Float):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#closePath
     * @since 3.0.0
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function closePath():phaser.curves.Path;
    /**
     * Creates a cubic bezier curve starting at the previous end point and ending at p3, using p1 and p2 as control points.
     *
     * @method Phaser.Curves.Path#cubicBezierTo
     * @since 3.0.0
     *
     * @param {(number|Phaser.Math.Vector2)} x - The x coordinate of the end point. Or, if a Vec2, the p1 value.
     * @param {(number|Phaser.Math.Vector2)} y - The y coordinate of the end point. Or, if a Vec2, the p2 value.
     * @param {(number|Phaser.Math.Vector2)} control1X - The x coordinate of the first control point. Or, if a Vec2, the p3 value.
     * @param {number} [control1Y] - The y coordinate of the first control point. Not used if vec2s are provided as the first 3 arguments.
     * @param {number} [control2X] - The x coordinate of the second control point. Not used if vec2s are provided as the first 3 arguments.
     * @param {number} [control2Y] - The y coordinate of the second control point. Not used if vec2s are provided as the first 3 arguments.
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function cubicBezierTo(x:Dynamic, y:Dynamic, control1X:Dynamic, ?control1Y:Float, ?control2X:Float, ?control2Y:Float):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#quadraticBezierTo
     * @since 3.2.0
     *
     * @param {(number|Phaser.Math.Vector2[])} x - [description]
     * @param {number} [y] - [description]
     * @param {number} [controlX] - [description]
     * @param {number} [controlY] - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function quadraticBezierTo(x:Dynamic, ?y:Float, ?controlX:Float, ?controlY:Float):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#draw
     * @since 3.0.0
     *
     * @generic {Phaser.GameObjects.Graphics} G - [out,$return]
     *
     * @param {Phaser.GameObjects.Graphics} graphics - [description]
     * @param {integer} [pointsTotal=32] - [description]
     *
     * @return {Phaser.GameObjects.Graphics} [description]
     */
    public function draw(graphics:phaser.gameobjects.Graphics, ?pointsTotal:Int):phaser.gameobjects.Graphics;
    /**
     * Creates an ellipse curve positioned at the previous end point, using the given parameters.
     *
     * @method Phaser.Curves.Path#ellipseTo
     * @since 3.0.0
     *
     * @param {number} xRadius - [description]
     * @param {number} yRadius - [description]
     * @param {number} startAngle - [description]
     * @param {number} endAngle - [description]
     * @param {boolean} clockwise - [description]
     * @param {number} rotation - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function ellipseTo(xRadius:Float, yRadius:Float, startAngle:Float, endAngle:Float, clockwise:Bool, rotation:Float):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#fromJSON
     * @since 3.0.0
     *
     * @param {object} data - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function fromJSON(data:Dynamic):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getBounds
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} [out] - [description]
     * @param {integer} [accuracy=16] - [description]
     *
     * @return {Phaser.Geom.Rectangle} [description]
     */
    public function getBounds(?out:phaser.geom.Rectangle, ?accuracy:Int):phaser.geom.Rectangle;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getCurveLengths
     * @since 3.0.0
     *
     * @return {number[]} [description]
     */
    public function getCurveLengths():Array<Float>;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getEndPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {Phaser.Math.Vector2} [description]
     */
    public function getEndPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getLength
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getLength():Float;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} t - [description]
     * @param {Phaser.Math.Vector2} [out] - [description]
     *
     * @return {?Phaser.Math.Vector2} [description]
     */
    public function getPoint(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getPoints
     * @since 3.0.0
     *
     * @param {integer} [divisions=12] - The number of points to divide the path in to.
     *
     * @return {Phaser.Math.Vector2[]} An array of Vector2 objects that containing the points along the Path.
     */
    public function getPoints(?divisions:Int):Array<phaser.math.Vector2>;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - `Vector2` instance that should be used for storing the result. If `undefined` a new `Vector2` will be created.
     *
     * @return {Phaser.Math.Vector2} [description]
     */
    public function getRandomPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getSpacedPoints
     * @since 3.0.0
     *
     * @param {integer} [divisions=40] - [description]
     *
     * @return {Phaser.Math.Vector2[]} [description]
     */
    public function getSpacedPoints(?divisions:Int):Array<phaser.math.Vector2>;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#getStartPoint
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
     * @method Phaser.Curves.Path#lineTo
     * @since 3.0.0
     *
     * @param {(number|Phaser.Math.Vector2)} x - [description]
     * @param {number} [y] - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function lineTo(x:Dynamic, ?y:Float):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#splineTo
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector2[]} points - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function splineTo(points:Array<phaser.math.Vector2>):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#moveTo
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     *
     * @return {Phaser.Curves.Path} [description]
     */
    public function moveTo(x:Float, y:Float):phaser.curves.Path;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#toJSON
     * @since 3.0.0
     *
     * @return {JSONPath} [description]
     */
    public function toJSON():JSONPath;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#updateArcLengths
     * @since 3.0.0
     */
    public function updateArcLengths():Void;
    /**
     * [description]
     *
     * @method Phaser.Curves.Path#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
