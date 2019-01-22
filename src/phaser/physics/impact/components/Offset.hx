package phaser.physics.impact.components;

/**
 * The Impact Offset component.
 * Should be applied as a mixin.
 *
 * @name Phaser.Physics.Impact.Components.Offset
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.Offset")
extern class Offset {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Components.Offset#setOffset
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     * @param {number} [width] - [description]
     * @param {number} [height] - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setOffset(x:Float, y:Float, ?width:Float, ?height:Float):phaser.gameobjects.GameObject;
}
