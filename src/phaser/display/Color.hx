package phaser.display;

/**
 * @namespace Phaser.Display.Color
 */
@:native("Phaser.Display.Color")
extern class Color {
    public function new();
    /**
     * An array containing the calculated color values for WebGL use.
     *
     * @name Phaser.Display.Color#gl
     * @type {number[]}
     * @since 3.0.0
     */
    public var gl:Array<Float>;
    /**
     * The color of this Color component, not including the alpha channel.
     *
     * @name Phaser.Display.Color#color
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var color:Float;
    /**
     * The color of this Color component, including the alpha channel.
     *
     * @name Phaser.Display.Color#color32
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var color32:Float;
    /**
     * The color of this Color component as a string which can be used in CSS color values.
     *
     * @name Phaser.Display.Color#rgba
     * @type {string}
     * @readonly
     * @since 3.0.0
     */
    public var rgba:String;
    /**
     * The red color value, normalized to the range 0 to 1.
     *
     * @name Phaser.Display.Color#redGL
     * @type {number}
     * @since 3.0.0
     */
    public var redGL:Float;
    /**
     * The green color value, normalized to the range 0 to 1.
     *
     * @name Phaser.Display.Color#greenGL
     * @type {number}
     * @since 3.0.0
     */
    public var greenGL:Float;
    /**
     * The blue color value, normalized to the range 0 to 1.
     *
     * @name Phaser.Display.Color#blueGL
     * @type {number}
     * @since 3.0.0
     */
    public var blueGL:Float;
    /**
     * The alpha color value, normalized to the range 0 to 1.
     *
     * @name Phaser.Display.Color#alphaGL
     * @type {number}
     * @since 3.0.0
     */
    public var alphaGL:Float;
    /**
     * The red color value, normalized to the range 0 to 255.
     *
     * @name Phaser.Display.Color#red
     * @type {number}
     * @since 3.0.0
     */
    public var red:Float;
    /**
     * The green color value, normalized to the range 0 to 255.
     *
     * @name Phaser.Display.Color#green
     * @type {number}
     * @since 3.0.0
     */
    public var green:Float;
    /**
     * The blue color value, normalized to the range 0 to 255.
     *
     * @name Phaser.Display.Color#blue
     * @type {number}
     * @since 3.0.0
     */
    public var blue:Float;
    /**
     * The alpha color value, normalized to the range 0 to 255.
     *
     * @name Phaser.Display.Color#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * The hue color value. A number between 0 and 1.
     * This is the base color.
     *
     * @name Phaser.Display.Color#h
     * @type {number}
     * @since 3.13.0
     */
    public var h:Float;
    /**
     * The saturation color value. A number between 0 and 1.
     * This controls how much of the hue will be in the final color, where 1 is fully saturated and 0 will give you white.
     *
     * @name Phaser.Display.Color#s
     * @type {number}
     * @since 3.13.0
     */
    public var s:Float;
    /**
     * The lightness color value. A number between 0 and 1.
     * This controls how dark the color is. Where 1 is as bright as possible and 0 is black.
     *
     * @name Phaser.Display.Color#v
     * @type {number}
     * @since 3.13.0
     */
    public var v:Float;
    /**
     * Sets this color to be transparent. Sets all values to zero.
     *
     * @method Phaser.Display.Color#transparent
     * @since 3.0.0
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function transparent():phaser.display.Color;
    /**
     * Sets the color of this Color component.
     *
     * @method Phaser.Display.Color#setTo
     * @since 3.0.0
     *
     * @param {number} red - The red color value. A number between 0 and 255.
     * @param {number} green - The green color value. A number between 0 and 255.
     * @param {number} blue - The blue color value. A number between 0 and 255.
     * @param {number} [alpha=255] - The alpha value. A number between 0 and 255.
     * @param {boolean} [updateHSV=true] - Update the HSV values after setting the RGB values?
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function setTo(red:Float, green:Float, blue:Float, ?alpha:Float, ?updateHSV:Bool):phaser.display.Color;
    /**
     * Sets the red, green, blue and alpha GL values of this Color component.
     *
     * @method Phaser.Display.Color#setGLTo
     * @since 3.0.0
     *
     * @param {number} red - The red color value. A number between 0 and 1.
     * @param {number} green - The green color value. A number between 0 and 1.
     * @param {number} blue - The blue color value. A number between 0 and 1.
     * @param {number} [alpha=1] - The alpha value. A number between 0 and 1.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function setGLTo(red:Float, green:Float, blue:Float, ?alpha:Float):phaser.display.Color;
    /**
     * Sets the color based on the color object given.
     *
     * @method Phaser.Display.Color#setFromRGB
     * @since 3.0.0
     *
     * @param {Phaser.Types.Display.InputColorObject} color - An object containing `r`, `g`, `b` and optionally `a` values in the range 0 to 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function setFromRGB(color:phaser.types.display.InputColorObject):phaser.display.Color;
    /**
     * Sets the color based on the hue, saturation and lightness values given.
     *
     * @method Phaser.Display.Color#setFromHSV
     * @since 3.13.0
     *
     * @param {number} h - The hue, in the range 0 - 1. This is the base color.
     * @param {number} s - The saturation, in the range 0 - 1. This controls how much of the hue will be in the final color, where 1 is fully saturated and 0 will give you white.
     * @param {number} v - The value, in the range 0 - 1. This controls how dark the color is. Where 1 is as bright as possible and 0 is black.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function setFromHSV(h:Float, s:Float, v:Float):phaser.display.Color;
    /**
     * Returns a new Color component using the values from this one.
     *
     * @method Phaser.Display.Color#clone
     * @since 3.0.0
     *
     * @return {Phaser.Display.Color} A new Color object.
     */
    public function clone():phaser.display.Color;
    /**
     * Sets this Color object to be grayscaled based on the shade value given.
     *
     * @method Phaser.Display.Color#gray
     * @since 3.13.0
     *
     * @param {number} shade - A value between 0 and 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function gray(shade:Float):phaser.display.Color;
    /**
     * Sets this Color object to be a random color between the `min` and `max` values given.
     *
     * @method Phaser.Display.Color#random
     * @since 3.13.0
     *
     * @param {number} [min=0] - The minimum random color value. Between 0 and 255.
     * @param {number} [max=255] - The maximum random color value. Between 0 and 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function random(?min:Float, ?max:Float):phaser.display.Color;
    /**
     * Sets this Color object to be a random grayscale color between the `min` and `max` values given.
     *
     * @method Phaser.Display.Color#randomGray
     * @since 3.13.0
     *
     * @param {number} [min=0] - The minimum random color value. Between 0 and 255.
     * @param {number} [max=255] - The maximum random color value. Between 0 and 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function randomGray(?min:Float, ?max:Float):phaser.display.Color;
    /**
     * Increase the saturation of this Color by the percentage amount given.
     * The saturation is the amount of the base color in the hue.
     *
     * @method Phaser.Display.Color#saturate
     * @since 3.13.0
     *
     * @param {number} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function saturate(amount:Float):phaser.display.Color;
    /**
     * Decrease the saturation of this Color by the percentage amount given.
     * The saturation is the amount of the base color in the hue.
     *
     * @method Phaser.Display.Color#desaturate
     * @since 3.13.0
     *
     * @param {number} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function desaturate(amount:Float):phaser.display.Color;
    /**
     * Increase the lightness of this Color by the percentage amount given.
     *
     * @method Phaser.Display.Color#lighten
     * @since 3.13.0
     *
     * @param {number} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function lighten(amount:Float):phaser.display.Color;
    /**
     * Decrease the lightness of this Color by the percentage amount given.
     *
     * @method Phaser.Display.Color#darken
     * @since 3.13.0
     *
     * @param {number} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function darken(amount:Float):phaser.display.Color;
    /**
     * Brighten this Color by the percentage amount given.
     *
     * @method Phaser.Display.Color#brighten
     * @since 3.13.0
     *
     * @param {number} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function brighten(amount:Float):phaser.display.Color;
    /**
     * Return an array of Colors in a Color Spectrum.
     *
     * The spectrum colors flow in the order: red, yellow, green, blue.
     *
     * By default this function will return an array with 1024 elements in.
     *
     * However, you can reduce this to a smaller quantity if needed, by specitying the `limit` parameter.
     *
     * @function Phaser.Display.Color.ColorSpectrum
     * @since 3.50.0
     *
     * @param {number} [limit=1024] - How many colors should be returned? The maximum is 1024 but you can set a smaller quantity if required.
     *
     * @return {Phaser.Types.Display.ColorObject[]} An array containing `limit` parameter number of elements, where each contains a Color Object.
     */
    static public function ColorSpectrum(?limit:Float):Array<phaser.types.display.ColorObject>;
    /**
     * Converts the given color value into an Object containing r,g,b and a properties.
     *
     * @function Phaser.Display.Color.ColorToRGBA
     * @since 3.0.0
     *
     * @param {number} color - A color value, optionally including the alpha value.
     *
     * @return {Phaser.Types.Display.ColorObject} An object containing the parsed color values.
     */
    static public function ColorToRGBA(color:Float):phaser.types.display.ColorObject;
    /**
     * Returns a string containing a hex representation of the given color component.
     *
     * @function Phaser.Display.Color.ComponentToHex
     * @since 3.0.0
     *
     * @param {number} color - The color channel to get the hex value for, must be a value between 0 and 255.
     *
     * @return {string} A string of length 2 characters, i.e. 255 = ff, 100 = 64.
     */
    static public function ComponentToHex(color:Float):String;
    /**
     * Given 3 separate color values this will return an integer representation of it.
     *
     * @function Phaser.Display.Color.GetColor
     * @since 3.0.0
     *
     * @param {number} red - The red color value. A number between 0 and 255.
     * @param {number} green - The green color value. A number between 0 and 255.
     * @param {number} blue - The blue color value. A number between 0 and 255.
     *
     * @return {number} The combined color value.
     */
    static public function GetColor(red:Float, green:Float, blue:Float):Float;
    /**
     * Given an alpha and 3 color values this will return an integer representation of it.
     *
     * @function Phaser.Display.Color.GetColor32
     * @since 3.0.0
     *
     * @param {number} red - The red color value. A number between 0 and 255.
     * @param {number} green - The green color value. A number between 0 and 255.
     * @param {number} blue - The blue color value. A number between 0 and 255.
     * @param {number} alpha - The alpha color value. A number between 0 and 255.
     *
     * @return {number} The combined color value.
     */
    static public function GetColor32(red:Float, green:Float, blue:Float, alpha:Float):Float;
    /**
     * Converts HSL (hue, saturation and lightness) values to a Phaser Color object.
     *
     * @function Phaser.Display.Color.HSLToColor
     * @since 3.0.0
     *
     * @param {number} h - The hue value in the range 0 to 1.
     * @param {number} s - The saturation value in the range 0 to 1.
     * @param {number} l - The lightness value in the range 0 to 1.
     *
     * @return {Phaser.Display.Color} A Color object created from the results of the h, s and l values.
     */
    static public function HSLToColor(h:Float, s:Float, l:Float):phaser.display.Color;
    /**
     * Get HSV color wheel values in an array which will be 360 elements in size.
     *
     * @function Phaser.Display.Color.HSVColorWheel
     * @since 3.0.0
     *
     * @param {number} [s=1] - The saturation, in the range 0 - 1.
     * @param {number} [v=1] - The value, in the range 0 - 1.
     *
     * @return {Phaser.Types.Display.ColorObject[]} An array containing 360 elements, where each contains a single numeric value corresponding to the color at that point in the HSV color wheel.
     */
    static public function HSVColorWheel(?s:Float, ?v:Float):Array<phaser.types.display.ColorObject>;
    /**
     * Converts a HSV (hue, saturation and value) color set to RGB.
     *
     * Conversion formula from https://en.wikipedia.org/wiki/HSL_and_HSV
     *
     * Assumes HSV values are contained in the set [0, 1].
     *
     * @function Phaser.Display.Color.HSVToRGB
     * @since 3.0.0
     *
     * @param {number} h - The hue, in the range 0 - 1. This is the base color.
     * @param {number} s - The saturation, in the range 0 - 1. This controls how much of the hue will be in the final color, where 1 is fully saturated and 0 will give you white.
     * @param {number} v - The value, in the range 0 - 1. This controls how dark the color is. Where 1 is as bright as possible and 0 is black.
     * @param {(Phaser.Types.Display.ColorObject|Phaser.Display.Color)} [out] - A Color object to store the results in. If not given a new ColorObject will be created.
     *
     * @return {(Phaser.Types.Display.ColorObject|Phaser.Display.Color)} An object with the red, green and blue values set in the r, g and b properties.
     */
    static public function HSVToRGB(h:Float, s:Float, v:Float, ?out:Dynamic):phaser.types.display.ColorObject;
    /**
     * Converts a hex string into a Phaser Color object.
     *
     * The hex string can supplied as `'#0033ff'` or the short-hand format of `'#03f'`; it can begin with an optional "#" or "0x", or be unprefixed.
     *
     * An alpha channel is _not_ supported.
     *
     * @function Phaser.Display.Color.HexStringToColor
     * @since 3.0.0
     *
     * @param {string} hex - The hex color value to convert, such as `#0033ff` or the short-hand format: `#03f`.
     *
     * @return {Phaser.Display.Color} A Color object populated by the values of the given string.
     */
    static public function HexStringToColor(hex:String):phaser.display.Color;
    /**
     * Converts a hue to an RGB color.
     * Based on code by Michael Jackson (https://github.com/mjijackson)
     *
     * @function Phaser.Display.Color.HueToComponent
     * @since 3.0.0
     *
     * @param {number} p
     * @param {number} q
     * @param {number} t
     *
     * @return {number} The combined color value.
     */
    static public function HueToComponent(p:Float, q:Float, t:Float):Float;
    /**
     * Converts the given color value into an instance of a Color object.
     *
     * @function Phaser.Display.Color.IntegerToColor
     * @since 3.0.0
     *
     * @param {number} input - The color value to convert into a Color object.
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    static public function IntegerToColor(input:Float):phaser.display.Color;
    /**
     * Return the component parts of a color as an Object with the properties alpha, red, green, blue.
     *
     * Alpha will only be set if it exists in the given color (0xAARRGGBB)
     *
     * @function Phaser.Display.Color.IntegerToRGB
     * @since 3.0.0
     *
     * @param {number} input - The color value to convert into a Color object.
     *
     * @return {Phaser.Types.Display.ColorObject} An object with the red, green and blue values set in the r, g and b properties.
     */
    static public function IntegerToRGB(input:Float):phaser.types.display.ColorObject;
    /**
     * Converts an object containing `r`, `g`, `b` and `a` properties into a Color class instance.
     *
     * @function Phaser.Display.Color.ObjectToColor
     * @since 3.0.0
     *
     * @param {Phaser.Types.Display.InputColorObject} input - An object containing `r`, `g`, `b` and `a` properties in the range 0 to 255.
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    static public function ObjectToColor(input:phaser.types.display.InputColorObject):phaser.display.Color;
    /**
     * Converts a CSS 'web' string into a Phaser Color object.
     *
     * The web string can be in the format `'rgb(r,g,b)'` or `'rgba(r,g,b,a)'` where r/g/b are in the range [0..255] and a is in the range [0..1].
     *
     * @function Phaser.Display.Color.RGBStringToColor
     * @since 3.0.0
     *
     * @param {string} rgb - The CSS format color string, using the `rgb` or `rgba` format.
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    static public function RGBStringToColor(rgb:String):phaser.display.Color;
    /**
     * Converts an RGB color value to HSV (hue, saturation and value).
     * Conversion formula from http://en.wikipedia.org/wiki/HSL_color_space.
     * Assumes RGB values are contained in the set [0, 255] and returns h, s and v in the set [0, 1].
     * Based on code by Michael Jackson (https://github.com/mjijackson)
     *
     * @function Phaser.Display.Color.RGBToHSV
     * @since 3.0.0
     *
     * @param {number} r - The red color value. A number between 0 and 255.
     * @param {number} g - The green color value. A number between 0 and 255.
     * @param {number} b - The blue color value. A number between 0 and 255.
     * @param {(Phaser.Types.Display.HSVColorObject|Phaser.Display.Color)} [out] - An object to store the color values in. If not given an HSV Color Object will be created.
     *
     * @return {(Phaser.Types.Display.HSVColorObject|Phaser.Display.Color)} An object with the properties `h`, `s` and `v` set.
     */
    static public function RGBToHSV(r:Float, g:Float, b:Float, ?out:Dynamic):phaser.types.display.HSVColorObject;
    /**
     * Converts the color values into an HTML compatible color string, prefixed with either `#` or `0x`.
     *
     * @function Phaser.Display.Color.RGBToString
     * @since 3.0.0
     *
     * @param {number} r - The red color value. A number between 0 and 255.
     * @param {number} g - The green color value. A number between 0 and 255.
     * @param {number} b - The blue color value. A number between 0 and 255.
     * @param {number} [a=255] - The alpha value. A number between 0 and 255.
     * @param {string} [prefix=#] - The prefix of the string. Either `#` or `0x`.
     *
     * @return {string} A string-based representation of the color values.
     */
    static public function RGBToString(r:Float, g:Float, b:Float, ?a:Float, ?prefix:String):String;
    /**
     * Creates a new Color object where the r, g, and b values have been set to random values
     * based on the given min max values.
     *
     * @function Phaser.Display.Color.RandomRGB
     * @since 3.0.0
     *
     * @param {number} [min=0] - The minimum value to set the random range from (between 0 and 255)
     * @param {number} [max=255] - The maximum value to set the random range from (between 0 and 255)
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    static public function RandomRGB(?min:Float, ?max:Float):phaser.display.Color;
    /**
     * Converts the given source color value into an instance of a Color class.
     * The value can be either a string, prefixed with `rgb` or a hex string, a number or an Object.
     *
     * @function Phaser.Display.Color.ValueToColor
     * @since 3.0.0
     *
     * @param {(string|number|Phaser.Types.Display.InputColorObject)} input - The source color value to convert.
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    static public function ValueToColor(input:Dynamic):phaser.display.Color;
}
