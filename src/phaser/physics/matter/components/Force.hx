package phaser.physics.matter.components;

/**
 * A component to apply force to Matter.js bodies.
 *
 * @namespace Phaser.Physics.Matter.Components.Force
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Force")
extern class Force {
    public function new();
    /**
     * Applies a force to a body.
     *
     * @method Phaser.Physics.Matter.Components.Force#applyForce
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector2} force - A Vector that specifies the force to apply.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function applyForce(force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    /**
     * Applies a force to a body from a given position.
     *
     * @method Phaser.Physics.Matter.Components.Force#applyForceFrom
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector2} position - The position in which the force comes from.
     * @param {Phaser.Math.Vector2} force - A Vector that specifies the force to apply.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function applyForceFrom(position:phaser.math.Vector2, force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the forward position of the body.
     *
     * Use very small values, such as 0.1, depending on the mass and required speed.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrust
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrust(speed:Float):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the left position of the body.
     *
     * Use very small values, such as 0.1, depending on the mass and required speed.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrustLeft
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrustLeft(speed:Float):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the right position of the body.
     *
     * Use very small values, such as 0.1, depending on the mass and required speed.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrustRight
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrustRight(speed:Float):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the back position of the body.
     *
     * Use very small values, such as 0.1, depending on the mass and required speed.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrustBack
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrustBack(speed:Float):phaser.gameobjects.GameObject;
}
