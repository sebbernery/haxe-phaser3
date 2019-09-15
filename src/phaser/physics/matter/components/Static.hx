package phaser.physics.matter.components;

/**
 * [description]
 *
 * @namespace Phaser.Physics.Matter.Components.Static
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Static")
extern class Static {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Static#setStatic
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setStatic(value:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Static#isStatic
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function isStatic():Bool;
}
