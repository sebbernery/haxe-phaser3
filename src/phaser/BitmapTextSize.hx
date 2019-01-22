package phaser;

/**
 * @typedef {object} BitmapTextSize
 *
 * @property {GlobalBitmapTextSize} global - The position and size of the BitmapText, taking into account the position and scale of the Game Object.
 * @property {LocalBitmapTextSize} local - The position and size of the BitmapText, taking just the font size into account.
 */
typedef BitmapTextSize = {
var global:GlobalBitmapTextSize;
var local:LocalBitmapTextSize;
};
