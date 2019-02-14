package phaser.physics.arcade.components;

/**
 * Provides methods for modifying the velocity of an Arcade Physics body.
 *
 * Should be applied as a mixin and not used directly.
 *
 * @name Phaser.Physics.Arcade.Components.Velocity
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Velocity")
extern class Velocity {
    public function new();
    /**
     * Sets the velocity of the Body.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity of the body. Positive values move the body to the right, while negative values move it to the left.
     * @param {number} [y=x] - The vertical velocity of the body. Positive values move the body down, while negative values move it up.
     *
     * @return {this} This Game Object.
     */
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the horizontal component of the body's velocity.
     *
     * Positive values move the body to the right, while negative values move it to the left.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityX
     * @since 3.0.0
     *
     * @param {number} x - The new horizontal velocity.
     *
     * @return {this} This Game Object.
     */
    public function setVelocityX(x:Float):Dynamic;
    /**
     * Sets the vertical component of the body's velocity.
     *
     * Positive values move the body down, while negative values move it up.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityY
     * @since 3.0.0
     *
     * @param {number} y - The new vertical velocity of the body.
     *
     * @return {this} This Game Object.
     */
    public function setVelocityY(y:Float):Dynamic;
    /**
     * Sets the maximum velocity of the body.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setMaxVelocity
     * @since 3.0.0
     *
     * @param {number} x - The new maximum horizontal velocity.
     * @param {number} [y=x] - The new maximum vertical velocity.
     *
     * @return {this} This Game Object.
     */
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
