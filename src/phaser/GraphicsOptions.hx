package phaser;

/**
 * Options for the Graphics game Object.
 *
 * @typedef {object} GraphicsOptions
 * @extends GraphicsStyles
 *
 * @property {number} [x] - The x coordinate of the Graphics.
 * @property {number} [y] - The y coordinate of the Graphics.
 */
typedef GraphicsOptions = {
    @:optional var x:Float;
    @:optional var y:Float;
};
