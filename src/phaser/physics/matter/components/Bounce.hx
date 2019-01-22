package phaser.physics.matter.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Matter.Components.Bounce
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Bounce")
extern class Bounce {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Bounce#setBounce
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBounce(value:Float):phaser.gameobjects.GameObject;
}
