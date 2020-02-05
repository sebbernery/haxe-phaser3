package phaser.physics.arcade.components;

/**
 * Provides methods used for setting the bounce properties of an Arcade Physics Body.
 *
 * @namespace Phaser.Physics.Arcade.Components.Bounce
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Bounce")
extern class Bounce {
    public function new();
    /**
     * Sets the bounce values of this body.
     *
     * Bounce is the amount of restitution, or elasticity, the body has when it collides with another object.
     * A value of 1 means that it will retain its full velocity after the rebound. A value of 0 means it will not rebound at all.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounce
     * @since 3.0.0
     *
     * @param {number} x - The amount of horizontal bounce to apply on collision. A float, typically between 0 and 1.
     * @param {number} [y=x] - The amount of vertical bounce to apply on collision. A float, typically between 0 and 1.
     *
     * @return {this} This Game Object.
     */
    public function setBounce(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the horizontal bounce value for this body.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceX
     * @since 3.0.0
     *
     * @param {number} value - The amount of horizontal bounce to apply on collision. A float, typically between 0 and 1.
     *
     * @return {this} This Game Object.
     */
    public function setBounceX(value:Float):Dynamic;
    /**
     * Sets the vertical bounce value for this body.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceY
     * @since 3.0.0
     *
     * @param {number} value - The amount of vertical bounce to apply on collision. A float, typically between 0 and 1.
     *
     * @return {this} This Game Object.
     */
    public function setBounceY(value:Float):Dynamic;
    /**
     * Sets whether this Body collides with the world boundary.
     *
     * Optionally also sets the World Bounce values. If the `Body.worldBounce` is null, it's set to a new Phaser.Math.Vector2 first.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setCollideWorldBounds
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - `true` if this body should collide with the world bounds, otherwise `false`.
     * @param {number} [bounceX] - If given this will be replace the `worldBounce.x` value.
     * @param {number} [bounceY] - If given this will be replace the `worldBounce.y` value.
     *
     * @return {this} This Game Object.
     */
    public function setCollideWorldBounds(?value:Bool, ?bounceX:Float, ?bounceY:Float):Dynamic;
}
