package phaser.gameobjects;

/**
 * @classdesc
 * The Curve Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports both fill and stroke colors.
 *
 * To render a Curve Shape you must first create a `Phaser.Curves.Curve` object, then pass it to
 * the Curve Shape in the constructor.
 *
 * The Curve shape also has a `smoothness` property and corresponding `setSmoothness` method.
 * This allows you to control how smooth the shape renders in WebGL, by controlling the number of iterations
 * that take place during construction. Increase and decrease the default value for smoother, or more
 * jagged, shapes.
 *
 * @class Curve
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {Phaser.Curves.Curve} [curve] - The Curve object to use to create the Shape.
 * @param {number} [fillColor] - The color the curve will be filled with, i.e. 0xff0000 for red.
 * @param {number} [fillAlpha] - The alpha the curve will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
 */
@:native("Phaser.GameObjects.Curve")
extern class Curve extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?curve:phaser.curves.Curve, ?fillColor:Float, ?fillAlpha:Float);
    /**
     * The smoothness of the curve. The number of points used when rendering it.
     * Increase this value for smoother curves, at the cost of more polygons being rendered.
     *
     * @name Phaser.GameObjects.Curve#smoothness
     * @type {integer}
     * @default 32
     * @since 3.13.0
     */
    public var smoothness:Int;
    /**
     * Sets the smoothness of the curve. The number of points used when rendering it.
     * Increase this value for smoother curves, at the cost of more polygons being rendered.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Curve#setSmoothness
     * @since 3.13.0
     *
     * @param {integer} value - The value to set the smoothness to.
     *
     * @return {this} This Game Object instance.
     */
    public function setSmoothness(value:Int):Dynamic;
}
