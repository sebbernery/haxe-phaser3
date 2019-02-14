package phaser;

/**
 * @typedef {object} DisplayCallbackConfig
 *
 * @property {Phaser.GameObjects.DynamicBitmapText} parent - The Dynamic Bitmap Text object that owns this character being rendered.
 * @property {{topLeft:number, topRight:number, bottomLeft:number, bottomRight:number}} tint - The tint of the character being rendered. Always zero in Canvas.
 * @property {number} index - The index of the character being rendered.
 * @property {number} charCode - The character code of the character being rendered.
 * @property {number} x - The x position of the character being rendered.
 * @property {number} y - The y position of the character being rendered.
 * @property {number} scale - The scale of the character being rendered.
 * @property {number} rotation - The rotation of the character being rendered.
 * @property {any} data - Custom data stored with the character being rendered.
 */
typedef DisplayCallbackConfig = {
var parent:phaser.gameobjects.DynamicBitmapText;
var tint:Dynamic;
var index:Float;
var charCode:Float;
var x:Float;
var y:Float;
var scale:Float;
var rotation:Float;
var data:Dynamic;
};
