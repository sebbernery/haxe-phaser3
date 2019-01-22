package phaser.physics.arcade.components;

/**
 * Provides methods for setting the gravity properties of an Arcade Physics Game Object.
 * Should be applied as a mixin and not used directly.
 *
 * @name Phaser.Physics.Arcade.Components.Gravity
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Gravity")
extern class Gravity {
    public function new();
    /**
     * Set the X and Y values of the gravitational pull to act upon this Arcade Physics Game Object. Values can be positive or negative. Larger values result in a stronger effect.
     *
     * If only one value is provided, this value will be used for both the X and Y axis.
     *
     * @method Phaser.Physics.Arcade.Components.Gravity#setGravity
     * @since 3.0.0
     *
     * @param {number} x - The gravitational force to be applied to the X-axis.
     * @param {number} [y=x] - The gravitational force to be applied to the Y-axis. If this is not specified, the X value will be used.
     *
     * @return {this} This Game Object.
     */
    public function setGravity(x:Float, ?y:Float):Dynamic;
    /**
     * Set the gravitational force to be applied to the X axis. Value can be positive or negative. Larger values result in a stronger effect.
     *
     * @method Phaser.Physics.Arcade.Components.Gravity#setGravityX
     * @since 3.0.0
     *
     * @param {number} x - The gravitational force to be applied to the X-axis.
     *
     * @return {this} This Game Object.
     */
    public function setGravityX(x:Float):Dynamic;
    /**
     * Set the gravitational force to be applied to the Y axis. Value can be positive or negative. Larger values result in a stronger effect.
     *
     * @method Phaser.Physics.Arcade.Components.Gravity#setGravityY
     * @since 3.0.0
     *
     * @param {number} y - The gravitational force to be applied to the Y-axis.
     *
     * @return {this} This Game Object.
     */
    public function setGravityY(y:Float):Dynamic;
}
