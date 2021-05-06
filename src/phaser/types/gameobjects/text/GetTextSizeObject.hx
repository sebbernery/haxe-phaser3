package phaser.types.gameobjects.text;

/**
 * Results object from a call to GetTextSize.
 *
 * @typedef {object} Phaser.Types.GameObjects.Text.GetTextSizeObject
 * @since 3.0.0
 *
 * @property {number} width - The width of the longest line in the Text object.
 * @property {number} height - The height of the Text object.
 * @property {number} lines - The number of lines in the Text object.
 * @property {number[]} lineWidths - An array of the lines for each line in the Text object.
 * @property {number} lineSpacing - The line spacing of the Text object.
 * @property {number} lineHeight - The height of a line factoring in font and stroke.
 */
typedef GetTextSizeObject = {
var width:Float;
var height:Float;
var lines:Float;
var lineWidths:Array<Float>;
var lineSpacing:Float;
var lineHeight:Float;
};
