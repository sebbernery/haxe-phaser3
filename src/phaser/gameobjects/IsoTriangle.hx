package phaser.gameobjects;

/**
 * @classdesc
 * The IsoTriangle Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports only fill colors and cannot be stroked.
 *
 * An IsoTriangle is an 'isometric' triangle. Think of it like a pyramid. Each face has a different
 * fill color. You can set the color of the top, left and right faces of the triangle respectively
 * You can also choose which of the faces are rendered via the `showTop`, `showLeft` and `showRight` properties.
 *
 * You cannot view an IsoTriangle from under-neath, however you can change the 'angle' by setting
 * the `projection` property. The `reversed` property controls if the IsoTriangle is rendered upside
 * down or not.
 *
 * @class IsoTriangle
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [size=48] - The width of the iso triangle in pixels. The left and right faces will be exactly half this value.
 * @param {number} [height=32] - The height of the iso triangle. The left and right faces will be this tall. The overall height of the iso triangle will be this value plus half the `size` value.
 * @param {boolean} [reversed=false] - Is the iso triangle upside down?
 * @param {number} [fillTop=0xeeeeee] - The fill color of the top face of the iso triangle.
 * @param {number} [fillLeft=0x999999] - The fill color of the left face of the iso triangle.
 * @param {number} [fillRight=0xcccccc] - The fill color of the right face of the iso triangle.
 */
@:native("Phaser.GameObjects.IsoTriangle")
extern class IsoTriangle extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?size:Float, ?height:Float, ?reversed:Bool, ?fillTop:Float, ?fillLeft:Float, ?fillRight:Float);
    /**
     * The projection level of the iso box. Change this to change the 'angle' at which you are looking at the box.
     *
     * @name Phaser.GameObjects.IsoTriangle#projection
     * @type {number}
     * @default 4
     * @since 3.13.0
     */
    public var projection:Float;
    /**
     * The color used to fill in the top of the iso triangle. This is only used if the triangle is reversed.
     *
     * @name Phaser.GameObjects.IsoTriangle#fillTop
     * @type {number}
     * @since 3.13.0
     */
    public var fillTop:Float;
    /**
     * The color used to fill in the left-facing side of the iso triangle.
     *
     * @name Phaser.GameObjects.IsoTriangle#fillLeft
     * @type {number}
     * @since 3.13.0
     */
    public var fillLeft:Float;
    /**
     * The color used to fill in the right-facing side of the iso triangle.
     *
     * @name Phaser.GameObjects.IsoTriangle#fillRight
     * @type {number}
     * @since 3.13.0
     */
    public var fillRight:Float;
    /**
     * Controls if the top-face of the iso triangle be rendered.
     *
     * @name Phaser.GameObjects.IsoTriangle#showTop
     * @type {boolean}
     * @default true
     * @since 3.13.0
     */
    public var showTop:Bool;
    /**
     * Controls if the left-face of the iso triangle be rendered.
     *
     * @name Phaser.GameObjects.IsoTriangle#showLeft
     * @type {boolean}
     * @default true
     * @since 3.13.0
     */
    public var showLeft:Bool;
    /**
     * Controls if the right-face of the iso triangle be rendered.
     *
     * @name Phaser.GameObjects.IsoTriangle#showRight
     * @type {boolean}
     * @default true
     * @since 3.13.0
     */
    public var showRight:Bool;
    /**
     * Sets if the iso triangle will be rendered upside down or not.
     *
     * @name Phaser.GameObjects.IsoTriangle#isReversed
     * @type {boolean}
     * @default false
     * @since 3.13.0
     */
    public var isReversed:Bool;
    /**
     * Sets the projection level of the iso triangle. Change this to change the 'angle' at which you are looking at the pyramid.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.IsoTriangle#setProjection
     * @since 3.13.0
     *
     * @param {number} value - The value to set the projection to.
     *
     * @return {this} This Game Object instance.
     */
    public function setProjection(value:Float):Dynamic;
    /**
     * Sets if the iso triangle will be rendered upside down or not.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.IsoTriangle#setReversed
     * @since 3.13.0
     *
     * @param {boolean} reversed - Sets if the iso triangle will be rendered upside down or not.
     *
     * @return {this} This Game Object instance.
     */
    public function setReversed(reversed:Bool):Dynamic;
    /**
     * Sets which faces of the iso triangle will be rendered.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.IsoTriangle#setFaces
     * @since 3.13.0
     *
     * @param {boolean} [showTop=true] - Show the top-face of the iso triangle (only if `reversed` is true)
     * @param {boolean} [showLeft=true] - Show the left-face of the iso triangle.
     * @param {boolean} [showRight=true] - Show the right-face of the iso triangle.
     *
     * @return {this} This Game Object instance.
     */
    public function setFaces(?showTop:Bool, ?showLeft:Bool, ?showRight:Bool):Dynamic;
}
