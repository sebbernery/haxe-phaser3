package phaser.physics.arcade.components;

/**
 * Provides methods used for setting the immovable properties of an Arcade Physics Body.
 *
 * @name Phaser.Physics.Arcade.Components.Immovable
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Immovable")
extern class Immovable {
    public function new();
    /**
     * Sets Whether this Body can be moved by collisions with another Body.
     *
     * @method Phaser.Physics.Arcade.Components.Immovable#setImmovable
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - Sets if this body can be moved by collisions with another Body.
     *
     * @return {this} This Game Object.
     */
    public function setImmovable(?value:Bool):Dynamic;
}
