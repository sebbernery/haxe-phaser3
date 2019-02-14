package phaser;

/**
 * An object containing the position and color data for a single pixel in a CanvasTexture.
 *
 * @typedef {object} PixelConfig
 *
 * @property {integer} x - The x-coordinate of the pixel.
 * @property {integer} y - The y-coordinate of the pixel.
 * @property {integer} color - The color of the pixel, not including the alpha channel.
 * @property {float} alpha - The alpha of the pixel, between 0 and 1.
 */
typedef PixelConfig = {
var x:Int;
var y:Int;
var color:Int;
var alpha:Float;
};
