package phaser.physics.arcade.components;

/**
 * [description]
 *
 * @name Phaser.Physics.Arcade.Components.Drag
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Drag")
extern class Drag {
    public function new();
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDrag
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDrag(x:Float, ?y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDragX
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDragX(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDragY
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDragY(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDamping
     * @since 3.10.0
     *
     * @param {boolean} value - `true` to use damping for deceleration, or `false` to use linear deceleration.
     *
     * @return {this} This Game Object.
     */
    public function setDamping(value:Bool):Dynamic;
}
