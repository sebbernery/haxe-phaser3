package phaser.input.keyboard;

/**
 * @classdesc
 * A generic Key object which can be passed to the Process functions (and so on)
 * keycode must be an integer
 *
 * @class Key
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Input.Keyboard
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.Keyboard.KeyboardPlugin} plugin - The Keyboard Plugin instance that owns this Key object.
 * @param {number} keyCode - The keycode of this key.
 */
@:native("Phaser.Input.Keyboard.Key")
extern class Key extends phaser.events.EventEmitter {
    public function new(plugin:phaser.input.keyboard.KeyboardPlugin, keyCode:Float);
    /**
     * The Keyboard Plugin instance that owns this Key object.
     *
     * @name Phaser.Input.Keyboard.Key#plugin
     * @type {Phaser.Input.Keyboard.KeyboardPlugin}
     * @since 3.17.0
     */
    public var plugin:phaser.input.keyboard.KeyboardPlugin;
    /**
     * The keycode of this key.
     *
     * @name Phaser.Input.Keyboard.Key#keyCode
     * @type {number}
     * @since 3.0.0
     */
    public var keyCode:Float;
    /**
     * The original DOM event.
     *
     * @name Phaser.Input.Keyboard.Key#originalEvent
     * @type {KeyboardEvent}
     * @since 3.0.0
     */
    public var originalEvent:js.html.KeyboardEvent;
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
     * The down state of the Meta key, if pressed at the same time as this key.
     * On a Mac the Meta Key is the Command key. On Windows keyboards, it's the Windows key.
     *
     * @name Phaser.Input.Keyboard.Key#metaKey
     * @type {boolean}
     * @default false
     * @since 3.16.0
     */
    public var metaKey:Bool;
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
     * This value isn't updated every game step, only when the Key changes state.
     * To get the current duration use the `getDuration` method.
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
     * When a key is held down should it continuously fire the `down` event each time it repeats?
     *
     * By default it will emit the `down` event just once, but if you wish to receive the event
     * for each repeat as well, enable this property.
     *
     * @name Phaser.Input.Keyboard.Key#emitOnRepeat
     * @type {boolean}
     * @default false
     * @since 3.16.0
     */
    public var emitOnRepeat:Bool;
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
     * Controls if this Key will continuously emit a `down` event while being held down (true),
     * or emit the event just once, on first press, and then skip future events (false).
     *
     * @method Phaser.Input.Keyboard.Key#setEmitOnRepeat
     * @since 3.16.0
     *
     * @param {boolean} value - Emit `down` events on repeated key down actions, or just once?
     *
     * @return {this} This Key instance.
     */
    public function setEmitOnRepeat(value:Bool):Dynamic;
    /**
     * Processes the Key Down action for this Key.
     * Called automatically by the Keyboard Plugin.
     *
     * @method Phaser.Input.Keyboard.Key#onDown
     * @fires Phaser.Input.Keyboard.Events#DOWN
     * @since 3.16.0
     *
     * @param {KeyboardEvent} event - The native DOM Keyboard event.
     */
    public function onDown(event:js.html.KeyboardEvent):Void;
    /**
     * Processes the Key Up action for this Key.
     * Called automatically by the Keyboard Plugin.
     *
     * @method Phaser.Input.Keyboard.Key#onUp
     * @fires Phaser.Input.Keyboard.Events#UP
     * @since 3.16.0
     *
     * @param {KeyboardEvent} event - The native DOM Keyboard event.
     */
    public function onUp(event:js.html.KeyboardEvent):Void;
    /**
     * Resets this Key object back to its default un-pressed state.
     *
     * @method Phaser.Input.Keyboard.Key#reset
     * @since 3.6.0
     *
     * @return {this} This Key instance.
     */
    public function reset():Dynamic;
    /**
     * Returns the duration, in ms, that the Key has been held down for.
     *
     * If the key is not currently down it will return zero.
     *
     * The get the duration the Key was held down for in the previous up-down cycle,
     * use the `Key.duration` property value instead.
     *
     * @method Phaser.Input.Keyboard.Key#getDuration
     * @since 3.17.0
     *
     * @return {number} The duration, in ms, that the Key has been held down for if currently down.
     */
    public function getDuration():Float;
}
