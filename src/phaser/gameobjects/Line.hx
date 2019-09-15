package phaser.gameobjects;

/**
 * @classdesc
 * The Line Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports only stroke colors and cannot be filled.
 *
 * A Line Shape allows you to draw a line between two points in your game. You can control the
 * stroke color and thickness of the line. In WebGL only you can also specify a different
 * thickness for the start and end of the line, allowing you to render lines that taper-off.
 *
 * If you need to draw multiple lines in a sequence you may wish to use the Polygon Shape instead.
 *
 * Be aware that as with all Game Objects the default origin is 0.5. If you need to draw a Line
 * between two points and want the x1/y1 values to match the x/y values, then set the origin to 0.
 *
 * @class Line
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [x1=0] - The horizontal position of the start of the line.
 * @param {number} [y1=0] - The vertical position of the start of the line.
 * @param {number} [x2=128] - The horizontal position of the end of the line.
 * @param {number} [y2=0] - The vertical position of the end of the line.
 * @param {number} [strokeColor] - The color the line will be drawn in, i.e. 0xff0000 for red.
 * @param {number} [strokeAlpha] - The alpha the line will be drawn in. You can also set the alpha of the overall Shape using its `alpha` property.
 */
@:native("Phaser.GameObjects.Line")
extern class Line extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?strokeColor:Float, ?strokeAlpha:Float);
    /**
     * Sets the width of the line.
     *
     * When using the WebGL renderer you can have different start and end widths.
     * When using the Canvas renderer only the `startWidth` value is used. The `endWidth` is ignored.
     *
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Line#setLineWidth
     * @since 3.13.0
     *
     * @param {number} startWidth - The start width of the line.
     * @param {number} [endWidth] - The end width of the line. Only used in WebGL.
     *
     * @return {this} This Game Object instance.
     */
    public function setLineWidth(startWidth:Float, ?endWidth:Float):Dynamic;
    /**
     * Sets the start and end coordinates of this Line.
     *
     * @method Phaser.GameObjects.Line#setTo
     * @since 3.13.0
     *
     * @param {number} [x1=0] - The horizontal position of the start of the line.
     * @param {number} [y1=0] - The vertical position of the start of the line.
     * @param {number} [x2=0] - The horizontal position of the end of the line.
     * @param {number} [y2=0] - The vertical position of the end of the line.
     *
     * @return {this} This Line object.
     */
    public function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float):Dynamic;
}
