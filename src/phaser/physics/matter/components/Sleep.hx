package phaser.physics.matter.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Matter.Components.Sleep
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Sleep")
extern class Sleep {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepThreshold
     * @since 3.0.0
     *
     * @param {number} [value=60] - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepThreshold(?value:Float):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepEvents
     * @since 3.0.0
     *
     * @param {boolean} start - [description]
     * @param {boolean} end - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepEvents(start:Bool, end:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepStartEvent
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepStartEvent(value:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepEndEvent
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepEndEvent(value:Bool):phaser.gameobjects.GameObject;
}
