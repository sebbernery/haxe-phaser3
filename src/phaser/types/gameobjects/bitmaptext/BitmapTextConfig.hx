package phaser.types.gameobjects.bitmaptext;

/**
 * @typedef {object} Phaser.Types.GameObjects.BitmapText.BitmapTextConfig
 * @extends Phaser.Types.GameObjects.GameObjectConfig
 * @since 3.0.0
 *
 * @property {string} [font=''] - The key of the font to use from the BitmapFont cache.
 * @property {string} [text=''] - The string, or array of strings, to be set as the content of this Bitmap Text.
 * @property {(number|false)} [size=false] - The font size to set.
 */
typedef BitmapTextConfig = {
    @:optional var font:String;
    @:optional var text:String;
    @:optional var size:Dynamic;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var depth:Float;
    @:optional var flipX:Bool;
    @:optional var flipY:Bool;
    @:optional var scale:Dynamic;
    @:optional var scrollFactor:Dynamic;
    @:optional var rotation:Float;
    @:optional var angle:Float;
    @:optional var alpha:Float;
    @:optional var origin:Dynamic;
    @:optional var scaleMode:Float;
    @:optional var blendMode:Float;
    @:optional var visible:Bool;
    @:optional var add:Bool;
};
