package phaser.gameobjects;

/**
 * @classdesc
 * The IsoBox Shape is a Game Object that can be added to a Scene, Group or Container. You can
 * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
 * it for input or physics. It provides a quick and easy way for you to render this shape in your
 * game without using a texture, while still taking advantage of being fully batched in WebGL.
 *
 * This shape supports only fill colors and cannot be stroked.
 *
 * An IsoBox is an 'isometric' rectangle. Each face of it has a different fill color. You can set
 * the color of the top, left and right faces of the rectangle respectively. You can also choose
 * which of the faces are rendered via the `showTop`, `showLeft` and `showRight` properties.
 *
 * You cannot view an IsoBox from under-neath, however you can change the 'angle' by setting
 * the `projection` property.
 *
 * @class IsoBox
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [size=48] - The width of the iso box in pixels. The left and right faces will be exactly half this value.
 * @param {number} [height=32] - The height of the iso box. The left and right faces will be this tall. The overall height of the isobox will be this value plus half the `size` value.
 * @param {number} [fillTop=0xeeeeee] - The fill color of the top face of the iso box.
 * @param {number} [fillLeft=0x999999] - The fill color of the left face of the iso box.
 * @param {number} [fillRight=0xcccccc] - The fill color of the right face of the iso box.
 */
@:native("Phaser.GameObjects.IsoBox")
extern class IsoBox extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?size:Float, ?height:Float, ?fillTop:Float, ?fillLeft:Float, ?fillRight:Float);
    /**
     * The projection level of the iso box. Change this to change the 'angle' at which you are looking at the box.
     *
     * @name Phaser.GameObjects.IsoBox#projection
     * @type {integer}
     * @default 4
     * @since 3.13.0
     */
    public var projection:Int;
    /**
     * The color used to fill in the top of the iso box.
     *
     * @name Phaser.GameObjects.IsoBox#fillTop
     * @type {number}
     * @since 3.13.0
     */
    public var fillTop:Float;
    /**
     * The color used to fill in the left-facing side of the iso box.
     *
     * @name Phaser.GameObjects.IsoBox#fillLeft
     * @type {number}
     * @since 3.13.0
     */
    public var fillLeft:Float;
    /**
     * The color used to fill in the right-facing side of the iso box.
     *
     * @name Phaser.GameObjects.IsoBox#fillRight
     * @type {number}
     * @since 3.13.0
     */
    public var fillRight:Float;
    /**
     * Controls if the top-face of the iso box be rendered.
     *
     * @name Phaser.GameObjects.IsoBox#showTop
     * @type {boolean}
     * @default true
     * @since 3.13.0
     */
    public var showTop:Bool;
    /**
     * Controls if the left-face of the iso box be rendered.
     *
     * @name Phaser.GameObjects.IsoBox#showLeft
     * @type {boolean}
     * @default true
     * @since 3.13.0
     */
    public var showLeft:Bool;
    /**
     * Controls if the right-face of the iso box be rendered.
     *
     * @name Phaser.GameObjects.IsoBox#showRight
     * @type {boolean}
     * @default true
     * @since 3.13.0
     */
    public var showRight:Bool;
    /**
     * Sets the projection level of the iso box. Change this to change the 'angle' at which you are looking at the box.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.IsoBox#setProjection
     * @since 3.13.0
     *
     * @param {integer} value - The value to set the projection to.
     *
     * @return {this} This Game Object instance.
     */
    public function setProjection(value:Int):Dynamic;
    /**
     * Sets which faces of the iso box will be rendered.
     * This call can be chained.
     *
     * @method Phaser.GameObjects.IsoBox#setFaces
     * @since 3.13.0
     *
     * @param {boolean} [showTop=true] - Show the top-face of the iso box.
     * @param {boolean} [showLeft=true] - Show the left-face of the iso box.
     * @param {boolean} [showRight=true] - Show the right-face of the iso box.
     *
     * @return {this} This Game Object instance.
     */
    public function setFaces(?showTop:Bool, ?showLeft:Bool, ?showRight:Bool):Dynamic;
}
