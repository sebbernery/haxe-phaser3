package phaser.gameobjects;

/**
 * @classdesc
 * The Triangle Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports both fill and stroke colors.
 *
 * The Triangle consists of 3 lines, joining up to form a triangular shape. You can control the
 * position of each point of these lines. The triangle is always closed and cannot have an open
 * face. If you require that, consider using a Polygon instead.
 *
 * @class Triangle
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [x1=0] - The horizontal position of the first point in the triangle.
 * @param {number} [y1=128] - The vertical position of the first point in the triangle.
 * @param {number} [x2=64] - The horizontal position of the second point in the triangle.
 * @param {number} [y2=0] - The vertical position of the second point in the triangle.
 * @param {number} [x3=128] - The horizontal position of the third point in the triangle.
 * @param {number} [y3=128] - The vertical position of the third point in the triangle.
 * @param {number} [fillColor] - The color the triangle will be filled with, i.e. 0xff0000 for red.
 * @param {number} [fillAlpha] - The alpha the triangle will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
 */
@:native("Phaser.GameObjects.Triangle")
extern class Triangle extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float, ?fillColor:Float, ?fillAlpha:Float);
    /**
     * Sets the data for the lines that make up this Triangle shape.
     *
     * @method Phaser.GameObjects.Triangle#setTo
     * @since 3.13.0
     *
     * @param {number} [x1=0] - The horizontal position of the first point in the triangle.
     * @param {number} [y1=0] - The vertical position of the first point in the triangle.
     * @param {number} [x2=0] - The horizontal position of the second point in the triangle.
     * @param {number} [y2=0] - The vertical position of the second point in the triangle.
     * @param {number} [x3=0] - The horizontal position of the third point in the triangle.
     * @param {number} [y3=0] - The vertical position of the third point in the triangle.
     *
     * @return {this} This Game Object instance.
     */
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float):Dynamic;
}
