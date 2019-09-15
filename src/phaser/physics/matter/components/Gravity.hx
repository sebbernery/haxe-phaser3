package phaser.physics.matter.components;

/**
 * A component to manipulate world gravity for Matter.js bodies.
 *
 * @namespace Phaser.Physics.Matter.Components.Gravity
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Gravity")
extern class Gravity {
    public function new();
    /**
     * A togglable function for ignoring world gravity in real-time on the current body.
     *
     * @method Phaser.Physics.Matter.Components.Gravity#setIgnoreGravity
     * @since 3.0.0
     *
     * @param {boolean} value - Set to true to ignore the effect of world gravity, or false to not ignore it.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setIgnoreGravity(value:Bool):phaser.gameobjects.GameObject;
}
