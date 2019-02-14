package phaser;

/**
 * Config object containing various sound settings.
 *
 * @typedef {object} AudioConfig
 *
 * @property {boolean} [disableWebAudio=false] - Use HTML5 Audio instead of Web Audio.
 * @property {AudioContext} [context] - An existing Web Audio context.
 * @property {boolean} [noAudio=false] - Disable all audio output.
 *
 * @see Phaser.Sound.SoundManagerCreator
 */
typedef AudioConfig = {
    @:optional var disableWebAudio:Bool;
    @:optional var context:AudioContext;
    @:optional var noAudio:Bool;
};
