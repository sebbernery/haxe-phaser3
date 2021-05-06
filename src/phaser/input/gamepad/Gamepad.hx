package phaser.input.gamepad;

/**
 * @classdesc
 * A single Gamepad.
 *
 * These are created, updated and managed by the Gamepad Plugin.
 *
 * @class Gamepad
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Input.Gamepad
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.Gamepad.GamepadPlugin} manager - A reference to the Gamepad Plugin.
 * @param {Phaser.Types.Input.Gamepad.Pad} pad - The Gamepad object, as extracted from GamepadEvent.
 */
@:native("Phaser.Input.Gamepad.Gamepad")
extern class Gamepad extends phaser.events.EventEmitter {
    public function new(manager:phaser.input.gamepad.GamepadPlugin, pad:phaser.types.input.gamepad.Pad);
    /**
     * A reference to the Gamepad Plugin.
     *
     * @name Phaser.Input.Gamepad.Gamepad#manager
     * @type {Phaser.Input.Gamepad.GamepadPlugin}
     * @since 3.0.0
     */
    public var manager:phaser.input.gamepad.GamepadPlugin;
    /**
     * A reference to the native Gamepad object that is connected to the browser.
     *
     * @name Phaser.Input.Gamepad.Gamepad#pad
     * @type {any}
     * @since 3.10.0
     */
    public var pad:Dynamic;
    /**
     * A string containing some information about the controller.
     *
     * This is not strictly specified, but in Firefox it will contain three pieces of information
     * separated by dashes (-): two 4-digit hexadecimal strings containing the USB vendor and
     * product id of the controller, and the name of the controller as provided by the driver.
     * In Chrome it will contain the name of the controller as provided by the driver,
     * followed by vendor and product 4-digit hexadecimal strings.
     *
     * @name Phaser.Input.Gamepad.Gamepad#id
     * @type {string}
     * @since 3.0.0
     */
    public var id:String;
    /**
     * An integer that is unique for each Gamepad currently connected to the system.
     * This can be used to distinguish multiple controllers.
     * Note that disconnecting a device and then connecting a new device may reuse the previous index.
     *
     * @name Phaser.Input.Gamepad.Gamepad#index
     * @type {number}
     * @since 3.0.0
     */
    public var index:Float;
    /**
     * An array of Gamepad Button objects, corresponding to the different buttons available on the Gamepad.
     *
     * @name Phaser.Input.Gamepad.Gamepad#buttons
     * @type {Phaser.Input.Gamepad.Button[]}
     * @since 3.0.0
     */
    public var buttons:Array<phaser.input.gamepad.Button>;
    /**
     * An array of Gamepad Axis objects, corresponding to the different axes available on the Gamepad, if any.
     *
     * @name Phaser.Input.Gamepad.Gamepad#axes
     * @type {Phaser.Input.Gamepad.Axis[]}
     * @since 3.0.0
     */
    public var axes:Array<phaser.input.gamepad.Axis>;
    /**
     * The Gamepad's Haptic Actuator (Vibration / Rumble support).
     * This is highly experimental and only set if both present on the device,
     * and exposed by both the hardware and browser.
     *
     * @name Phaser.Input.Gamepad.Gamepad#vibration
     * @type {GamepadHapticActuator}
     * @since 3.10.0
     */
    public var vibration:Dynamic;
    /**
     * A Vector2 containing the most recent values from the Gamepad's left axis stick.
     * This is updated automatically as part of the Gamepad.update cycle.
     * The H Axis is mapped to the `Vector2.x` property, and the V Axis to the `Vector2.y` property.
     * The values are based on the Axis thresholds.
     * If the Gamepad does not have a left axis stick, the values will always be zero.
     *
     * @name Phaser.Input.Gamepad.Gamepad#leftStick
     * @type {Phaser.Math.Vector2}
     * @since 3.10.0
     */
    public var leftStick:phaser.math.Vector2;
    /**
     * A Vector2 containing the most recent values from the Gamepad's right axis stick.
     * This is updated automatically as part of the Gamepad.update cycle.
     * The H Axis is mapped to the `Vector2.x` property, and the V Axis to the `Vector2.y` property.
     * The values are based on the Axis thresholds.
     * If the Gamepad does not have a right axis stick, the values will always be zero.
     *
     * @name Phaser.Input.Gamepad.Gamepad#rightStick
     * @type {Phaser.Math.Vector2}
     * @since 3.10.0
     */
    public var rightStick:phaser.math.Vector2;
    /**
     * Is this Gamepad currently connected or not?
     *
     * @name Phaser.Input.Gamepad.Gamepad#connected
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var connected:Bool;
    /**
     * A timestamp containing the most recent time this Gamepad was updated.
     *
     * @name Phaser.Input.Gamepad.Gamepad#timestamp
     * @type {number}
     * @since 3.0.0
     */
    public var timestamp:Float;
    /**
     * Is the Gamepad's Left button being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * This is the d-pad left button under standard Gamepad mapping.
     *
     * @name Phaser.Input.Gamepad.Gamepad#left
     * @type {boolean}
     * @since 3.10.0
     */
    public var left:Bool;
    /**
     * Is the Gamepad's Right button being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * This is the d-pad right button under standard Gamepad mapping.
     *
     * @name Phaser.Input.Gamepad.Gamepad#right
     * @type {boolean}
     * @since 3.10.0
     */
    public var right:Bool;
    /**
     * Is the Gamepad's Up button being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * This is the d-pad up button under standard Gamepad mapping.
     *
     * @name Phaser.Input.Gamepad.Gamepad#up
     * @type {boolean}
     * @since 3.10.0
     */
    public var up:Bool;
    /**
     * Is the Gamepad's Down button being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * This is the d-pad down button under standard Gamepad mapping.
     *
     * @name Phaser.Input.Gamepad.Gamepad#down
     * @type {boolean}
     * @since 3.10.0
     */
    public var down:Bool;
    /**
     * Is the Gamepad's bottom button in the right button cluster being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * On a Dual Shock controller it's the X button.
     * On an XBox controller it's the A button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#A
     * @type {boolean}
     * @since 3.10.0
     */
    public var A:Bool;
    /**
     * Is the Gamepad's top button in the right button cluster being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * On a Dual Shock controller it's the Triangle button.
     * On an XBox controller it's the Y button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#Y
     * @type {boolean}
     * @since 3.10.0
     */
    public var Y:Bool;
    /**
     * Is the Gamepad's left button in the right button cluster being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * On a Dual Shock controller it's the Square button.
     * On an XBox controller it's the X button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#X
     * @type {boolean}
     * @since 3.10.0
     */
    public var X:Bool;
    /**
     * Is the Gamepad's right button in the right button cluster being pressed?
     * If the Gamepad doesn't have this button it will always return false.
     * On a Dual Shock controller it's the Circle button.
     * On an XBox controller it's the B button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#B
     * @type {boolean}
     * @since 3.10.0
     */
    public var B:Bool;
    /**
     * Returns the value of the Gamepad's top left shoulder button.
     * If the Gamepad doesn't have this button it will always return zero.
     * The value is a float between 0 and 1, corresponding to how depressed the button is.
     * On a Dual Shock controller it's the L1 button.
     * On an XBox controller it's the LB button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#L1
     * @type {number}
     * @since 3.10.0
     */
    public var L1:Float;
    /**
     * Returns the value of the Gamepad's bottom left shoulder button.
     * If the Gamepad doesn't have this button it will always return zero.
     * The value is a float between 0 and 1, corresponding to how depressed the button is.
     * On a Dual Shock controller it's the L2 button.
     * On an XBox controller it's the LT button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#L2
     * @type {number}
     * @since 3.10.0
     */
    public var L2:Float;
    /**
     * Returns the value of the Gamepad's top right shoulder button.
     * If the Gamepad doesn't have this button it will always return zero.
     * The value is a float between 0 and 1, corresponding to how depressed the button is.
     * On a Dual Shock controller it's the R1 button.
     * On an XBox controller it's the RB button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#R1
     * @type {number}
     * @since 3.10.0
     */
    public var R1:Float;
    /**
     * Returns the value of the Gamepad's bottom right shoulder button.
     * If the Gamepad doesn't have this button it will always return zero.
     * The value is a float between 0 and 1, corresponding to how depressed the button is.
     * On a Dual Shock controller it's the R2 button.
     * On an XBox controller it's the RT button.
     *
     * @name Phaser.Input.Gamepad.Gamepad#R2
     * @type {number}
     * @since 3.10.0
     */
    public var R2:Float;
    /**
     * Gets the total number of axis this Gamepad claims to support.
     *
     * @method Phaser.Input.Gamepad.Gamepad#getAxisTotal
     * @since 3.10.0
     *
     * @return {number} The total number of axes this Gamepad claims to support.
     */
    public function getAxisTotal():Float;
    /**
     * Gets the value of an axis based on the given index.
     * The index must be valid within the range of axes supported by this Gamepad.
     * The return value will be a float between 0 and 1.
     *
     * @method Phaser.Input.Gamepad.Gamepad#getAxisValue
     * @since 3.10.0
     *
     * @param {number} index - The index of the axes to get the value for.
     *
     * @return {number} The value of the axis, between 0 and 1.
     */
    public function getAxisValue(index:Float):Float;
    /**
     * Sets the threshold value of all axis on this Gamepad.
     * The value is a float between 0 and 1 and is the amount below which the axis is considered as not having been moved.
     *
     * @method Phaser.Input.Gamepad.Gamepad#setAxisThreshold
     * @since 3.10.0
     *
     * @param {number} value - A value between 0 and 1.
     */
    public function setAxisThreshold(value:Float):Void;
    /**
     * Gets the total number of buttons this Gamepad claims to have.
     *
     * @method Phaser.Input.Gamepad.Gamepad#getButtonTotal
     * @since 3.10.0
     *
     * @return {number} The total number of buttons this Gamepad claims to have.
     */
    public function getButtonTotal():Float;
    /**
     * Gets the value of a button based on the given index.
     * The index must be valid within the range of buttons supported by this Gamepad.
     *
     * The return value will be either 0 or 1 for an analogue button, or a float between 0 and 1
     * for a pressure-sensitive digital button, such as the shoulder buttons on a Dual Shock.
     *
     * @method Phaser.Input.Gamepad.Gamepad#getButtonValue
     * @since 3.10.0
     *
     * @param {number} index - The index of the button to get the value for.
     *
     * @return {number} The value of the button, between 0 and 1.
     */
    public function getButtonValue(index:Float):Float;
    /**
     * Returns if the button is pressed down or not.
     * The index must be valid within the range of buttons supported by this Gamepad.
     *
     * @method Phaser.Input.Gamepad.Gamepad#isButtonDown
     * @since 3.10.0
     *
     * @param {number} index - The index of the button to get the value for.
     *
     * @return {boolean} `true` if the button is considered as being pressed down, otherwise `false`.
     */
    public function isButtonDown(index:Float):Bool;
}
