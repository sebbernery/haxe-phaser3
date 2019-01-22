package phaser.physics.arcade.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Arcade.Components.Bounce
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Bounce")
extern class Bounce {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounce
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setBounce(x:Float, ?y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceX
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setBounceX(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceY
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setBounceY(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setCollideWorldBounds
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setCollideWorldBounds(value:Bool):Dynamic;
}
