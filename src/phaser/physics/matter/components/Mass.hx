package phaser.physics.matter.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Matter.Components.Mass
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Mass")
extern class Mass {
    public function new();
    /**
     * The body's center of mass.
     *
     * @name Phaser.Physics.Matter.Components.Mass#centerOfMass
     * @readonly
     * @since 3.10.0
     *
     * @return {Phaser.Math.Vector2} The center of mass.
     */
    public var centerOfMass:Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Mass#setMass
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setMass(value:Float):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Mass#setDensity
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setDensity(value:Float):phaser.gameobjects.GameObject;
}
