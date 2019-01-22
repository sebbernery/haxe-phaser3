package phaser.physics.impact.components;

/**
 * The Impact Body Type component.
 * Should be applied as a mixin.
 *
 * @name Phaser.Physics.Impact.Components.BodyType
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.BodyType")
extern class BodyType {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.BodyType#getBodyType
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getBodyType():Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.BodyType#setTypeNone
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setTypeNone():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.BodyType#setTypeA
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setTypeA():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.BodyType#setTypeB
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setTypeB():phaser.gameobjects.GameObject;
}
