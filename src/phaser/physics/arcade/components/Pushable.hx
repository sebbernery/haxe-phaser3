package phaser.physics.arcade.components;

/**
 * Provides methods used for setting the pushable property of an Arcade Physics Body.
 *
 * @namespace Phaser.Physics.Arcade.Components.Pushable
 * @since 3.50.0
 */
@:native("Phaser.Physics.Arcade.Components.Pushable")
extern class Pushable {
    public function new();
    /**
     * Sets if this Body can be pushed by another Body.
     *
     * A body that cannot be pushed will reflect back all of the velocity it is given to the
     * colliding body. If that body is also not pushable, then the separation will be split
     * between them evenly.
     *
     * If you want your body to never move or seperate at all, see the `setImmovable` method.
     *
     * @method Phaser.Physics.Arcade.Components.Pushable#setPushable
     * @since 3.50.0
     *
     * @param {boolean} [value=true] - Sets if this body can be pushed by collisions with another Body.
     *
     * @return {this} This Game Object.
     */
    public function setPushable(?value:Bool):Dynamic;
}
