package phaser;

/**
 * Bitmap Font data that can be used by a BitmapText Game Object.
 *
 * @typedef {object} BitmapFontData
 *
 * @property {string} font - The name of the font.
 * @property {number} size - The size of the font.
 * @property {number} lineHeight - The line height of the font.
 * @property {boolean} retroFont - Whether this font is a retro font (monospace).
 * @property {Object.<number, BitmapFontCharacterData>} chars - The character data of the font, keyed by character code. Each character datum includes a position, size, offset and more.
 */
typedef BitmapFontData = {
var font:String;
var size:Float;
var lineHeight:Float;
var retroFont:Bool;
var chars:Dynamic;
};
