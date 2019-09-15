package phaser.physics.arcade.components;

/**
 * Provides methods for setting the size of an Arcade Physics Game Object.
 * Should be applied as a mixin and not used directly.
 *
 * @namespace Phaser.Physics.Arcade.Components.Size
 * @since 3.0.0
 */
@:native("Phaser.Physics.Arcade.Components.Size")
extern class Size {
    public function new();
    /**
     * Sets the body offset. This allows you to adjust the difference between the center of the body
     * and the x and y coordinates of the parent Game Object.
     *
     * @method Phaser.Physics.Arcade.Components.Size#setOffset
     * @since 3.0.0
     *
     * @param {number} x - The amount to offset the body from the parent Game Object along the x-axis.
     * @param {number} [y=x] - The amount to offset the body from the parent Game Object along the y-axis. Defaults to the value given for the x-axis.
     *
     * @return {this} This Game Object.
     */
    public function setOffset(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the size of this physics body. Setting the size does not adjust the dimensions
     * of the parent Game Object.
     *
     * @method Phaser.Physics.Arcade.Components.Size#setSize
     * @since 3.0.0
     *
     * @param {number} width - The new width of the physics body, in pixels.
     * @param {number} height - The new height of the physics body, in pixels.
     * @param {boolean} [center=true] - Should the body be re-positioned so its center aligns with the parent Game Object?
     *
     * @return {this} This Game Object.
     */
    public function setSize(width:Float, height:Float, ?center:Bool):Dynamic;
    /**
     * Sets this physics body to use a circle for collision instead of a rectangle.
     *
     * @method Phaser.Physics.Arcade.Components.Size#setCircle
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the physics body, in pixels.
     * @param {number} [offsetX] - The amount to offset the body from the parent Game Object along the x-axis.
     * @param {number} [offsetY] - The amount to offset the body from the parent Game Object along the y-axis.
     *
     * @return {this} This Game Object.
     */
    public function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
}
