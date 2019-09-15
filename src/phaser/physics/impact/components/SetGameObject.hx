package phaser.physics.impact.components;

/**
 * The Impact Set Game Object component.
 * Should be applied as a mixin.
 *
 * @namespace Phaser.Physics.Impact.Components.SetGameObject
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.SetGameObject")
extern class SetGameObject {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.SetGameObject#setGameObject
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - [description]
     * @param {boolean} [sync=true] - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setGameObject(gameObject:phaser.gameobjects.GameObject, ?sync:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.SetGameObject#syncGameObject
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function syncGameObject():phaser.gameobjects.GameObject;
}
