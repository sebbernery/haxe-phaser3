package phaser.physics.arcade.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Arcade.Components.Immovable
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Immovable")
extern class Immovable {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Immovable#setImmovable
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setImmovable(?value:Bool):Dynamic;
}
