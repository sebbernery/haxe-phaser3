package phaser.types.math;

/**
 * @typedef {object} Phaser.Types.Math.Vector3Like
 * @since 3.50.0
 *
 * @property {number} [x] - The x component.
 * @property {number} [y] - The y component.
 * @property {number} [z] - The z component.
 */
typedef Vector3Like = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var z:Float;
};
