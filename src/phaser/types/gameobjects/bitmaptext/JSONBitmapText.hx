package phaser.types.gameobjects.bitmaptext;

/**
 * @typedef {object} Phaser.Types.GameObjects.BitmapText.JSONBitmapText
 * @extends {Phaser.Types.GameObjects.JSONGameObject}
 * @since 3.0.0
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
var name:String;
var type:String;
var x:Float;
var y:Float;
var scale:Dynamic;
var origin:Dynamic;
var flipX:Bool;
var flipY:Bool;
var rotation:Float;
var alpha:Float;
var visible:Bool;
var scaleMode:Int;
var blendMode:Dynamic;
var textureKey:String;
var frameKey:String;
var data:Dynamic;
};
