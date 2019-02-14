package phaser;

/**
 * @typedef {object} KeyboardInputConfig
 *
 * @property {*} [target=window] - Where the Keyboard Manager listens for keyboard input events.
 * @property {?integer} [capture] - `preventDefault` will be called on every non-modified key which has a key code in this array. By default it is empty.
 */
typedef KeyboardInputConfig = {
    @:optional var target:Dynamic;
    @:optional var capture:Int;
};
