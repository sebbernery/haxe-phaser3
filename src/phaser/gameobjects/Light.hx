package phaser.gameobjects;

/**
 * @classdesc
 * A 2D point light.
 *
 * These are typically created by a {@link Phaser.GameObjects.LightsManager}, available from within a scene via `this.lights`.
 *
 * Any Game Objects using the Light2D pipeline will then be affected by these Lights as long as they have a normal map.
 *
 * They can also simply be used to represent a point light for your own purposes.
 *
 * @class Light
 * @extends Phaser.Geom.Circle
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {number} x - The horizontal position of the light.
 * @param {number} y - The vertical position of the light.
 * @param {number} radius - The radius of the light.
 * @param {number} r - The red color of the light. A value between 0 and 1.
 * @param {number} g - The green color of the light. A value between 0 and 1.
 * @param {number} b - The blue color of the light. A value between 0 and 1.
 * @param {number} intensity - The intensity of the light.
 */
@:native("Phaser.GameObjects.Light")
extern class Light extends phaser.geom.Circle {
    public function new(x:Float, y:Float, radius:Float, r:Float, g:Float, b:Float, intensity:Float);
    /**
     * The color of the light.
     *
     * @name Phaser.GameObjects.Light#color
     * @type {Phaser.Display.RGB}
     * @since 3.50.0
     */
    public var color:phaser.display.RGB;
    /**
     * The intensity of the light.
     *
     * @name Phaser.GameObjects.Light#intensity
     * @type {number}
     * @since 3.50.0
     */
    public var intensity:Float;
    /**
     * Compares the renderMask with the renderFlags to see if this Game Object will render or not.
     * Also checks the Game Object against the given Cameras exclusion list.
     *
     * @method Phaser.GameObjects.Light#willRender
     * @since 3.50.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to check against this Game Object.
     *
     * @return {boolean} True if the Game Object should be rendered, otherwise false.
     */
    public function willRender(camera:phaser.cameras.scene2d.Camera):Bool;
    /**
     * Set the color of the light from a single integer RGB value.
     *
     * @method Phaser.GameObjects.Light#setColor
     * @since 3.0.0
     *
     * @param {number} rgb - The integer RGB color of the light.
     *
     * @return {this} This Light object.
     */
    public function setColor(rgb:Float):Dynamic;
    /**
     * Set the intensity of the light.
     *
     * @method Phaser.GameObjects.Light#setIntensity
     * @since 3.0.0
     *
     * @param {number} intensity - The intensity of the light.
     *
     * @return {this} This Light object.
     */
    public function setIntensity(intensity:Float):Dynamic;
    /**
     * Set the radius of the light.
     *
     * @method Phaser.GameObjects.Light#setRadius
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the light.
     *
     * @return {this} This Light object.
     */
    public function setRadius(radius:Float):Dynamic;
    /**
     * The horizontal scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Sets the scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @method Phaser.GameObjects.Components.ScrollFactor#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of this Game Object.
     * @param {number} [y=x] - The vertical scroll factor of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
    /**
     * The visible state of the Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @name Phaser.GameObjects.Components.Visible#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Sets the visibility of this Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @method Phaser.GameObjects.Components.Visible#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setVisible(value:Bool):Dynamic;
}
