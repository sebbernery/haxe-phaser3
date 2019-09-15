package phaser.physics.matter.components;

/**
 * [description]
 *
 * @namespace Phaser.Physics.Matter.Components.Sensor
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Sensor")
extern class Sensor {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sensor#setSensor
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSensor(value:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sensor#isSensor
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function isSensor():Bool;
}
