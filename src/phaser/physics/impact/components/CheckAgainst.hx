package phaser.physics.impact.components;

/**
 * The Impact Check Against component.
 * Should be applied as a mixin.
 *
 * @namespace Phaser.Physics.Impact.Components.CheckAgainst
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.CheckAgainst")
extern class CheckAgainst {
    public function new();
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Components.CheckAgainst#checkAgainst
     * @type {number}
     * @since 3.0.0
     */
    public var checkAgainst:Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.CheckAgainst#setAvsB
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setAvsB():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.CheckAgainst#setBvsA
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBvsA():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.CheckAgainst#setCheckAgainstNone
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCheckAgainstNone():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.CheckAgainst#setCheckAgainstA
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCheckAgainstA():phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.CheckAgainst#setCheckAgainstB
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCheckAgainstB():phaser.gameobjects.GameObject;
}
