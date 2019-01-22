package phaser.gameobjects;

/**
 * @classdesc
 * BitmapText objects work by taking a texture file and an XML or JSON file that describes the font structure.
 *
 * During rendering for each letter of the text is rendered to the display, proportionally spaced out and aligned to
 * match the font structure.
 *
 * Dynamic Bitmap Text objects are different from Static Bitmap Text in that they invoke a callback for each
 * letter being rendered during the render pass. This callback allows you to manipulate the properties of
 * each letter being rendered, such as its position, scale or tint, allowing you to create interesting effects
 * like jiggling text, which can't be done with Static text. This means that Dynamic Text takes more processing
 * time, so only use them if you require the callback ability they have.
 *
 * BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability
 * to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by
 * processing the font texture in an image editor, applying fills and any other effects required.
 *
 * To create multi-line text insert \r, \n or \r\n escape codes into the text string.
 *
 * To create a BitmapText data files you need a 3rd party app such as:
 *
 * BMFont (Windows, free): http://www.angelcode.com/products/bmfont/
 * Glyph Designer (OS X, commercial): http://www.71squared.com/en/glyphdesigner
 * Littera (Web-based, free): http://kvazars.com/littera/
 *
 * For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
 * converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: http://codebeautify.org/xmltojson
 *
 * @class DynamicBitmapText
 * @extends Phaser.GameObjects.BitmapText
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. It can only belong to one Scene at any given time.
 * @param {number} x - The x coordinate of this Game Object in world space.
 * @param {number} y - The y coordinate of this Game Object in world space.
 * @param {string} font - The key of the font to use from the Bitmap Font cache.
 * @param {(string|string[])} [text] - The string, or array of strings, to be set as the content of this Bitmap Text.
 * @param {number} [size] - The font size of this Bitmap Text.
 * @param {integer} [align=0] - The alignment of the text in a multi-line BitmapText object.
 */
@:native("Phaser.GameObjects.DynamicBitmapText")
extern class DynamicBitmapText extends phaser.gameobjects.BitmapText {
    public function new(scene:phaser.Scene, x:Float, y:Float, font:String, ?text:Dynamic, ?size:Float, ?align:Int);
    /**
     * The horizontal scroll position of the Bitmap Text.
     *
     * @name Phaser.GameObjects.DynamicBitmapText#scrollX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var scrollX:Float;
    /**
     * The vertical scroll position of the Bitmap Text.
     *
     * @name Phaser.GameObjects.DynamicBitmapText#scrollY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var scrollY:Float;
    /**
     * The crop width of the Bitmap Text.
     *
     * @name Phaser.GameObjects.DynamicBitmapText#cropWidth
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var cropWidth:Float;
    /**
     * The crop height of the Bitmap Text.
     *
     * @name Phaser.GameObjects.DynamicBitmapText#cropHeight
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var cropHeight:Float;
    /**
     * A callback that alters how each character of the Bitmap Text is rendered.
     *
     * @name Phaser.GameObjects.DynamicBitmapText#displayCallback
     * @type {DisplayCallback}
     * @since 3.0.0
     */
    public var displayCallback:DisplayCallback;
    /**
     * The data object that is populated during rendering, then passed to the displayCallback.
     * You should modify this object then return it back from the callback. It's updated values
     * will be used to render the specific glyph.
     *
     * Please note that if you need a reference to this object locally in your game code then you
     * should shallow copy it, as it's updated and re-used for every glyph in the text.
     *
     * @name Phaser.GameObjects.DynamicBitmapText#callbackData
     * @type {DisplayCallbackConfig}
     * @since 3.11.0
     */
    public var callbackData:DisplayCallbackConfig;
    /**
     * Set the crop size of this Bitmap Text.
     *
     * @method Phaser.GameObjects.DynamicBitmapText#setSize
     * @since 3.0.0
     *
     * @param {number} width - The width of the crop.
     * @param {number} height - The height of the crop.
     *
     * @return {Phaser.GameObjects.DynamicBitmapText} This Game Object.
     */
    public function setSize(width:Float, height:Float):phaser.gameobjects.DynamicBitmapText;
    /**
     * Set a callback that alters how each character of the Bitmap Text is rendered.
     *
     * The callback receives a {@link DisplayCallbackConfig} object that contains information about the character that's
     * about to be rendered.
     *
     * It should return an object with `x`, `y`, `scale` and `rotation` properties that will be used instead of the
     * usual values when rendering.
     *
     * @method Phaser.GameObjects.DynamicBitmapText#setDisplayCallback
     * @since 3.0.0
     *
     * @param {DisplayCallback} callback - The display callback to set.
     *
     * @return {Phaser.GameObjects.DynamicBitmapText} This Game Object.
     */
    public function setDisplayCallback(callback:DisplayCallback):phaser.gameobjects.DynamicBitmapText;
    /**
     * Set the horizontal scroll position of this Bitmap Text.
     *
     * @method Phaser.GameObjects.DynamicBitmapText#setScrollX
     * @since 3.0.0
     *
     * @param {number} value - The horizontal scroll position to set.
     *
     * @return {Phaser.GameObjects.DynamicBitmapText} This Game Object.
     */
    public function setScrollX(value:Float):phaser.gameobjects.DynamicBitmapText;
    /**
     * Set the vertical scroll position of this Bitmap Text.
     *
     * @method Phaser.GameObjects.DynamicBitmapText#setScrollY
     * @since 3.0.0
     *
     * @param {number} value - The vertical scroll position to set.
     *
     * @return {Phaser.GameObjects.DynamicBitmapText} This Game Object.
     */
    public function setScrollY(value:Float):phaser.gameobjects.DynamicBitmapText;
}
