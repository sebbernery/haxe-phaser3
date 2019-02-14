package phaser.physics.arcade.components;

/**
 * Provides methods used for setting the acceleration properties of an Arcade Physics Body.
 *
 * @name Phaser.Physics.Arcade.Components.Acceleration
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Acceleration")
extern class Acceleration {
    public function new();
    /**
     * Sets the body's horizontal and vertical acceleration. If the vertical acceleration value is not provided, the vertical acceleration is set to the same value as the horizontal acceleration.
     *
     * @method Phaser.Physics.Arcade.Components.Acceleration#setAcceleration
     * @since 3.0.0
     *
     * @param {number} x - The horizontal acceleration
     * @param {number} [y=x] - The vertical acceleration
     *
     * @return {this} This Game Object.
     */
    public function setAcceleration(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the body's horizontal acceleration.
     *
     * @method Phaser.Physics.Arcade.Components.Acceleration#setAccelerationX
     * @since 3.0.0
     *
     * @param {number} value - The horizontal acceleration
     *
     * @return {this} This Game Object.
     */
    public function setAccelerationX(value:Float):Dynamic;
    /**
     * Sets the body's vertical acceleration.
     *
     * @method Phaser.Physics.Arcade.Components.Acceleration#setAccelerationY
     * @since 3.0.0
     *
     * @param {number} value - The vertical acceleration
     *
     * @return {this} This Game Object.
     */
    public function setAccelerationY(value:Float):Dynamic;
}
