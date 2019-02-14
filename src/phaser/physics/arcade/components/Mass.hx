package phaser.physics.arcade.components;

/**
 * Provides methods used for setting the mass properties of an Arcade Physics Body.
 *
 * @name Phaser.Physics.Arcade.Components.Mass
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Mass")
extern class Mass {
    public function new();
    /**
     * Sets the mass of the physics body
     *
     * @method Phaser.Physics.Arcade.Components.Mass#setMass
     * @since 3.0.0
     *
     * @param {number} value - New value for the mass of the body.
     *
     * @return {this} This Game Object.
     */
    public function setMass(value:Float):Dynamic;
}
