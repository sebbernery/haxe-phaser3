package phaser;

/**
 * @typedef {object} JSONBitmapText
 * @extends {JSONGameObject}
 *
 * @property {string} font - The name of the font.
 * @property {string} text - The text that this Bitmap Text displays.
 * @property {number} fontSize - The size of the font.
 * @property {number} letterSpacing - Adds / Removes spacing between characters.
 * @property {integer} align - The alignment of the text in a multi-line BitmapText object.
 */
typedef JSONBitmapText = {
var font:String;
var text:String;
var fontSize:Float;
var letterSpacing:Float;
var align:Int;
};
