package phaser.gameobjects;

/**
 * @classdesc
 * A 2D point light.
 *
 * These are typically created by a {@link Phaser.GameObjects.LightsManager}, available from within a scene via `this.lights`.
 *
 * Any Game Objects using the Light2D pipeline will then be affected by these Lights.
 *
 * They can also simply be used to represent a point light for your own purposes.
 *
 * @class Light
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
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
extern class Light {
    public function new(x:Float, y:Float, radius:Float, r:Float, g:Float, b:Float, intensity:Float);
    /**
     * The horizontal position of the light.
     *
     * @name Phaser.GameObjects.Light#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The vertical position of the light.
     *
     * @name Phaser.GameObjects.Light#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The radius of the light.
     *
     * @name Phaser.GameObjects.Light#radius
     * @type {number}
     * @since 3.0.0
     */
    public var radius:Float;
    /**
     * The red color of the light. A value between 0 and 1.
     *
     * @name Phaser.GameObjects.Light#r
     * @type {number}
     * @since 3.0.0
     */
    public var r:Float;
    /**
     * The green color of the light. A value between 0 and 1.
     *
     * @name Phaser.GameObjects.Light#g
     * @type {number}
     * @since 3.0.0
     */
    public var g:Float;
    /**
     * The blue color of the light. A value between 0 and 1.
     *
     * @name Phaser.GameObjects.Light#b
     * @type {number}
     * @since 3.0.0
     */
    public var b:Float;
    /**
     * The intensity of the light.
     *
     * @name Phaser.GameObjects.Light#intensity
     * @type {number}
     * @since 3.0.0
     */
    public var intensity:Float;
    /**
     * The horizontal scroll factor of the light.
     *
     * @name Phaser.GameObjects.Light#scrollFactorX
     * @type {number}
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of the light.
     *
     * @name Phaser.GameObjects.Light#scrollFactorY
     * @type {number}
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Set the properties of the light.
     *
     * Sets both horizontal and vertical scroll factor to 1. Use {@link Phaser.GameObjects.Light#setScrollFactor} to set
     * the scroll factor.
     *
     * @method Phaser.GameObjects.Light#set
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of the light.
     * @param {number} y - The vertical position of the light.
     * @param {number} radius - The radius of the light.
     * @param {number} r - The red color. A value between 0 and 1.
     * @param {number} g - The green color. A value between 0 and 1.
     * @param {number} b - The blue color. A value between 0 and 1.
     * @param {number} intensity - The intensity of the light.
     *
     * @return {Phaser.GameObjects.Light} This Light object.
     */
    public function set(x:Float, y:Float, radius:Float, r:Float, g:Float, b:Float, intensity:Float):phaser.gameobjects.Light;
    /**
     * Set the scroll factor of the light.
     *
     * @method Phaser.GameObjects.Light#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of the light.
     * @param {number} y - The vertical scroll factor of the light.
     *
     * @return {Phaser.GameObjects.Light} This Light object.
     */
    public function setScrollFactor(x:Float, y:Float):phaser.gameobjects.Light;
    /**
     * Set the color of the light from a single integer RGB value.
     *
     * @method Phaser.GameObjects.Light#setColor
     * @since 3.0.0
     *
     * @param {number} rgb - The integer RGB color of the light.
     *
     * @return {Phaser.GameObjects.Light} This Light object.
     */
    public function setColor(rgb:Float):phaser.gameobjects.Light;
    /**
     * Set the intensity of the light.
     *
     * @method Phaser.GameObjects.Light#setIntensity
     * @since 3.0.0
     *
     * @param {number} intensity - The intensity of the light.
     *
     * @return {Phaser.GameObjects.Light} This Light object.
     */
    public function setIntensity(intensity:Float):phaser.gameobjects.Light;
    /**
     * Set the position of the light.
     *
     * @method Phaser.GameObjects.Light#setPosition
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of the light.
     * @param {number} y - The vertical position of the light.
     *
     * @return {Phaser.GameObjects.Light} This Light object.
     */
    public function setPosition(x:Float, y:Float):phaser.gameobjects.Light;
    /**
     * Set the radius of the light.
     *
     * @method Phaser.GameObjects.Light#setRadius
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the light.
     *
     * @return {Phaser.GameObjects.Light} This Light object.
     */
    public function setRadius(radius:Float):phaser.gameobjects.Light;
}
