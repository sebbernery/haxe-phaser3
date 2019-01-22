package phaser.physics.impact.components;

/**
 * The Impact Gravity component.
 * Should be applied as a mixin.
 *
 * @name Phaser.Physics.Impact.Components.Gravity
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Gravity")
extern class Gravity {
    public function new();
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Components.Gravity#gravity
     * @type {number}
     * @since 3.0.0
     */
    public var gravity:Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Gravity#setGravity
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setGravity(value:Float):phaser.gameobjects.GameObject;
}
