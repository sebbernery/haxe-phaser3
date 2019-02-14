package phaser.physics.matter.components;

/**
 * Contains methods for changing the friction of a Game Object's Matter Body. Should be used a mixin, not called directly.
 *
 * @name Phaser.Physics.Matter.Components.Friction
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Friction")
extern class Friction {
    public function new();
    /**
     * Sets new friction values for this Game Object's Matter Body.
     *
     * @method Phaser.Physics.Matter.Components.Friction#setFriction
     * @since 3.0.0
     *
     * @param {number} value - The new friction of the body, between 0 and 1, where 0 allows the Body to slide indefinitely, while 1 allows it to stop almost immediately after a force is applied.
     * @param {number} [air] - If provided, the new air resistance of the Body. The higher the value, the faster the Body will slow as it moves through space. 0 means the body has no air resistance.
     * @param {number} [fstatic] - If provided, the new static friction of the Body. The higher the value (e.g. 10), the more force it will take to initially get the Body moving when it is nearly stationary. 0 means the body will never "stick" when it is nearly stationary.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFriction(value:Float, ?air:Float, ?fstatic:Float):phaser.gameobjects.GameObject;
    /**
     * Sets a new air resistance for this Game Object's Matter Body. A value of 0 means the Body will never slow as it moves through space. The higher the value, the faster a Body slows when moving through space.
     *
     * @method Phaser.Physics.Matter.Components.Friction#setFrictionAir
     * @since 3.0.0
     *
     * @param {number} value - The new air resistance for the Body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFrictionAir(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets a new static friction for this Game Object's Matter Body. A value of 0 means the Body will never "stick" when it is nearly stationary. The higher the value (e.g. 10), the more force it will take to initially get the Body moving when it is nearly stationary.
     *
     * @method Phaser.Physics.Matter.Components.Friction#setFrictionStatic
     * @since 3.0.0
     *
     * @param {number} value - The new static friction for the Body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFrictionStatic(value:Float):phaser.gameobjects.GameObject;
}
