package phaser.physics.arcade.components;

/**
 * Sets the friction (e.g. the amount of velocity reduced over time) of the physics body when moving horizontally in the X axis. The higher than friction, the faster the body will slow down once force stops being applied to it.
 *
 * @name Phaser.Physics.Arcade.Components.Friction
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Friction")
extern class Friction {
    public function new();
    /**
     * Sets the friction (e.g. the amount of velocity reduced over time) of the physics body when moving.
     * The higher than friction, the faster the body will slow down once force stops being applied to it.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFriction
     * @since 3.0.0
     *
     * @param {number} x - The amount of horizontal friction to apply.
     * @param {number} [y=x] - The amount of vertical friction to apply.
     *
     * @return {this} This Game Object.
     */
    public function setFriction(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the friction (e.g. the amount of velocity reduced over time) of the physics body when moving horizontally in the X axis.
     * The higher than friction, the faster the body will slow down once force stops being applied to it.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFrictionX
     * @since 3.0.0
     *
     * @param {number} x - The amount of friction to apply.
     *
     * @return {this} This Game Object.
     */
    public function setFrictionX(x:Float):Dynamic;
    /**
     * Sets the friction (e.g. the amount of velocity reduced over time) of the physics body when moving vertically in the Y axis.
     * The higher than friction, the faster the body will slow down once force stops being applied to it.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFrictionY
     * @since 3.0.0
     *
     * @param {number} x - The amount of friction to apply.
     *
     * @return {this} This Game Object.
     */
    public function setFrictionY(x:Float):Dynamic;
}
