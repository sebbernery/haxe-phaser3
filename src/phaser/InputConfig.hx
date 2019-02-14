package phaser;

/**
 * @typedef {object} InputConfig
 *
 * @property {(boolean|KeyboardInputConfig)} [keyboard=true] - Keyboard input configuration. `true` uses the default configuration and `false` disables keyboard input.
 * @property {(boolean|MouseInputConfig)} [mouse=true] - Mouse input configuration. `true` uses the default configuration and `false` disables mouse input.
 * @property {(boolean|TouchInputConfig)} [touch=true] - Touch input configuration. `true` uses the default configuration and `false` disables touch input.
 * @property {(boolean|GamepadInputConfig)} [gamepad=false] - Gamepad input configuration. `true` enables gamepad input.
 * @property {integer} [activePointers=1] - The maximum number of touch pointers. See {@link Phaser.Input.InputManager#pointers}.
 * @property {number} [smoothFactor=0] - The smoothing factor to apply during Pointer movement. See {@link Phaser.Input.Pointer#smoothFactor}.
 * @property {boolean} [inputQueue=false] - Should Phaser use a queued input system for native DOM Events or not?
 */
typedef InputConfig = {
    @:optional var keyboard:Dynamic;
    @:optional var mouse:Dynamic;
    @:optional var touch:Dynamic;
    @:optional var gamepad:Dynamic;
    @:optional var activePointers:Int;
    @:optional var smoothFactor:Float;
    @:optional var inputQueue:Bool;
};
