package phaser.types.math;

/**
 * @typedef {object} Phaser.Types.Math.Vector4Like
 * @since 3.50.0
 *
 * @property {number} [x] - The x component.
 * @property {number} [y] - The y component.
 * @property {number} [z] - The z component.
 * @property {number} [w] - The w component.
 */
typedef Vector4Like = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var z:Float;
    @:optional var w:Float;
};
