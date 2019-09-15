package phaser.types.display;

/**
 * @typedef {object} Phaser.Types.Display.InputColorObject
 * @since 3.0.0
 *
 * @property {number} [r] - The red color value in the range 0 to 255.
 * @property {number} [g] - The green color value in the range 0 to 255.
 * @property {number} [b] - The blue color value in the range 0 to 255.
 * @property {number} [a] - The alpha color value in the range 0 to 255.
 */
typedef InputColorObject = {
    @:optional var r:Float;
    @:optional var g:Float;
    @:optional var b:Float;
    @:optional var a:Float;
};
