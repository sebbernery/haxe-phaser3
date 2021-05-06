package phaser.gameobjects;

/**
 * @classdesc
 * The Ellipse Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports both fill and stroke colors.
 *
 * When it renders it displays an ellipse shape. You can control the width and height of the ellipse.
 * If the width and height match it will render as a circle. If the width is less than the height,
 * it will look more like an egg shape.
 *
 * The Ellipse shape also has a `smoothness` property and corresponding `setSmoothness` method.
 * This allows you to control how smooth the shape renders in WebGL, by controlling the number of iterations
 * that take place during construction. Increase and decrease the default value for smoother, or more
 * jagged, shapes.
 *
 * @class Ellipse
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [width=128] - The width of the ellipse. An ellipse with equal width and height renders as a circle.
 * @param {number} [height=128] - The height of the ellipse. An ellipse with equal width and height renders as a circle.
 * @param {number} [fillColor] - The color the ellipse will be filled with, i.e. 0xff0000 for red.
 * @param {number} [fillAlpha] - The alpha the ellipse will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
 */
@:native("Phaser.GameObjects.Ellipse")
extern class Ellipse extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?fillColor:Float, ?fillAlpha:Float);
    /**
     * The smoothness of the ellipse. The number of points used when rendering it.
     * Increase this value for a smoother ellipse, at the cost of more polygons being rendered.
     *
     * @name Phaser.GameObjects.Ellipse#smoothness
     * @type {number}
     * @default 64
     * @since 3.13.0
     */
    public var smoothness:Float;
    /**
     * Sets the smoothness of the ellipse. The number of points used when rendering it.
     * Increase this value for a smoother ellipse, at the cost of more polygons being rendered.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Ellipse#setSmoothness
     * @since 3.13.0
     *
     * @param {number} value - The value to set the smoothness to.
     *
     * @return {this} This Game Object instance.
     */
    public function setSmoothness(value:Float):Dynamic;
}
