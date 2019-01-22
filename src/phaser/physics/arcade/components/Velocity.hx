package phaser.physics.arcade.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Arcade.Components.Velocity
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Velocity")
extern class Velocity {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityX
     * @since 3.0.0
     *
     * @param {number} x - [description]
     *
     * @return {this} This Game Object.
     */
    public function setVelocityX(x:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityY
     * @since 3.0.0
     *
     * @param {number} y - [description]
     *
     * @return {this} This Game Object.
     */
    public function setVelocityY(y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setMaxVelocity
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
