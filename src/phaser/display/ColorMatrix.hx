package phaser.display;

/**
 * @classdesc
 * The ColorMatrix class creates a 5x4 matrix that can be used in shaders and graphics
 * operations. It provides methods required to modify the color values, such as adjusting
 * the brightness, setting a sepia tone, hue rotation and more.
 *
 * Use the method `getData` to return a Float32Array containing the current color values.
 *
 * @class ColorMatrix
 * @memberof Phaser.Display
 * @constructor
 * @since 3.50.0
 */
@:native("Phaser.Display.ColorMatrix")
extern class ColorMatrix {
    public function new();
    /**
     * The value that determines how much of the original color is used
     * when mixing the colors. A value between 0 (all original) and 1 (all final)
     *
     * @name Phaser.Display.ColorMatrix#alpha
     * @type {number}
     * @since 3.50.0
     */
    public var alpha:Float;
    /**
     * Sets this ColorMatrix from the given array of color values.
     *
     * @method Phaser.Display.ColorMatrix#set
     * @since 3.50.0
     *
     * @param {number[]} value - The ColorMatrix values to set.
     *
     * @return {this} This ColorMatrix instance.
     */
    public function set(value:Array<Float>):Dynamic;
    /**
     * Resets the ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#reset
     * @since 3.50.0
     *
     * @return {this} This ColorMatrix instance.
     */
    public function reset():Dynamic;
    /**
     * Gets the ColorMatrix as a Float32Array.
     *
     * Can be used directly as a 1fv shader uniform value.
     *
     * @method Phaser.Display.ColorMatrix#getData
     * @since 3.50.0
     *
     * @return {Float32Array} The ColorMatrix as a Float32Array.
     */
    public function getData():js.lib.Float32Array;
    /**
     * Changes the brightness of this ColorMatrix by the given amount.
     *
     * @method Phaser.Display.ColorMatrix#brightness
     * @since 3.50.0
     *
     * @param {number} [value=0] - The amount of brightness to apply to this ColorMatrix. Between 0 (black) and 1.
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function brightness(?value:Float, ?multiply:Bool):Dynamic;
    /**
     * Changes the saturation of this ColorMatrix by the given amount.
     *
     * @method Phaser.Display.ColorMatrix#saturate
     * @since 3.50.0
     *
     * @param {number} [value=0] - The amount of saturation to apply to this ColorMatrix.
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function saturate(?value:Float, ?multiply:Bool):Dynamic;
    /**
     * Desaturates this ColorMatrix (removes color from it).
     *
     * @method Phaser.Display.ColorMatrix#saturation
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function saturation(?multiply:Bool):Dynamic;
    /**
     * Rotates the hues of this ColorMatrix by the value given.
     *
     * @method Phaser.Display.ColorMatrix#hue
     * @since 3.50.0
     *
     * @param {number} [rotation=0] - The amount of hue rotation to apply to this ColorMatrix, in degrees.
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function hue(?rotation:Float, ?multiply:Bool):Dynamic;
    /**
     * Sets this ColorMatrix to be grayscale.
     *
     * @method Phaser.Display.ColorMatrix#grayscale
     * @since 3.50.0
     *
     * @param {number} [value=1] - The grayscale scale (0 is black).
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function grayscale(?value:Float, ?multiply:Bool):Dynamic;
    /**
     * Sets this ColorMatrix to be black and white.
     *
     * @method Phaser.Display.ColorMatrix#blackWhite
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function blackWhite(?multiply:Bool):Dynamic;
    /**
     * Change the contrast of this ColorMatrix by the amount given.
     *
     * @method Phaser.Display.ColorMatrix#contrast
     * @since 3.50.0
     *
     * @param {number} [value=0] - The amount of contrast to apply to this ColorMatrix.
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function contrast(?value:Float, ?multiply:Bool):Dynamic;
    /**
     * Converts this ColorMatrix to have negative values.
     *
     * @method Phaser.Display.ColorMatrix#negative
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function negative(?multiply:Bool):Dynamic;
    /**
     * Apply a desaturated luminance to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#desaturateLuminance
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function desaturateLuminance(?multiply:Bool):Dynamic;
    /**
     * Applies a sepia tone to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#sepia
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function sepia(?multiply:Bool):Dynamic;
    /**
     * Applies a night vision tone to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#night
     * @since 3.50.0
     *
     * @param {number} [intensity=0.1] - The intensity of this effect.
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function night(?intensity:Float, ?multiply:Bool):Dynamic;
    /**
     * Applies a trippy color tone to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#lsd
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function lsd(?multiply:Bool):Dynamic;
    /**
     * Applies a brown tone to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#brown
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function brown(?multiply:Bool):Dynamic;
    /**
     * Applies a vintage pinhole color effect to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#vintagePinhole
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function vintagePinhole(?multiply:Bool):Dynamic;
    /**
     * Applies a kodachrome color effect to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#kodachrome
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function kodachrome(?multiply:Bool):Dynamic;
    /**
     * Applies a technicolor color effect to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#technicolor
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function technicolor(?multiply:Bool):Dynamic;
    /**
     * Applies a polaroid color effect to this ColorMatrix.
     *
     * @method Phaser.Display.ColorMatrix#polaroid
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function polaroid(?multiply:Bool):Dynamic;
    /**
     * Shifts the values of this ColorMatrix into BGR order.
     *
     * @method Phaser.Display.ColorMatrix#shiftToBGR
     * @since 3.50.0
     *
     * @param {boolean} [multiply=false] - Multiply the resulting ColorMatrix (`true`), or set it (`false`) ?
     *
     * @return {this} This ColorMatrix instance.
     */
    public function shiftToBGR(?multiply:Bool):Dynamic;
    /**
     * Multiplies the two given matrices.
     *
     * @method Phaser.Display.ColorMatrix#multiply
     * @since 3.50.0
     *
     * @param {number[]} a - The 5x4 array to multiply with ColorMatrix._matrix.
     *
     * @return {this} This ColorMatrix instance.
     */
    public function multiply(a:Array<Float>):Dynamic;
}
