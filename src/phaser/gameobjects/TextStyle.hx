package phaser.gameobjects;

/**
 * @classdesc
 * A TextStyle class manages all of the style settings for a Text object.
 *
 * Text Game Objects create a TextStyle instance automatically, which is
 * accessed via the `Text.style` property. You do not normally need to
 * instantiate one yourself.
 *
 * @class TextStyle
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.GameObjects.Text} text - The Text object that this TextStyle is styling.
 * @param {Phaser.Types.GameObjects.Text.TextStyle} style - The style settings to set.
 */
@:native("Phaser.GameObjects.TextStyle")
extern class TextStyle {
    public function new(text:phaser.gameobjects.Text, style:phaser.types.gameobjects.text.TextStyle);
    /**
     * The Text object that this TextStyle is styling.
     *
     * @name Phaser.GameObjects.TextStyle#parent
     * @type {Phaser.GameObjects.Text}
     * @since 3.0.0
     */
    public var parent:phaser.gameobjects.Text;
    /**
     * The font family.
     *
     * @name Phaser.GameObjects.TextStyle#fontFamily
     * @type {string}
     * @default 'Courier'
     * @since 3.0.0
     */
    public var fontFamily:String;
    /**
     * The font size.
     *
     * @name Phaser.GameObjects.TextStyle#fontSize
     * @type {string}
     * @default '16px'
     * @since 3.0.0
     */
    public var fontSize:String;
    /**
     * The font style.
     *
     * @name Phaser.GameObjects.TextStyle#fontStyle
     * @type {string}
     * @since 3.0.0
     */
    public var fontStyle:String;
    /**
     * The background color.
     *
     * @name Phaser.GameObjects.TextStyle#backgroundColor
     * @type {string}
     * @since 3.0.0
     */
    public var backgroundColor:String;
    /**
     * The text fill color.
     *
     * @name Phaser.GameObjects.TextStyle#color
     * @type {string}
     * @default '#fff'
     * @since 3.0.0
     */
    public var color:String;
    /**
     * The text stroke color.
     *
     * @name Phaser.GameObjects.TextStyle#stroke
     * @type {string}
     * @default '#fff'
     * @since 3.0.0
     */
    public var stroke:String;
    /**
     * The text stroke thickness.
     *
     * @name Phaser.GameObjects.TextStyle#strokeThickness
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var strokeThickness:Float;
    /**
     * The horizontal shadow offset.
     *
     * @name Phaser.GameObjects.TextStyle#shadowOffsetX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var shadowOffsetX:Float;
    /**
     * The vertical shadow offset.
     *
     * @name Phaser.GameObjects.TextStyle#shadowOffsetY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var shadowOffsetY:Float;
    /**
     * The shadow color.
     *
     * @name Phaser.GameObjects.TextStyle#shadowColor
     * @type {string}
     * @default '#000'
     * @since 3.0.0
     */
    public var shadowColor:String;
    /**
     * The shadow blur radius.
     *
     * @name Phaser.GameObjects.TextStyle#shadowBlur
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var shadowBlur:Float;
    /**
     * Whether shadow stroke is enabled or not.
     *
     * @name Phaser.GameObjects.TextStyle#shadowStroke
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var shadowStroke:Bool;
    /**
     * Whether shadow fill is enabled or not.
     *
     * @name Phaser.GameObjects.TextStyle#shadowFill
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var shadowFill:Bool;
    /**
     * The text alignment.
     *
     * @name Phaser.GameObjects.TextStyle#align
     * @type {string}
     * @default 'left'
     * @since 3.0.0
     */
    public var align:String;
    /**
     * The maximum number of lines to draw.
     *
     * @name Phaser.GameObjects.TextStyle#maxLines
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var maxLines:Float;
    /**
     * The fixed width of the text.
     *
     * `0` means no fixed with.
     *
     * @name Phaser.GameObjects.TextStyle#fixedWidth
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var fixedWidth:Float;
    /**
     * The fixed height of the text.
     *
     * `0` means no fixed height.
     *
     * @name Phaser.GameObjects.TextStyle#fixedHeight
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var fixedHeight:Float;
    /**
     * The resolution the text is rendered to its internal canvas at.
     * The default is 0, which means it will use the resolution set in the Game Config.
     *
     * @name Phaser.GameObjects.TextStyle#resolution
     * @type {number}
     * @default 0
     * @since 3.12.0
     */
    public var resolution:Float;
    /**
     * Whether the text should render right to left.
     *
     * @name Phaser.GameObjects.TextStyle#rtl
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var rtl:Bool;
    /**
     * The test string to use when measuring the font.
     *
     * @name Phaser.GameObjects.TextStyle#testString
     * @type {string}
     * @default '|MÉqgy'
     * @since 3.0.0
     */
    public var testString:String;
    /**
     * The amount of horizontal padding added to the width of the text when calculating the font metrics.
     *
     * @name Phaser.GameObjects.TextStyle#baselineX
     * @type {number}
     * @default 1.2
     * @since 3.3.0
     */
    public var baselineX:Float;
    /**
     * The amount of vertical padding added to the height of the text when calculating the font metrics.
     *
     * @name Phaser.GameObjects.TextStyle#baselineY
     * @type {number}
     * @default 1.4
     * @since 3.3.0
     */
    public var baselineY:Float;
    /**
     * The maximum width of a line of text in pixels. Null means no line wrapping. Setting this
     * property directly will not re-run the word wrapping algorithm. To change the width and
     * re-wrap, use {@link Phaser.GameObjects.TextStyle#setWordWrapWidth}.
     *
     * @name Phaser.GameObjects.TextStyle#wordWrapWidth
     * @type {number | null}
     * @default null
     * @since 3.24.0
     */
    public var wordWrapWidth:Dynamic;
    /**
     * A custom function that will be responsible for wrapping the text. It will receive two
     * arguments: text (the string to wrap), textObject (this Text instance). It should return
     * the wrapped lines either as an array of lines or as a string with newline characters in
     * place to indicate where breaks should happen. Setting this directly will not re-run the
     * word wrapping algorithm. To change the callback and re-wrap, use
     * {@link Phaser.GameObjects.TextStyle#setWordWrapCallback}.
     *
     * @name Phaser.GameObjects.TextStyle#wordWrapCallback
     * @type {TextStyleWordWrapCallback | null}
     * @default null
     * @since 3.24.0
     */
    public var wordWrapCallback:Dynamic;
    /**
     * The scope that will be applied when the wordWrapCallback is invoked. Setting this directly will not re-run the
     * word wrapping algorithm. To change the callback and re-wrap, use
     * {@link Phaser.GameObjects.TextStyle#setWordWrapCallback}.
     *
     * @name Phaser.GameObjects.TextStyle#wordWrapCallbackScope
     * @type {object | null}
     * @default null
     * @since 3.24.0
     */
    public var wordWrapCallbackScope:Dynamic;
    /**
     * Whether or not to use the advanced wrapping algorithm. If true, spaces are collapsed and
     * whitespace is trimmed from lines. If false, spaces and whitespace are left as is. Setting
     * this property directly will not re-run the word wrapping algorithm. To change the
     * advanced setting and re-wrap, use {@link Phaser.GameObjects.TextStyle#setWordWrapWidth}.
     *
     * @name Phaser.GameObjects.TextStyle#wordWrapUseAdvanced
     * @type {boolean}
     * @default false
     * @since 3.24.0
     */
    public var wordWrapUseAdvanced:Bool;
    /**
     * Set the text style.
     *
     * @example
     * text.setStyle({
     *     fontSize: '64px',
     *     fontFamily: 'Arial',
     *     color: '#ffffff',
     *     align: 'center',
     *     backgroundColor: '#ff00ff'
     * });
     *
     * @method Phaser.GameObjects.TextStyle#setStyle
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Text.TextStyle} style - The style settings to set.
     * @param {boolean} [updateText=true] - Whether to update the text immediately.
     * @param {boolean} [setDefaults=false] - Use the default values is not set, or the local values.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setStyle(style:phaser.types.gameobjects.text.TextStyle, ?updateText:Bool, ?setDefaults:Bool):phaser.gameobjects.Text;
    /**
     * Synchronize the font settings to the given Canvas Rendering Context.
     *
     * @method Phaser.GameObjects.TextStyle#syncFont
     * @since 3.0.0
     *
     * @param {HTMLCanvasElement} canvas - The Canvas Element.
     * @param {CanvasRenderingContext2D} context - The Canvas Rendering Context.
     */
    public function syncFont(canvas:js.html.CanvasElement, context:js.html.CanvasRenderingContext2D):Void;
    /**
     * Synchronize the text style settings to the given Canvas Rendering Context.
     *
     * @method Phaser.GameObjects.TextStyle#syncStyle
     * @since 3.0.0
     *
     * @param {HTMLCanvasElement} canvas - The Canvas Element.
     * @param {CanvasRenderingContext2D} context - The Canvas Rendering Context.
     */
    public function syncStyle(canvas:js.html.CanvasElement, context:js.html.CanvasRenderingContext2D):Void;
    /**
     * Synchronize the shadow settings to the given Canvas Rendering Context.
     *
     * @method Phaser.GameObjects.TextStyle#syncShadow
     * @since 3.0.0
     *
     * @param {CanvasRenderingContext2D} context - The Canvas Rendering Context.
     * @param {boolean} enabled - Whether shadows are enabled or not.
     */
    public function syncShadow(context:js.html.CanvasRenderingContext2D, enabled:Bool):Void;
    /**
     * Update the style settings for the parent Text object.
     *
     * @method Phaser.GameObjects.TextStyle#update
     * @since 3.0.0
     *
     * @param {boolean} recalculateMetrics - Whether to recalculate font and text metrics.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function update(recalculateMetrics:Bool):phaser.gameobjects.Text;
    /**
     * Set the font.
     *
     * If a string is given, the font family is set.
     *
     * If an object is given, the `fontFamily`, `fontSize` and `fontStyle`
     * properties of that object are set.
     *
     * @method Phaser.GameObjects.TextStyle#setFont
     * @since 3.0.0
     *
     * @param {(string|object)} font - The font family or font settings to set.
     * @param {boolean} [updateText=true] - Whether to update the text immediately.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setFont(font:Dynamic, ?updateText:Bool):phaser.gameobjects.Text;
    /**
     * Set the font family.
     *
     * @method Phaser.GameObjects.TextStyle#setFontFamily
     * @since 3.0.0
     *
     * @param {string} family - The font family.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setFontFamily(family:String):phaser.gameobjects.Text;
    /**
     * Set the font style.
     *
     * @method Phaser.GameObjects.TextStyle#setFontStyle
     * @since 3.0.0
     *
     * @param {string} style - The font style.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setFontStyle(style:String):phaser.gameobjects.Text;
    /**
     * Set the font size.
     *
     * @method Phaser.GameObjects.TextStyle#setFontSize
     * @since 3.0.0
     *
     * @param {(number|string)} size - The font size.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setFontSize(size:Dynamic):phaser.gameobjects.Text;
    /**
     * Set the test string to use when measuring the font.
     *
     * @method Phaser.GameObjects.TextStyle#setTestString
     * @since 3.0.0
     *
     * @param {string} string - The test string to use when measuring the font.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setTestString(string:String):phaser.gameobjects.Text;
    /**
     * Set a fixed width and height for the text.
     *
     * Pass in `0` for either of these parameters to disable fixed width or height respectively.
     *
     * @method Phaser.GameObjects.TextStyle#setFixedSize
     * @since 3.0.0
     *
     * @param {number} width - The fixed width to set.
     * @param {number} height - The fixed height to set.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setFixedSize(width:Float, height:Float):phaser.gameobjects.Text;
    /**
     * Set the background color.
     *
     * @method Phaser.GameObjects.TextStyle#setBackgroundColor
     * @since 3.0.0
     *
     * @param {string} color - The background color.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setBackgroundColor(color:String):phaser.gameobjects.Text;
    /**
     * Set the text fill color.
     *
     * @method Phaser.GameObjects.TextStyle#setFill
     * @since 3.0.0
     *
     * @param {string} color - The text fill color.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setFill(color:String):phaser.gameobjects.Text;
    /**
     * Set the text fill color.
     *
     * @method Phaser.GameObjects.TextStyle#setColor
     * @since 3.0.0
     *
     * @param {string} color - The text fill color.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setColor(color:String):phaser.gameobjects.Text;
    /**
     * Set the resolution used by the Text object.
     *
     * By default it will be set to match the resolution set in the Game Config,
     * but you can override it via this method. It allows for much clearer text on High DPI devices,
     * at the cost of memory because it uses larger internal Canvas textures for the Text.
     *
     * Please use with caution, as the more high res Text you have, the more memory it uses up.
     *
     * @method Phaser.GameObjects.TextStyle#setResolution
     * @since 3.12.0
     *
     * @param {number} value - The resolution for this Text object to use.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setResolution(value:Float):phaser.gameobjects.Text;
    /**
     * Set the stroke settings.
     *
     * @method Phaser.GameObjects.TextStyle#setStroke
     * @since 3.0.0
     *
     * @param {string} color - The stroke color.
     * @param {number} thickness - The stroke thickness.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setStroke(color:String, thickness:Float):phaser.gameobjects.Text;
    /**
     * Set the shadow settings.
     *
     * Calling this method always re-measures the parent Text object,
     * so only call it when you actually change the shadow settings.
     *
     * @method Phaser.GameObjects.TextStyle#setShadow
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal shadow offset.
     * @param {number} [y=0] - The vertical shadow offset.
     * @param {string} [color='#000'] - The shadow color.
     * @param {number} [blur=0] - The shadow blur radius.
     * @param {boolean} [shadowStroke=false] - Whether to stroke the shadow.
     * @param {boolean} [shadowFill=true] - Whether to fill the shadow.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setShadow(?x:Float, ?y:Float, ?color:String, ?blur:Float, ?shadowStroke:Bool, ?shadowFill:Bool):phaser.gameobjects.Text;
    /**
     * Set the shadow offset.
     *
     * @method Phaser.GameObjects.TextStyle#setShadowOffset
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal shadow offset.
     * @param {number} [y=0] - The vertical shadow offset.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setShadowOffset(?x:Float, ?y:Float):phaser.gameobjects.Text;
    /**
     * Set the shadow color.
     *
     * @method Phaser.GameObjects.TextStyle#setShadowColor
     * @since 3.0.0
     *
     * @param {string} [color='#000'] - The shadow color.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setShadowColor(?color:String):phaser.gameobjects.Text;
    /**
     * Set the shadow blur radius.
     *
     * @method Phaser.GameObjects.TextStyle#setShadowBlur
     * @since 3.0.0
     *
     * @param {number} [blur=0] - The shadow blur radius.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setShadowBlur(?blur:Float):phaser.gameobjects.Text;
    /**
     * Enable or disable shadow stroke.
     *
     * @method Phaser.GameObjects.TextStyle#setShadowStroke
     * @since 3.0.0
     *
     * @param {boolean} enabled - Whether shadow stroke is enabled or not.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setShadowStroke(enabled:Bool):phaser.gameobjects.Text;
    /**
     * Enable or disable shadow fill.
     *
     * @method Phaser.GameObjects.TextStyle#setShadowFill
     * @since 3.0.0
     *
     * @param {boolean} enabled - Whether shadow fill is enabled or not.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setShadowFill(enabled:Bool):phaser.gameobjects.Text;
    /**
     * Set the width (in pixels) to use for wrapping lines.
     *
     * Pass in null to remove wrapping by width.
     *
     * @method Phaser.GameObjects.TextStyle#setWordWrapWidth
     * @since 3.0.0
     *
     * @param {number} width - The maximum width of a line in pixels. Set to null to remove wrapping.
     * @param {boolean} [useAdvancedWrap=false] - Whether or not to use the advanced wrapping
     * algorithm. If true, spaces are collapsed and whitespace is trimmed from lines. If false,
     * spaces and whitespace are left as is.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setWordWrapWidth(width:Float, ?useAdvancedWrap:Bool):phaser.gameobjects.Text;
    /**
     * Set a custom callback for wrapping lines.
     *
     * Pass in null to remove wrapping by callback.
     *
     * @method Phaser.GameObjects.TextStyle#setWordWrapCallback
     * @since 3.0.0
     *
     * @param {TextStyleWordWrapCallback} callback - A custom function that will be responsible for wrapping the
     * text. It will receive two arguments: text (the string to wrap), textObject (this Text
     * instance). It should return the wrapped lines either as an array of lines or as a string with
     * newline characters in place to indicate where breaks should happen.
     * @param {object} [scope=null] - The scope that will be applied when the callback is invoked.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setWordWrapCallback(callback:TextStyleWordWrapCallback, ?scope:Dynamic):phaser.gameobjects.Text;
    /**
     * Set the alignment of the text in this Text object.
     *
     * The argument can be one of: `left`, `right`, `center` or `justify`.
     *
     * Alignment only works if the Text object has more than one line of text.
     *
     * @method Phaser.GameObjects.TextStyle#setAlign
     * @since 3.0.0
     *
     * @param {string} [align='left'] - The text alignment for multi-line text.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setAlign(?align:String):phaser.gameobjects.Text;
    /**
     * Set the maximum number of lines to draw.
     *
     * @method Phaser.GameObjects.TextStyle#setMaxLines
     * @since 3.0.0
     *
     * @param {number} [max=0] - The maximum number of lines to draw.
     *
     * @return {Phaser.GameObjects.Text} The parent Text object.
     */
    public function setMaxLines(?max:Float):phaser.gameobjects.Text;
    /**
     * Get the current text metrics.
     *
     * @method Phaser.GameObjects.TextStyle#getTextMetrics
     * @since 3.0.0
     *
     * @return {Phaser.Types.GameObjects.Text.TextMetrics} The text metrics.
     */
    public function getTextMetrics():phaser.types.gameobjects.text.TextMetrics;
    /**
     * Build a JSON representation of this Text Style.
     *
     * @method Phaser.GameObjects.TextStyle#toJSON
     * @since 3.0.0
     *
     * @return {object} A JSON representation of this Text Style.
     */
    public function toJSON():Dynamic;
    /**
     * Destroy this Text Style.
     *
     * @method Phaser.GameObjects.TextStyle#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
