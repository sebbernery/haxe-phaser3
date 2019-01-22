package phaser.input.keyboard;

/**
 * @classdesc
 * A KeyCombo will listen for a specific string of keys from the Keyboard, and when it receives them
 * it will emit a `keycombomatch` event from the Keyboard Manager.
 *
 * The keys to be listened for can be defined as:
 *
 * A string (i.e. 'ATARI')
 * An array of either integers (key codes) or strings, or a mixture of both
 * An array of objects (such as Key objects) with a public 'keyCode' property
 *
 * For example, to listen for the Konami code (up, up, down, down, left, right, left, right, b, a, enter)
 * you could pass the following array of key codes:
 *
 * ```javascript
 * this.input.keyboard.createCombo([ 38, 38, 40, 40, 37, 39, 37, 39, 66, 65, 13 ], { resetOnMatch: true });
 *
 * this.input.keyboard.on('keycombomatch', function (event) {
 *     console.log('Konami Code entered!');
 * });
 * ```
 *
 * Or, to listen for the user entering the word PHASER:
 *
 * ```javascript
 * this.input.keyboard.createCombo('PHASER');
 * ```
 *
 * @class KeyCombo
 * @memberof Phaser.Input.Keyboard
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.Keyboard.KeyboardPlugin} keyboardPlugin - A reference to the Keyboard Plugin.
 * @param {(string|integer[]|object[])} keys - The keys that comprise this combo.
 * @param {KeyComboConfig} [config] - A Key Combo configuration object.
 */
@:native("Phaser.Input.Keyboard.KeyCombo")
extern class KeyCombo {
    public function new(keyboardPlugin:phaser.input.keyboard.KeyboardPlugin, keys:Dynamic, ?config:KeyComboConfig);
    /**
     * A reference to the Keyboard Manager
     *
     * @name Phaser.Input.Keyboard.KeyCombo#manager
     * @type {Phaser.Input.Keyboard.KeyboardPlugin}
     * @since 3.0.0
     */
    public var manager:phaser.input.keyboard.KeyboardPlugin;
    /**
     * A flag that controls if this Key Combo is actively processing keys or not.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#enabled
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var enabled:Bool;
    /**
     * An array of the keycodes that comprise this combo.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#keyCodes
     * @type {array}
     * @default []
     * @since 3.0.0
     */
    public var keyCodes:Array<Dynamic>;
    /**
     * The current keyCode the combo is waiting for.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#current
     * @type {integer}
     * @since 3.0.0
     */
    public var current:Int;
    /**
     * The current index of the key being waited for in the 'keys' string.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#index
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var index:Int;
    /**
     * The length of this combo (in keycodes)
     *
     * @name Phaser.Input.Keyboard.KeyCombo#size
     * @type {number}
     * @since 3.0.0
     */
    public var size:Float;
    /**
     * The time the previous key in the combo was matched.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#timeLastMatched
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var timeLastMatched:Float;
    /**
     * Has this Key Combo been matched yet?
     *
     * @name Phaser.Input.Keyboard.KeyCombo#matched
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var matched:Bool;
    /**
     * The time the entire combo was matched.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#timeMatched
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var timeMatched:Float;
    /**
     * If they press the wrong key do we reset the combo?
     *
     * @name Phaser.Input.Keyboard.KeyCombo#resetOnWrongKey
     * @type {boolean}
     * @default 0
     * @since 3.0.0
     */
    public var resetOnWrongKey:Bool;
    /**
     * The max delay in ms between each key press. Above this the combo is reset. 0 means disabled.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#maxKeyDelay
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var maxKeyDelay:Int;
    /**
     * If previously matched and they press the first key of the combo again, will it reset?
     *
     * @name Phaser.Input.Keyboard.KeyCombo#resetOnMatch
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var resetOnMatch:Bool;
    /**
     * If the combo matches, will it delete itself?
     *
     * @name Phaser.Input.Keyboard.KeyCombo#deleteOnMatch
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var deleteOnMatch:Bool;
    /**
     * How far complete is this combo? A value between 0 and 1.
     *
     * @name Phaser.Input.Keyboard.KeyCombo#progress
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var progress:Float;
    /**
     * Destroys this Key Combo and all of its references.
     *
     * @method Phaser.Input.Keyboard.KeyCombo#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
