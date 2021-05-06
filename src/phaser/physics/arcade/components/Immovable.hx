package phaser.physics.arcade.components;

/**
 * Provides methods used for setting the immovable properties of an Arcade Physics Body.
 *
 * @namespace Phaser.Physics.Arcade.Components.Immovable
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Immovable")
extern class Immovable {
    public function new();
    /**
     * Sets if this Body can be separated during collisions with other bodies.
     *
     * When a body is immovable it means it won't move at all, not even to separate it from collision
     * overlap. If you just wish to prevent a body from being knocked around by other bodies, see
     * the `setPushable` method instead.
     *
     * @method Phaser.Physics.Arcade.Components.Immovable#setImmovable
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - Sets if this body will be separated during collisions with other bodies.
     *
     * @return {this} This Game Object.
     */
    public function setImmovable(?value:Bool):Dynamic;
}
