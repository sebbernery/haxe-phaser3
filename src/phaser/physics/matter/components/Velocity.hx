package phaser.physics.matter.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Matter.Components.Velocity
 * @since 3.0.0
 */
@:native("Phaser.Physics.Matter.Components.Velocity")
extern class Velocity {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setAngularVelocity
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setAngularVelocity(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets the horizontal velocity of the physics body.
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setVelocityX
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity value.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setVelocityX(x:Float):phaser.gameobjects.GameObject;
    /**
     * Sets vertical velocity of the physics body.
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setVelocityY
     * @since 3.0.0
     *
     * @param {number} y - The vertical velocity value.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setVelocityY(y:Float):phaser.gameobjects.GameObject;
    /**
     * Sets both the horizontal and vertical velocity of the physics body.
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity value.
     * @param {number} [y=x] - The vertical velocity value, it can be either positive or negative. If not given, it will be the same as the `x` value.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setVelocity(x:Float, ?y:Float):phaser.gameobjects.GameObject;
}
