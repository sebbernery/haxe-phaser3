package phaser;

/**
 * The font data for an individual character of a Bitmap Font.
 *
 * Describes the character's position, size, offset and kerning.
 *
 * @typedef {object} BitmapFontCharacterData
 *
 * @property {number} x - The x position of the character.
 * @property {number} y - The y position of the character.
 * @property {number} width - The width of the character.
 * @property {number} height - The height of the character.
 * @property {number} centerX - The center x position of the character.
 * @property {number} centerY - The center y position of the character.
 * @property {number} xOffset - The x offset of the character.
 * @property {number} yOffset - The y offset of the character.
 * @property {object} data - Extra data for the character.
 * @property {Object.<number>} kerning - Kerning values, keyed by character code.
 */
typedef BitmapFontCharacterData = {
var x:Float;
var y:Float;
var width:Float;
var height:Float;
var centerX:Float;
var centerY:Float;
var xOffset:Float;
var yOffset:Float;
var data:Dynamic;
var kerning:Dynamic;
};
