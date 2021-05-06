package phaser.input.gamepad;

/**
 * @classdesc
 * Contains information about a specific Gamepad Axis.
 * Axis objects are created automatically by the Gamepad as they are needed.
 *
 * @class Axis
 * @memberof Phaser.Input.Gamepad
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.Gamepad.Gamepad} pad - A reference to the Gamepad that this Axis belongs to.
 * @param {number} index - The index of this Axis.
 */
@:native("Phaser.Input.Gamepad.Axis")
extern class Axis {
    public function new(pad:phaser.input.gamepad.Gamepad, index:Float);
    /**
     * A reference to the Gamepad that this Axis belongs to.
     *
     * @name Phaser.Input.Gamepad.Axis#pad
     * @type {Phaser.Input.Gamepad.Gamepad}
     * @since 3.0.0
     */
    public var pad:phaser.input.gamepad.Gamepad;
    /**
     * An event emitter to use to emit the axis events.
     *
     * @name Phaser.Input.Gamepad.Axis#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.0.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * The index of this Axis.
     *
     * @name Phaser.Input.Gamepad.Axis#index
     * @type {number}
     * @since 3.0.0
     */
    public var index:Float;
    /**
     * The raw axis value, between -1 and 1 with 0 being dead center.
     * Use the method `getValue` to get a normalized value with the threshold applied.
     *
     * @name Phaser.Input.Gamepad.Axis#value
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var value:Float;
    /**
     * Movement tolerance threshold below which axis values are ignored in `getValue`.
     *
     * @name Phaser.Input.Gamepad.Axis#threshold
     * @type {number}
     * @default 0.1
     * @since 3.0.0
     */
    public var threshold:Float;
    /**
     * Applies the `threshold` value to the axis and returns it.
     *
     * @method Phaser.Input.Gamepad.Axis#getValue
     * @since 3.0.0
     *
     * @return {number} The axis value, adjusted for the movement threshold.
     */
    public function getValue():Float;
    /**
     * Destroys this Axis instance and releases external references it holds.
     *
     * @method Phaser.Input.Gamepad.Axis#destroy
     * @since 3.10.0
     */
    public function destroy():Void;
}
