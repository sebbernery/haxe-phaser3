package phaser;

/**
 * @typedef {object} KeyboardInputConfig
 *
 * @property {*} [target=window] - Where the Keyboard Manager listens for keyboard input events.
 */
typedef KeyboardInputConfig = {
    @:optional var target:Dynamic;
};
