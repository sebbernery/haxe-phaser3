package phaser.gameobjects;

/**
 * @classdesc
 * The Arc Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports both fill and stroke colors.
 *
 * When it renders it displays an arc shape. You can control the start and end angles of the arc,
 * as well as if the angles are winding clockwise or anti-clockwise. With the default settings
 * it renders as a complete circle. By changing the angles you can create other arc shapes,
 * such as half-circles.
 *
 * Arcs also have an `iterations` property and corresponding `setIterations` method. This allows
 * you to control how smooth the shape renders in WebGL, by controlling the number of iterations
 * that take place during construction.
 *
 * @class Arc
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [radius=128] - The radius of the arc.
 * @param {integer} [startAngle=0] - The start angle of the arc, in degrees.
 * @param {integer} [endAngle=360] - The end angle of the arc, in degrees.
 * @param {boolean} [anticlockwise=false] - The winding order of the start and end angles.
 * @param {number} [fillColor] - The color the arc will be filled with, i.e. 0xff0000 for red.
 * @param {number} [fillAlpha] - The alpha the arc will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
 */
@:native("Phaser.GameObjects.Arc")
extern class Arc extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?radius:Float, ?startAngle:Int, ?endAngle:Int, ?anticlockwise:Bool, ?fillColor:Float, ?fillAlpha:Float);
    /**
     * The number of iterations used when drawing the arc.
     * Increase this value for smoother arcs, at the cost of more polygons being rendered.
     * Modify this value by small amounts, such as 0.01.
     *
     * @name Phaser.GameObjects.Arc#iterations
     * @type {number}
     * @default 0.01
     * @since 3.13.0
     */
    public var iterations:Float;
    /**
     * The radius of the arc.
     *
     * @name Phaser.GameObjects.Arc#radius
     * @type {number}
     * @since 3.13.0
     */
    public var radius:Float;
    /**
     * The start angle of the arc, in degrees.
     *
     * @name Phaser.GameObjects.Arc#startAngle
     * @type {integer}
     * @since 3.13.0
     */
    public var startAngle:Int;
    /**
     * The end angle of the arc, in degrees.
     *
     * @name Phaser.GameObjects.Arc#endAngle
     * @type {integer}
     * @since 3.13.0
     */
    public var endAngle:Int;
    /**
     * The winding order of the start and end angles.
     *
     * @name Phaser.GameObjects.Arc#anticlockwise
     * @type {boolean}
     * @since 3.13.0
     */
    public var anticlockwise:Bool;
    /**
     * Sets the radius of the arc.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Arc#setRadius
     * @since 3.13.0
     *
     * @param {number} value - The value to set the radius to.
     *
     * @return {this} This Game Object instance.
     */
    public function setRadius(value:Float):Dynamic;
    /**
     * Sets the number of iterations used when drawing the arc.
     * Increase this value for smoother arcs, at the cost of more polygons being rendered.
     * Modify this value by small amounts, such as 0.01.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Arc#setIterations
     * @since 3.13.0
     *
     * @param {number} value - The value to set the iterations to.
     *
     * @return {this} This Game Object instance.
     */
    public function setIterations(value:Float):Dynamic;
    /**
     * Sets the starting angle of the arc, in degrees.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Arc#setStartAngle
     * @since 3.13.0
     *
     * @param {integer} value - The value to set the starting angle to.
     *
     * @return {this} This Game Object instance.
     */
    public function setStartAngle(value:Int):Dynamic;
    /**
     * Sets the ending angle of the arc, in degrees.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Arc#setEndAngle
     * @since 3.13.0
     *
     * @param {integer} value - The value to set the ending angle to.
     *
     * @return {this} This Game Object instance.
     */
    public function setEndAngle(value:Int):Dynamic;
}
