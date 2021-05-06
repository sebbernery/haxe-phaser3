package phaser.gameobjects;

/**
 * @classdesc
 * The Star Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports both fill and stroke colors.
 *
 * As the name implies, the Star shape will display a star in your game. You can control several
 * aspects of it including the number of points that constitute the star. The default is 5. If
 * you change it to 4 it will render as a diamond. If you increase them, you'll get a more spiky
 * star shape.
 *
 * You can also control the inner and outer radius, which is how 'long' each point of the star is.
 * Modify these values to create more interesting shapes.
 *
 * @class Star
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [points=5] - The number of points on the star.
 * @param {number} [innerRadius=32] - The inner radius of the star.
 * @param {number} [outerRadius=64] - The outer radius of the star.
 * @param {number} [fillColor] - The color the star will be filled with, i.e. 0xff0000 for red.
 * @param {number} [fillAlpha] - The alpha the star will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
 */
@:native("Phaser.GameObjects.Star")
extern class Star extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?points:Float, ?innerRadius:Float, ?outerRadius:Float, ?fillColor:Float, ?fillAlpha:Float);
    /**
     * The number of points that make up the Star shape.
     *
     * @name Phaser.GameObjects.Star#points
     * @type {number}
     * @default 5
     * @since 3.13.0
     */
    public var points:Float;
    /**
     * The inner radius of the Star shape.
     *
     * @name Phaser.GameObjects.Star#innerRadius
     * @type {number}
     * @default 32
     * @since 3.13.0
     */
    public var innerRadius:Float;
    /**
     * The outer radius of the Star shape.
     *
     * @name Phaser.GameObjects.Star#outerRadius
     * @type {number}
     * @default 64
     * @since 3.13.0
     */
    public var outerRadius:Float;
    /**
     * Sets the number of points that make up the Star shape.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Star#setPoints
     * @since 3.13.0
     *
     * @param {number} value - The amount of points the Star will have.
     *
     * @return {this} This Game Object instance.
     */
    public function setPoints(value:Float):Dynamic;
    /**
     * Sets the inner radius of the Star shape.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Star#setInnerRadius
     * @since 3.13.0
     *
     * @param {number} value - The amount to set the inner radius to.
     *
     * @return {this} This Game Object instance.
     */
    public function setInnerRadius(value:Float):Dynamic;
    /**
     * Sets the outer radius of the Star shape.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Star#setOuterRadius
     * @since 3.13.0
     *
     * @param {number} value - The amount to set the outer radius to.
     *
     * @return {this} This Game Object instance.
     */
    public function setOuterRadius(value:Float):Dynamic;
}
