package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.GamepadInputConfig
 * @since 3.0.0
 *
 * @property {*} [target=window] - Where the Gamepad Manager listens for gamepad input events.
 */
typedef GamepadInputConfig = {
    @:optional var target:Dynamic;
};
