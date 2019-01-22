package phaser.physics.arcade.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Arcade.Components.Angular
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Angular")
extern class Angular {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularVelocity
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setAngularVelocity(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularAcceleration
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setAngularAcceleration(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularDrag
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setAngularDrag(value:Float):Dynamic;
}
