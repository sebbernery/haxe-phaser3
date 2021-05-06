package phaser.input.gamepad;

/**
 * @classdesc
 * Contains information about a specific button on a Gamepad.
 * Button objects are created automatically by the Gamepad as they are needed.
 *
 * @class Button
 * @memberof Phaser.Input.Gamepad
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.Gamepad.Gamepad} pad - A reference to the Gamepad that this Button belongs to.
 * @param {number} index - The index of this Button.
 */
@:native("Phaser.Input.Gamepad.Button")
extern class Button {
    public function new(pad:phaser.input.gamepad.Gamepad, index:Float);
    /**
     * A reference to the Gamepad that this Button belongs to.
     *
     * @name Phaser.Input.Gamepad.Button#pad
     * @type {Phaser.Input.Gamepad.Gamepad}
     * @since 3.0.0
     */
    public var pad:phaser.input.gamepad.Gamepad;
    /**
     * An event emitter to use to emit the button events.
     *
     * @name Phaser.Input.Gamepad.Button#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.0.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * The index of this Button.
     *
     * @name Phaser.Input.Gamepad.Button#index
     * @type {number}
     * @since 3.0.0
     */
    public var index:Float;
    /**
     * Between 0 and 1.
     *
     * @name Phaser.Input.Gamepad.Button#value
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var value:Float;
    /**
     * Can be set for analogue buttons to enable a 'pressure' threshold,
     * before a button is considered as being 'pressed'.
     *
     * @name Phaser.Input.Gamepad.Button#threshold
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var threshold:Float;
    /**
     * Is the Button being pressed down or not?
     *
     * @name Phaser.Input.Gamepad.Button#pressed
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var pressed:Bool;
    /**
     * Destroys this Button instance and releases external references it holds.
     *
     * @method Phaser.Input.Gamepad.Button#destroy
     * @since 3.10.0
     */
    public function destroy():Void;
}
