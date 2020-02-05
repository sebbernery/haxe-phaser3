package phaser.physics.matter.components;

/**
 * Allows accessing the mass, density, and center of mass of a Matter-enabled Game Object. Should be used as a mixin and not directly.
 *
 * @namespace Phaser.Physics.Matter.Components.Mass
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Mass")
extern class Mass {
    public function new();
    /**
     * The body's center of mass.
     *
     * Calling this creates a new `Vector2 each time to avoid mutation.
     *
     * If you only need to read the value and won't change it, you can get it from `GameObject.body.centerOfMass`.
     *
     * @name Phaser.Physics.Matter.Components.Mass#centerOfMass
     * @type {Phaser.Math.Vector2}
     * @readonly
     * @since 3.10.0
     *
     * @return {Phaser.Math.Vector2} The center of mass.
     */
    public var centerOfMass:phaser.math.Vector2;
    /**
     * Sets the mass of the Game Object's Matter Body.
     *
     * @method Phaser.Physics.Matter.Components.Mass#setMass
     * @since 3.0.0
     *
     * @param {number} value - The new mass of the body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setMass(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets density of the body.
     *
     * @method Phaser.Physics.Matter.Components.Mass#setDensity
     * @since 3.0.0
     *
     * @param {number} value - The new density of the body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setDensity(value:Float):phaser.gameobjects.GameObject;
}
