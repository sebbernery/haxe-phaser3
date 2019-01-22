package phaser;

/**
 * The position and size of the Bitmap Text in global space, taking into account the Game Object's scale and world position.
 *
 * @typedef {object} GlobalBitmapTextSize
 *
 * @property {number} x - The x position of the BitmapText, taking into account the x position and scale of the Game Object.
 * @property {number} y - The y position of the BitmapText, taking into account the y position and scale of the Game Object.
 * @property {number} width - The width of the BitmapText, taking into account the x scale of the Game Object.
 * @property {number} height - The height of the BitmapText, taking into account the y scale of the Game Object.
 */
typedef GlobalBitmapTextSize = {
var x:Float;
var y:Float;
var width:Float;
var height:Float;
};
