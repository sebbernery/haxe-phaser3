package phaser.physics.matter.components;

/**
 * Provides methods used for getting and setting the position, scale and rotation of a Game Object.
 *
 * @namespace Phaser.Physics.Matter.Components.Transform
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Transform")
extern class Transform {
    public function new();
    /**
     * The x position of this Game Object.
     *
     * @name Phaser.Physics.Matter.Components.Transform#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Game Object.
     *
     * @name Phaser.Physics.Matter.Components.Transform#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The horizontal scale of this Game Object.
     *
     * @name Phaser.Physics.Matter.Components.Transform#scaleX
     * @type {number}
     * @since 3.0.0
     */
    public var scaleX:Float;
    /**
     * The vertical scale of this Game Object.
     *
     * @name Phaser.Physics.Matter.Components.Transform#scaleY
     * @type {number}
     * @since 3.0.0
     */
    public var scaleY:Float;
    /**
     * Use `angle` to set or get rotation of the physics body associated to this GameObject. Unlike rotation, when using set the value can be in degrees, which will be converted to radians internally.
     *
     * @name Phaser.Physics.Matter.Components.Transform#angle
     * @type {number}
     * @since 3.0.0
     */
    public var angle:Float;
    /**
     * Use `rotation` to set or get the rotation of the physics body associated with this GameObject. The value when set must be in radians.
     *
     * @name Phaser.Physics.Matter.Components.Transform#rotation
     * @type {number}
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Sets the position of the physics body along x and y axes. Both the parameters to this function are optional and if not passed any they default to 0.
     *
     * @method Phaser.Physics.Matter.Components.Transform#setPosition
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal position of the body.
     * @param {number} [y=x] - The vertical position of the body.
     *
     * @return {this} This Game Object.
     */
    public function setPosition(?x:Float, ?y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Transform#setRotation
     * @since 3.0.0
     *
     * @param {number} [radians=0] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setRotation(?radians:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Transform#setFixedRotation
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function setFixedRotation():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Transform#setAngle
     * @since 3.0.0
     *
     * @param {number} [degrees=0] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setAngle(?degrees:Float):Dynamic;
    /**
     * Sets the scale of this Game Object.
     *
     * @method Phaser.Physics.Matter.Components.Transform#setScale
     * @since 3.0.0
     *
     * @param {number} [x=1] - The horizontal scale of this Game Object.
     * @param {number} [y=x] - The vertical scale of this Game Object. If not set it will use the x value.
     * @param {Phaser.Math.Vector2} [point] - The point (Vector2) from which scaling will occur.
     *
     * @return {this} This Game Object.
     */
    public function setScale(?x:Float, ?y:Float, ?point:phaser.math.Vector2):Dynamic;
}
