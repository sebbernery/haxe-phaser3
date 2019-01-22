package phaser.physics.impact.components;

/**
 * The Impact Body Scale component.
 * Should be applied as a mixin.
 *
 * @name Phaser.Physics.Impact.Components.BodyScale
 * @since 3.0.0
 */
@:native("Phaser.Physics.Impact.Components.BodyScale")
extern class BodyScale {
    public function new();
    /**
     * Sets the size of the physics body.
     *
     * @method Phaser.Physics.Impact.Components.BodyScale#setBodySize
     * @since 3.0.0
     *
     * @param {number} width - The width of the body in pixels.
     * @param {number} [height=width] - The height of the body in pixels.
     *
     * @return {this} This Game Object.
     */
    public function setBodySize(width:Float, ?height:Float):Dynamic;
    /**
     * Sets the scale of the physics body.
     *
     * @method Phaser.Physics.Impact.Components.BodyScale#setBodyScale
     * @since 3.0.0
     *
     * @param {number} scaleX - The horizontal scale of the body.
     * @param {number} [scaleY] - The vertical scale of the body. If not given, will use the horizontal scale value.
     *
     * @return {this} This Game Object.
     */
    public function setBodyScale(scaleX:Float, ?scaleY:Float):Dynamic;
}
