package phaser.types.core;

/**
 * Config object containing various sound settings.
 *
 * @typedef {object} Phaser.Types.Core.AudioConfig
 * @since 3.0.0
 *
 * @property {boolean} [disableWebAudio=false] - Use HTML5 Audio instead of Web Audio.
 * @property {AudioContext} [context] - An existing Web Audio context.
 * @property {boolean} [noAudio=false] - Disable all audio output.
 *
 * @see Phaser.Sound.SoundManagerCreator
 */
typedef AudioConfig = {
    @:optional var disableWebAudio:Bool;
    @:optional var context:js.html.audio.AudioContext;
    @:optional var noAudio:Bool;
};
