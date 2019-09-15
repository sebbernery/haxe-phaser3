package phaser.physics.impact.components;

/**
 * The Impact Velocity component.
 * Should be applied as a mixin.
 *
 * @namespace Phaser.Physics.Impact.Components.Velocity
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Velocity")
extern class Velocity {
    public function new();
    /**
     * Sets the horizontal velocity of the physics body.
     *
     * @method Phaser.Physics.Impact.Components.Velocity#setVelocityX
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity value.
     *
     * @return {this} This Game Object.
     */
    public function setVelocityX(x:Float):Dynamic;
    /**
     * Sets the vertical velocity of the physics body.
     *
     * @method Phaser.Physics.Impact.Components.Velocity#setVelocityY
     * @since 3.0.0
     *
     * @param {number} y - The vertical velocity value.
     *
     * @return {this} This Game Object.
     */
    public function setVelocityY(y:Float):Dynamic;
    /**
     * Sets the horizontal and vertical velocities of the physics body.
     *
     * @method Phaser.Physics.Impact.Components.Velocity#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity value.
     * @param {number} [y=x] - The vertical velocity value. If not given, defaults to the horizontal value.
     *
     * @return {this} This Game Object.
     */
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the maximum velocity this body can travel at.
     *
     * @method Phaser.Physics.Impact.Components.Velocity#setMaxVelocity
     * @since 3.0.0
     *
     * @param {number} x - The maximum allowed horizontal velocity.
     * @param {number} [y=x] - The maximum allowed vertical velocity. If not given, defaults to the horizontal value.
     *
     * @return {this} This Game Object.
     */
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
