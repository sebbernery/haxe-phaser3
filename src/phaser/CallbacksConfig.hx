package phaser;

/**
 * @typedef {object} CallbacksConfig
 *
 * @property {BootCallback} [preBoot=NOOP] - A function to run at the start of the boot sequence.
 * @property {BootCallback} [postBoot=NOOP] - A function to run at the end of the boot sequence. At this point, all the game systems have started and plugins have been loaded.
 */
typedef CallbacksConfig = {
    @:optional var preBoot:BootCallback;
    @:optional var postBoot:BootCallback;
};
