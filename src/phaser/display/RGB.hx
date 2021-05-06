package phaser.display;

/**
 * @classdesc
 * The RGB class holds a single color value and allows for easy modification and reading of it,
 * with optional on-change callback notification and a dirty flag.
 *
 * @class RGB
 * @memberof Phaser.Display
 * @constructor
 * @since 3.50.0
 *
 * @param {number} [red=0] - The red color value. A number between 0 and 1.
 * @param {number} [green=0] - The green color value. A number between 0 and 1.
 * @param {number} [blue=0] - The blue color value. A number between 0 and 1.
 */
@:native("Phaser.Display.RGB")
extern class RGB {
    public function new(?red:Float, ?green:Float, ?blue:Float);
    /**
     * This callback will be invoked each time one of the RGB color values change.
     *
     * The callback is sent the new color values as the parameters.
     *
     * @name Phaser.Display.RGB#onChangeCallback
     * @type {function}
     * @since 3.50.0
     */
    public var onChangeCallback:Dynamic;
    /**
     * Is this color dirty?
     *
     * @name Phaser.Display.RGB#dirty
     * @type {boolean}
     * @since 3.50.0
     */
    public var dirty:Bool;
    /**
     * The red color value. Between 0 and 1.
     *
     * Changing this property will flag this RGB object as being dirty
     * and invoke the `onChangeCallback` , if set.
     *
     * @name Phaser.Display.RGB#r
     * @type {number}
     * @since 3.50.0
     */
    public var r:Float;
    /**
     * The green color value. Between 0 and 1.
     *
     * Changing this property will flag this RGB object as being dirty
     * and invoke the `onChangeCallback` , if set.
     *
     * @name Phaser.Display.RGB#g
     * @type {number}
     * @since 3.50.0
     */
    public var g:Float;
    /**
     * The blue color value. Between 0 and 1.
     *
     * Changing this property will flag this RGB object as being dirty
     * and invoke the `onChangeCallback` , if set.
     *
     * @name Phaser.Display.RGB#b
     * @type {number}
     * @since 3.50.0
     */
    public var b:Float;
    /**
     * Sets the red, green and blue values of this RGB object, flags it as being
     * dirty and then invokes the `onChangeCallback`, if set.
     *
     * @method Phaser.Display.RGB#set
     * @since 3.50.0
     *
     * @param {number} [red=0] - The red color value. A number between 0 and 1.
     * @param {number} [green=0] - The green color value. A number between 0 and 1.
     * @param {number} [blue=0] - The blue color value. A number between 0 and 1.
     *
     * @return {this} This RGB instance.
     */
    public function set(?red:Float, ?green:Float, ?blue:Float):Dynamic;
    /**
     * Compares the given rgb parameters with those in this object and returns
     * a boolean `true` value if they are equal, otherwise it returns `false`.
     *
     * @method Phaser.Display.RGB#equals
     * @since 3.50.0
     *
     * @param {number} red - The red value to compare with this object.
     * @param {number} green - The green value to compare with this object.
     * @param {number} blue - The blue value to compare with this object.
     *
     * @return {boolean} `true` if the given values match those in this object, otherwise `false`.
     */
    public function equals(red:Float, green:Float, blue:Float):Bool;
    /**
     * Internal on change handler. Sets this object as being dirty and
     * then invokes the `onChangeCallback`, if set, passing in the
     * new RGB values.
     *
     * @method Phaser.Display.RGB#onChange
     * @since 3.50.0
     */
    public function onChange():Void;
    /**
     * Nulls any external references this object contains.
     *
     * @method Phaser.Display.RGB#destroy
     * @since 3.50.0
     */
    public function destroy():Void;
}
