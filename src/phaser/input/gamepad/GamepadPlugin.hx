package phaser.input.gamepad;

/**
 * @classdesc
 * The Gamepad Plugin is an input plugin that belongs to the Scene-owned Input system.
 *
 * Its role is to listen for native DOM Gamepad Events and then process them.
 *
 * You do not need to create this class directly, the Input system will create an instance of it automatically.
 *
 * You can access it from within a Scene using `this.input.gamepad`.
 *
 * To listen for a gamepad being connected:
 *
 * ```javascript
 * this.input.gamepad.once('connected', function (pad) {
 *     //   'pad' is a reference to the gamepad that was just connected
 * });
 * ```
 *
 * Note that the browser may require you to press a button on a gamepad before it will allow you to access it,
 * this is for security reasons. However, it may also trust the page already, in which case you won't get the
 * 'connected' event and instead should check `GamepadPlugin.total` to see if it thinks there are any gamepads
 * already connected.
 *
 * Once you have received the connected event, or polled the gamepads and found them enabled, you can access
 * them via the built-in properties `GamepadPlugin.pad1` to `pad4`, for up to 4 game pads. With a reference
 * to the gamepads you can poll its buttons and axis sticks. See the properties and methods available on
 * the `Gamepad` class for more details.
 *
 * For more information about Gamepad support in browsers see the following resources:
 *
 * https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API
 * https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API/Using_the_Gamepad_API
 * https://www.smashingmagazine.com/2015/11/gamepad-api-in-web-games/
 * http://html5gamepad.com/
 *
 * @class GamepadPlugin
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Input.Gamepad
 * @constructor
 * @since 3.10.0
 *
 * @param {Phaser.Input.InputPlugin} sceneInputPlugin - A reference to the Scene Input Plugin that the KeyboardPlugin belongs to.
 */
@:native("Phaser.Input.Gamepad.GamepadPlugin")
extern class GamepadPlugin extends phaser.events.EventEmitter {
    public function new(sceneInputPlugin:phaser.input.InputPlugin);
    /**
     * A reference to the Scene that this Input Plugin is responsible for.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#scene
     * @type {Phaser.Scene}
     * @since 3.10.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene Systems Settings.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#settings
     * @type {Phaser.Scenes.Settings.Object}
     * @since 3.10.0
     */
    public var settings:phaser.scenes.settings.Object;
    /**
     * A reference to the Scene Input Plugin that created this Keyboard Plugin.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#sceneInputPlugin
     * @type {Phaser.Input.InputPlugin}
     * @since 3.10.0
     */
    public var sceneInputPlugin:phaser.input.InputPlugin;
    /**
     * A boolean that controls if the Gamepad Manager is enabled or not.
     * Can be toggled on the fly.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#enabled
     * @type {boolean}
     * @default true
     * @since 3.10.0
     */
    public var enabled:Bool;
    /**
     * The Gamepad Event target, as defined in the Game Config.
     * Typically the browser window, but can be any interactive DOM element.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#target
     * @type {any}
     * @since 3.10.0
     */
    public var target:Dynamic;
    /**
     * An array of the connected Gamepads.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#gamepads
     * @type {Phaser.Input.Gamepad.Gamepad[]}
     * @default []
     * @since 3.10.0
     */
    public var gamepads:Array<phaser.input.gamepad.Gamepad>;
    /**
     * The total number of connected game pads.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#total
     * @type {integer}
     * @since 3.10.0
     */
    public var total:Int;
    /**
     * A reference to the first connected Gamepad.
     *
     * This will be undefined if either no pads are connected, or the browser
     * has not yet issued a gamepadconnect, which can happen even if a Gamepad
     * is plugged in, but hasn't yet had any buttons pressed on it.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#pad1
     * @type {Phaser.Input.Gamepad.Gamepad}
     * @since 3.10.0
     */
    public var pad1:phaser.input.gamepad.Gamepad;
    /**
     * A reference to the second connected Gamepad.
     *
     * This will be undefined if either no pads are connected, or the browser
     * has not yet issued a gamepadconnect, which can happen even if a Gamepad
     * is plugged in, but hasn't yet had any buttons pressed on it.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#pad2
     * @type {Phaser.Input.Gamepad.Gamepad}
     * @since 3.10.0
     */
    public var pad2:phaser.input.gamepad.Gamepad;
    /**
     * A reference to the third connected Gamepad.
     *
     * This will be undefined if either no pads are connected, or the browser
     * has not yet issued a gamepadconnect, which can happen even if a Gamepad
     * is plugged in, but hasn't yet had any buttons pressed on it.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#pad3
     * @type {Phaser.Input.Gamepad.Gamepad}
     * @since 3.10.0
     */
    public var pad3:phaser.input.gamepad.Gamepad;
    /**
     * A reference to the fourth connected Gamepad.
     *
     * This will be undefined if either no pads are connected, or the browser
     * has not yet issued a gamepadconnect, which can happen even if a Gamepad
     * is plugged in, but hasn't yet had any buttons pressed on it.
     *
     * @name Phaser.Input.Gamepad.GamepadPlugin#pad4
     * @type {Phaser.Input.Gamepad.Gamepad}
     * @since 3.10.0
     */
    public var pad4:phaser.input.gamepad.Gamepad;
    /**
     * Checks to see if both this plugin and the Scene to which it belongs is active.
     *
     * @method Phaser.Input.Gamepad.GamepadPlugin#isActive
     * @since 3.10.0
     *
     * @return {boolean} `true` if the plugin and the Scene it belongs to is active.
     */
    public function isActive():Bool;
    /**
     * Disconnects all current Gamepads.
     *
     * @method Phaser.Input.Gamepad.GamepadPlugin#disconnectAll
     * @since 3.10.0
     */
    public function disconnectAll():Void;
    /**
     * Returns an array of all currently connected Gamepads.
     *
     * @method Phaser.Input.Gamepad.GamepadPlugin#getAll
     * @since 3.10.0
     *
     * @return {Phaser.Input.Gamepad.Gamepad[]} An array of all currently connected Gamepads.
     */
    public function getAll():Array<phaser.input.gamepad.Gamepad>;
    /**
     * Looks-up a single Gamepad based on the given index value.
     *
     * @method Phaser.Input.Gamepad.GamepadPlugin#getPad
     * @since 3.10.0
     *
     * @param {number} index - The index of the Gamepad to get.
     *
     * @return {Phaser.Input.Gamepad.Gamepad} The Gamepad matching the given index, or undefined if none were found.
     */
    public function getPad(index:Float):phaser.input.gamepad.Gamepad;
}
