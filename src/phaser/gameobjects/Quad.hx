package phaser.gameobjects;

/**
 * @classdesc
 * A Quad Game Object.
 *
 * A Quad is a Mesh Game Object pre-configured with two triangles arranged into a rectangle, with a single
 * texture spread across them.
 *
 * You can manipulate the corner points of the quad via the getters and setters such as `topLeftX`, and also
 * change their alpha and color values. The quad itself can be moved by adjusting the `x` and `y` properties.
 *
 * @class Quad
 * @extends Phaser.GameObjects.Mesh
 * @memberof Phaser.GameObjects
 * @constructor
 * @webglOnly
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Quad belongs.
 * @param {number} x - The horizontal position of this Game Object in the world.
 * @param {number} y - The vertical position of this Game Object in the world.
 * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 */
@:native("Phaser.GameObjects.Quad")
extern class Quad extends phaser.gameobjects.Mesh {
    public function new(scene:phaser.Scene, x:Float, y:Float, texture:String, ?frame:Dynamic);
    /**
     * The top-left x vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topLeftX
     * @type {number}
     * @since 3.0.0
     */
    public var topLeftX:Float;
    /**
     * The top-left y vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topLeftY
     * @type {number}
     * @since 3.0.0
     */
    public var topLeftY:Float;
    /**
     * The top-right x vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topRightX
     * @type {number}
     * @since 3.0.0
     */
    public var topRightX:Float;
    /**
     * The top-right y vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topRightY
     * @type {number}
     * @since 3.0.0
     */
    public var topRightY:Float;
    /**
     * The bottom-left x vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomLeftX
     * @type {number}
     * @since 3.0.0
     */
    public var bottomLeftX:Float;
    /**
     * The bottom-left y vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomLeftY
     * @type {number}
     * @since 3.0.0
     */
    public var bottomLeftY:Float;
    /**
     * The bottom-right x vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomRightX
     * @type {number}
     * @since 3.0.0
     */
    public var bottomRightX:Float;
    /**
     * The bottom-right y vertex of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomRightY
     * @type {number}
     * @since 3.0.0
     */
    public var bottomRightY:Float;
    /**
     * The top-left alpha value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topLeftAlpha
     * @type {number}
     * @since 3.0.0
     */
    public var topLeftAlpha:Float;
    /**
     * The top-right alpha value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topRightAlpha
     * @type {number}
     * @since 3.0.0
     */
    public var topRightAlpha:Float;
    /**
     * The bottom-left alpha value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomLeftAlpha
     * @type {number}
     * @since 3.0.0
     */
    public var bottomLeftAlpha:Float;
    /**
     * The bottom-right alpha value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomRightAlpha
     * @type {number}
     * @since 3.0.0
     */
    public var bottomRightAlpha:Float;
    /**
     * The top-left color value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topLeftColor
     * @type {number}
     * @since 3.0.0
     */
    public var topLeftColor:Float;
    /**
     * The top-right color value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#topRightColor
     * @type {number}
     * @since 3.0.0
     */
    public var topRightColor:Float;
    /**
     * The bottom-left color value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomLeftColor
     * @type {number}
     * @since 3.0.0
     */
    public var bottomLeftColor:Float;
    /**
     * The bottom-right color value of this Quad.
     *
     * @name Phaser.GameObjects.Quad#bottomRightColor
     * @type {number}
     * @since 3.0.0
     */
    public var bottomRightColor:Float;
    /**
     * Sets the top-left vertex position of this Quad.
     *
     * @method Phaser.GameObjects.Quad#setTopLeft
     * @since 3.0.0
     *
     * @param {number} x - The horizontal coordinate of the vertex.
     * @param {number} y - The vertical coordinate of the vertex.
     *
     * @return {this} This Game Object.
     */
    public function setTopLeft(x:Float, y:Float):Dynamic;
    /**
     * Sets the top-right vertex position of this Quad.
     *
     * @method Phaser.GameObjects.Quad#setTopRight
     * @since 3.0.0
     *
     * @param {number} x - The horizontal coordinate of the vertex.
     * @param {number} y - The vertical coordinate of the vertex.
     *
     * @return {this} This Game Object.
     */
    public function setTopRight(x:Float, y:Float):Dynamic;
    /**
     * Sets the bottom-left vertex position of this Quad.
     *
     * @method Phaser.GameObjects.Quad#setBottomLeft
     * @since 3.0.0
     *
     * @param {number} x - The horizontal coordinate of the vertex.
     * @param {number} y - The vertical coordinate of the vertex.
     *
     * @return {this} This Game Object.
     */
    public function setBottomLeft(x:Float, y:Float):Dynamic;
    /**
     * Sets the bottom-right vertex position of this Quad.
     *
     * @method Phaser.GameObjects.Quad#setBottomRight
     * @since 3.0.0
     *
     * @param {number} x - The horizontal coordinate of the vertex.
     * @param {number} y - The vertical coordinate of the vertex.
     *
     * @return {this} This Game Object.
     */
    public function setBottomRight(x:Float, y:Float):Dynamic;
    /**
     * Resets the positions of the four corner vertices of this Quad.
     *
     * @method Phaser.GameObjects.Quad#resetPosition
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function resetPosition():Dynamic;
    /**
     * Resets the alpha values used by this Quad back to 1.
     *
     * @method Phaser.GameObjects.Quad#resetAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function resetAlpha():Dynamic;
    /**
     * Resets the color values used by this Quad back to 0xffffff.
     *
     * @method Phaser.GameObjects.Quad#resetColors
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function resetColors():Dynamic;
    /**
     * Resets the position, alpha and color values used by this Quad.
     *
     * @method Phaser.GameObjects.Quad#reset
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function reset():Dynamic;
}
