package phaser.physics.impact.components;

/**
 * The Impact Friction component.
 * Should be applied as a mixin.
 *
 * @namespace Phaser.Physics.Impact.Components.Friction
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Friction")
extern class Friction {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Friction#setFrictionX
     * @since 3.0.0
     *
     * @param {number} x - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFrictionX(x:Float):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Friction#setFrictionY
     * @since 3.0.0
     *
     * @param {number} y - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFrictionY(y:Float):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Friction#setFriction
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFriction(x:Float, y:Float):phaser.gameobjects.GameObject;
}
