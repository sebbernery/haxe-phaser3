package phaser.display;

/**
 * @classdesc
 * The Color class holds a single color value and allows for easy modification and reading of it.
 *
 * @class Color
 * @memberof Phaser.Display
 * @constructor
 * @since 3.0.0
 *
 * @param {integer} [red=0] - The red color value. A number between 0 and 255.
 * @param {integer} [green=0] - The green color value. A number between 0 and 255.
 * @param {integer} [blue=0] - The blue color value. A number between 0 and 255.
 * @param {integer} [alpha=255] - The alpha value. A number between 0 and 255.
 */
@:native("Phaser.Display.Color")
extern class Color {
    public function new(?red:Int, ?green:Int, ?blue:Int, ?alpha:Int);
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
     * @param {integer} red - The red color value. A number between 0 and 255.
     * @param {integer} green - The green color value. A number between 0 and 255.
     * @param {integer} blue - The blue color value. A number between 0 and 255.
     * @param {integer} [alpha=255] - The alpha value. A number between 0 and 255.
     * @param {boolean} [updateHSV=true] - Update the HSV values after setting the RGB values?
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function setTo(red:Int, green:Int, blue:Int, ?alpha:Int, ?updateHSV:Bool):phaser.display.Color;
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
     * @param {InputColorObject} color - An object containing `r`, `g`, `b` and optionally `a` values in the range 0 to 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function setFromRGB(color:InputColorObject):phaser.display.Color;
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
     * @param {integer} shade - A value between 0 and 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function gray(shade:Int):phaser.display.Color;
    /**
     * Sets this Color object to be a random color between the `min` and `max` values given.
     *
     * @method Phaser.Display.Color#random
     * @since 3.13.0
     *
     * @param {integer} [min=0] - The minimum random color value. Between 0 and 255.
     * @param {integer} [max=255] - The maximum random color value. Between 0 and 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function random(?min:Int, ?max:Int):phaser.display.Color;
    /**
     * Sets this Color object to be a random grayscale color between the `min` and `max` values given.
     *
     * @method Phaser.Display.Color#randomGray
     * @since 3.13.0
     *
     * @param {integer} [min=0] - The minimum random color value. Between 0 and 255.
     * @param {integer} [max=255] - The maximum random color value. Between 0 and 255.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function randomGray(?min:Int, ?max:Int):phaser.display.Color;
    /**
     * Increase the saturation of this Color by the percentage amount given.
     * The saturation is the amount of the base color in the hue.
     *
     * @method Phaser.Display.Color#saturate
     * @since 3.13.0
     *
     * @param {integer} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function saturate(amount:Int):phaser.display.Color;
    /**
     * Decrease the saturation of this Color by the percentage amount given.
     * The saturation is the amount of the base color in the hue.
     *
     * @method Phaser.Display.Color#desaturate
     * @since 3.13.0
     *
     * @param {integer} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function desaturate(amount:Int):phaser.display.Color;
    /**
     * Increase the lightness of this Color by the percentage amount given.
     *
     * @method Phaser.Display.Color#lighten
     * @since 3.13.0
     *
     * @param {integer} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function lighten(amount:Int):phaser.display.Color;
    /**
     * Decrease the lightness of this Color by the percentage amount given.
     *
     * @method Phaser.Display.Color#darken
     * @since 3.13.0
     *
     * @param {integer} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function darken(amount:Int):phaser.display.Color;
    /**
     * Brighten this Color by the percentage amount given.
     *
     * @method Phaser.Display.Color#brighten
     * @since 3.13.0
     *
     * @param {integer} amount - The percentage amount to change this color by. A value between 0 and 100.
     *
     * @return {Phaser.Display.Color} This Color object.
     */
    public function brighten(amount:Int):phaser.display.Color;
    /**
     * Converts the given color value into an Object containing r,g,b and a properties.
     *
     * @function Phaser.Display.Color.ColorToRGBA
     * @since 3.0.0
     *
     * @param {number} color - A color value, optionally including the alpha value.
     *
     * @return {ColorObject} An object containing the parsed color values.
     */
    public function ColorToRGBA(color:Float):ColorObject;
    /**
     * Returns a string containing a hex representation of the given color component.
     *
     * @function Phaser.Display.Color.ComponentToHex
     * @since 3.0.0
     *
     * @param {integer} color - The color channel to get the hex value for, must be a value between 0 and 255.
     *
     * @return {string} A string of length 2 characters, i.e. 255 = ff, 100 = 64.
     */
    public function ComponentToHex(color:Int):String;
    /**
     * Given 3 separate color values this will return an integer representation of it.
     *
     * @function Phaser.Display.Color.GetColor
     * @since 3.0.0
     *
     * @param {integer} red - The red color value. A number between 0 and 255.
     * @param {integer} green - The green color value. A number between 0 and 255.
     * @param {integer} blue - The blue color value. A number between 0 and 255.
     *
     * @return {number} The combined color value.
     */
    public function GetColor(red:Int, green:Int, blue:Int):Float;
    /**
     * Given an alpha and 3 color values this will return an integer representation of it.
     *
     * @function Phaser.Display.Color.GetColor32
     * @since 3.0.0
     *
     * @param {integer} red - The red color value. A number between 0 and 255.
     * @param {integer} green - The green color value. A number between 0 and 255.
     * @param {integer} blue - The blue color value. A number between 0 and 255.
     * @param {integer} alpha - The alpha color value. A number between 0 and 255.
     *
     * @return {number} The combined color value.
     */
    public function GetColor32(red:Int, green:Int, blue:Int, alpha:Int):Float;
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
    public function HSLToColor(h:Float, s:Float, l:Float):phaser.display.Color;
    /**
     * Get HSV color wheel values in an array which will be 360 elements in size.
     *
     * @function Phaser.Display.Color.HSVColorWheel
     * @since 3.0.0
     *
     * @param {number} [s=1] - The saturation, in the range 0 - 1.
     * @param {number} [v=1] - The value, in the range 0 - 1.
     *
     * @return {ColorObject[]} An array containing 360 elements, where each contains a single numeric value corresponding to the color at that point in the HSV color wheel.
     */
    public function HSVColorWheel(?s:Float, ?v:Float):Array<ColorObject>;
    /**
     * Converts an HSV (hue, saturation and value) color value to RGB.
     * Conversion formula from http://en.wikipedia.org/wiki/HSL_color_space.
     * Assumes HSV values are contained in the set [0, 1].
     * Based on code by Michael Jackson (https://github.com/mjijackson)
     *
     * @function Phaser.Display.Color.HSVToRGB
     * @since 3.0.0
     *
     * @param {number} h - The hue, in the range 0 - 1. This is the base color.
     * @param {number} s - The saturation, in the range 0 - 1. This controls how much of the hue will be in the final color, where 1 is fully saturated and 0 will give you white.
     * @param {number} v - The value, in the range 0 - 1. This controls how dark the color is. Where 1 is as bright as possible and 0 is black.
     * @param {(ColorObject|Phaser.Display.Color)} [out] - A Color object to store the results in. If not given a new ColorObject will be created.
     *
     * @return {(ColorObject|Phaser.Display.Color)} An object with the red, green and blue values set in the r, g and b properties.
     */
    public function HSVToRGB(h:Float, s:Float, v:Float, ?out:Dynamic):ColorObject;
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
    public function HexStringToColor(hex:String):phaser.display.Color;
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
    public function HueToComponent(p:Float, q:Float, t:Float):Float;
    /**
     * Converts the given color value into an instance of a Color object.
     *
     * @function Phaser.Display.Color.IntegerToColor
     * @since 3.0.0
     *
     * @param {integer} input - The color value to convert into a Color object.
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    public function IntegerToColor(input:Int):phaser.display.Color;
    /**
     * Return the component parts of a color as an Object with the properties alpha, red, green, blue.
     *
     * Alpha will only be set if it exists in the given color (0xAARRGGBB)
     *
     * @function Phaser.Display.Color.IntegerToRGB
     * @since 3.0.0
     *
     * @param {integer} input - The color value to convert into a Color object.
     *
     * @return {ColorObject} An object with the red, green and blue values set in the r, g and b properties.
     */
    public function IntegerToRGB(input:Int):ColorObject;
    /**
     * Converts an object containing `r`, `g`, `b` and `a` properties into a Color class instance.
     *
     * @function Phaser.Display.Color.ObjectToColor
     * @since 3.0.0
     *
     * @param {InputColorObject} input - An object containing `r`, `g`, `b` and `a` properties in the range 0 to 255.
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    public function ObjectToColor(input:InputColorObject):phaser.display.Color;
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
    public function RGBStringToColor(rgb:String):phaser.display.Color;
    /**
     * Converts an RGB color value to HSV (hue, saturation and value).
     * Conversion forumla from http://en.wikipedia.org/wiki/HSL_color_space.
     * Assumes RGB values are contained in the set [0, 255] and returns h, s and v in the set [0, 1].
     * Based on code by Michael Jackson (https://github.com/mjijackson)
     *
     * @function Phaser.Display.Color.RGBToHSV
     * @since 3.0.0
     *
     * @param {integer} r - The red color value. A number between 0 and 255.
     * @param {integer} g - The green color value. A number between 0 and 255.
     * @param {integer} b - The blue color value. A number between 0 and 255.
     * @param {(HSVColorObject|Phaser.Display.Color)} [out] - An object to store the color values in. If not given an HSV Color Object will be created.
     *
     * @return {(HSVColorObject|Phaser.Display.Color)} An object with the properties `h`, `s` and `v` set.
     */
    public function RGBToHSV(r:Int, g:Int, b:Int, ?out:Dynamic):HSVColorObject;
    /**
     * Converts the color values into an HTML compatible color string, prefixed with either `#` or `0x`.
     *
     * @function Phaser.Display.Color.RGBToString
     * @since 3.0.0
     *
     * @param {integer} r - The red color value. A number between 0 and 255.
     * @param {integer} g - The green color value. A number between 0 and 255.
     * @param {integer} b - The blue color value. A number between 0 and 255.
     * @param {integer} [a=255] - The alpha value. A number between 0 and 255.
     * @param {string} [prefix=#] - The prefix of the string. Either `#` or `0x`.
     *
     * @return {string} A string-based representation of the color values.
     */
    public function RGBToString(r:Int, g:Int, b:Int, ?a:Int, ?prefix:String):String;
    /**
     * Creates a new Color object where the r, g, and b values have been set to random values
     * based on the given min max values.
     *
     * @function Phaser.Display.Color.RandomRGB
     * @since 3.0.0
     *
     * @param {integer} [min=0] - The minimum value to set the random range from (between 0 and 255)
     * @param {integer} [max=255] - The maximum value to set the random range from (between 0 and 255)
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    public function RandomRGB(?min:Int, ?max:Int):phaser.display.Color;
    /**
     * Converts the given source color value into an instance of a Color class.
     * The value can be either a string, prefixed with `rgb` or a hex string, a number or an Object.
     *
     * @function Phaser.Display.Color.ValueToColor
     * @since 3.0.0
     *
     * @param {(string|number|InputColorObject)} input - The source color value to convert.
     *
     * @return {Phaser.Display.Color} A Color object.
     */
    public function ValueToColor(input:Dynamic):phaser.display.Color;
}
