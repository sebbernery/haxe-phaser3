package phaser.physics.impact.components;

/**
 * The Impact Bounce component.
 * Should be applied as a mixin.
 *
 * @name Phaser.Physics.Impact.Components.Bounce
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Bounce")
extern class Bounce {
    public function new();
    /**
     * The bounce, or restitution, value of this body.
     * A value between 0 (no rebound) and 1 (full rebound)
     *
     * @name Phaser.Physics.Impact.Components.Bounce#bounce
     * @type {number}
     * @since 3.0.0
     */
    public var bounce:Float;
    /**
     * Sets the impact physics bounce, or restitution, value.
     *
     * @method Phaser.Physics.Impact.Components.Bounce#setBounce
     * @since 3.0.0
     *
     * @param {number} value - A value between 0 (no rebound) and 1 (full rebound)
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBounce(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets the minimum velocity the body is allowed to be moving to be considered for rebound.
     *
     * @method Phaser.Physics.Impact.Components.Bounce#setMinBounceVelocity
     * @since 3.0.0
     *
     * @param {number} value - The minimum allowed velocity.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setMinBounceVelocity(value:Float):phaser.gameobjects.GameObject;
}
