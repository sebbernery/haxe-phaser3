package phaser.display.color;

/**
 * @namespace Phaser.Display.Color.Interpolate
 * @memberof Phaser.Display.Color
 * @since 3.0.0
 */
@:native("Phaser.Display.Color.Interpolate")
extern class Interpolate {
    public function new();
    /**
     * Interpolates between the two given color ranges over the length supplied.
     *
     * @function Phaser.Display.Color.Interpolate.RGBWithRGB
     * @memberof Phaser.Display.Color.Interpolate
     * @static
     * @since 3.0.0
     *
     * @param {number} r1 - Red value.
     * @param {number} g1 - Blue value.
     * @param {number} b1 - Green value.
     * @param {number} r2 - Red value.
     * @param {number} g2 - Blue value.
     * @param {number} b2 - Green value.
     * @param {number} [length=100] - Distance to interpolate over.
     * @param {number} [index=0] - Index to start from.
     *
     * @return {Phaser.Types.Display.ColorObject} An object containing the interpolated color values.
     */
    static public function RGBWithRGB(r1:Float, g1:Float, b1:Float, r2:Float, g2:Float, b2:Float, ?length:Float, ?index:Float):phaser.types.display.ColorObject;
    /**
     * Interpolates between the two given color objects over the length supplied.
     *
     * @function Phaser.Display.Color.Interpolate.ColorWithColor
     * @memberof Phaser.Display.Color.Interpolate
     * @static
     * @since 3.0.0
     *
     * @param {Phaser.Display.Color} color1 - The first Color object.
     * @param {Phaser.Display.Color} color2 - The second Color object.
     * @param {number} [length=100] - Distance to interpolate over.
     * @param {number} [index=0] - Index to start from.
     *
     * @return {Phaser.Types.Display.ColorObject} An object containing the interpolated color values.
     */
    static public function ColorWithColor(color1:phaser.display.Color, color2:phaser.display.Color, ?length:Float, ?index:Float):phaser.types.display.ColorObject;
    /**
     * Interpolates between the Color object and color values over the length supplied.
     *
     * @function Phaser.Display.Color.Interpolate.ColorWithRGB
     * @memberof Phaser.Display.Color.Interpolate
     * @static
     * @since 3.0.0
     *
     * @param {Phaser.Display.Color} color1 - The first Color object.
     * @param {number} r - Red value.
     * @param {number} g - Blue value.
     * @param {number} b - Green value.
     * @param {number} [length=100] - Distance to interpolate over.
     * @param {number} [index=0] - Index to start from.
     *
     * @return {Phaser.Types.Display.ColorObject} An object containing the interpolated color values.
     */
    static public function ColorWithRGB(color1:phaser.display.Color, r:Float, g:Float, b:Float, ?length:Float, ?index:Float):phaser.types.display.ColorObject;
}
