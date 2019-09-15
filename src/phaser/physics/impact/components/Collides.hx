package phaser.physics.impact.components;

/**
 * The Impact Collides component.
 * Should be applied as a mixin.
 *
 * @namespace Phaser.Physics.Impact.Components.Collides
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Collides")
extern class Collides {
    public function new();
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Components.Collides#collides
     * @type {number}
     * @since 3.0.0
     */
    public var collides:Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Collides#setCollideCallback
     * @since 3.0.0
     *
     * @param {CollideCallback} callback - [description]
     * @param {*} scope - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCollideCallback(callback:CollideCallback, scope:Dynamic):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Collides#setCollidesNever
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCollidesNever():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Collides#setLiteCollision
     * @since 3.6.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setLiteCollision():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Collides#setPassiveCollision
     * @since 3.6.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setPassiveCollision():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Collides#setActiveCollision
     * @since 3.6.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setActiveCollision():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Collides#setFixedCollision
     * @since 3.6.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFixedCollision():phaser.gameobjects.GameObject;
}
