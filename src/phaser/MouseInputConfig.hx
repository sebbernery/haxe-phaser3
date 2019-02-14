package phaser;

/**
 * @typedef {object} MouseInputConfig
 *
 * @property {*} [target=null] - Where the Mouse Manager listens for mouse input events. The default is the game canvas.
 * @property {boolean} [capture=true] - Whether mouse input events have `preventDefault` called on them.
 */
typedef MouseInputConfig = {
    @:optional var target:Dynamic;
    @:optional var capture:Bool;
};
