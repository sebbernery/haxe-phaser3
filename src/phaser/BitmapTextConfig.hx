package phaser;

/**
 * @typedef {object} BitmapTextConfig
 * @extends GameObjectConfig
 *
 * @property {string} [font=''] - The key of the font to use from the BitmapFont cache.
 * @property {string} [text=''] - The string, or array of strings, to be set as the content of this Bitmap Text.
 * @property {(number|false)} [size=false] - The font size to set.
 */
typedef BitmapTextConfig = {
    @:optional var font:String;
    @:optional var text:String;
    @:optional var size:Dynamic;
};
