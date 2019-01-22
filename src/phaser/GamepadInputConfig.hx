package phaser;

/**
 * @typedef {object} GamepadInputConfig
 *
 * @property {*} [target=window] - Where the Gamepad Manager listens for gamepad input events.
 */
typedef GamepadInputConfig = {
    @:optional var target:Dynamic;
};
