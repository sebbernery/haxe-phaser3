package phaser.physics.impact.components;

/**
 * The Impact Acceleration component.
 * Should be applied as a mixin.
 *
 * @namespace Phaser.Physics.Impact.Components.Acceleration
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Acceleration")
extern class Acceleration {
    public function new();
    /**
     * Sets the horizontal acceleration of this body.
     *
     * @method Phaser.Physics.Impact.Components.Acceleration#setAccelerationX
     * @since 3.0.0
     *
     * @param {number} x - The amount of acceleration to apply.
     *
     * @return {this} This Game Object.
     */
    public function setAccelerationX(x:Float):Dynamic;
    /**
     * Sets the vertical acceleration of this body.
     *
     * @method Phaser.Physics.Impact.Components.Acceleration#setAccelerationY
     * @since 3.0.0
     *
     * @param {number} y - The amount of acceleration to apply.
     *
     * @return {this} This Game Object.
     */
    public function setAccelerationY(y:Float):Dynamic;
    /**
     * Sets the horizontal and vertical acceleration of this body.
     *
     * @method Phaser.Physics.Impact.Components.Acceleration#setAcceleration
     * @since 3.0.0
     *
     * @param {number} x - The amount of horizontal acceleration to apply.
     * @param {number} y - The amount of vertical acceleration to apply.
     *
     * @return {this} This Game Object.
     */
    public function setAcceleration(x:Float, y:Float):Dynamic;
}
