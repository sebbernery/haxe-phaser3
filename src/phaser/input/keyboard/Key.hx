package phaser.input.keyboard;

/**
 * @classdesc
 * A generic Key object which can be passed to the Process functions (and so on)
 * keycode must be an integer
 *
 * @class Key
 * @memberof Phaser.Input.Keyboard
 * @constructor
 * @since 3.0.0
 *
 * @param {integer} keyCode - The keycode of this key.
 */
@:native("Phaser.Input.Keyboard.Key")
extern class Key {
    public function new(keyCode:Int);
    /**
     * The keycode of this key.
     *
     * @name Phaser.Input.Keyboard.Key#keyCode
     * @type {integer}
     * @since 3.0.0
     */
    public var keyCode:Int;
    /**
     * The original DOM event.
     *
     * @name Phaser.Input.Keyboard.Key#originalEvent
     * @type {KeyboardEvent}
     * @since 3.0.0
     */
    public var originalEvent:js.html.KeyboardEvent;
    /**
     * Should this Key prevent event propagation?
     *
     * @name Phaser.Input.Keyboard.Key#preventDefault
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var preventDefault:Bool;
    /**
     * Can this Key be processed?
     *
     * @name Phaser.Input.Keyboard.Key#enabled
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var enabled:Bool;
    /**
     * The "down" state of the key. This will remain `true` for as long as the keyboard thinks this key is held down.
     *
     * @name Phaser.Input.Keyboard.Key#isDown
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var isDown:Bool;
    /**
     * The "up" state of the key. This will remain `true` for as long as the keyboard thinks this key is up.
     *
     * @name Phaser.Input.Keyboard.Key#isUp
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var isUp:Bool;
    /**
     * The down state of the ALT key, if pressed at the same time as this key.
     *
     * @name Phaser.Input.Keyboard.Key#altKey
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var altKey:Bool;
    /**
     * The down state of the CTRL key, if pressed at the same time as this key.
     *
     * @name Phaser.Input.Keyboard.Key#ctrlKey
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var ctrlKey:Bool;
    /**
     * The down state of the SHIFT key, if pressed at the same time as this key.
     *
     * @name Phaser.Input.Keyboard.Key#shiftKey
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var shiftKey:Bool;
    /**
     * The location of the modifier key. 0 for standard (or unknown), 1 for left, 2 for right, 3 for numpad.
     *
     * @name Phaser.Input.Keyboard.Key#location
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var location:Float;
    /**
     * The timestamp when the key was last pressed down.
     *
     * @name Phaser.Input.Keyboard.Key#timeDown
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var timeDown:Float;
    /**
     * The number of milliseconds this key was held down for in the previous down - up sequence.
     *
     * @name Phaser.Input.Keyboard.Key#duration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * The timestamp when the key was last released.
     *
     * @name Phaser.Input.Keyboard.Key#timeUp
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var timeUp:Float;
    /**
     * If a key is held down this holds down the number of times the key has 'repeated'.
     *
     * @name Phaser.Input.Keyboard.Key#repeats
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var repeats:Float;
    /**
     * Resets this Key object back to its default un-pressed state.
     *
     * @method Phaser.Input.Keyboard.Key.reset
     * @since 3.6.0
     *
     * @return {Phaser.Input.Keyboard.Key} This Key instance.
     */
    public function reset():phaser.input.keyboard.Key;
}
