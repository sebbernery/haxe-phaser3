package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.TouchInputConfig
 * @since 3.0.0
 *
 * @property {*} [target=null] - Where the Touch Manager listens for touch input events. The default is the game canvas.
 * @property {boolean} [capture=true] - Whether touch input events have preventDefault() called on them.
 */
typedef TouchInputConfig = {
    @:optional var target:Dynamic;
    @:optional var capture:Bool;
};
