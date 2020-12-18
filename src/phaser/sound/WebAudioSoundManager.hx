package phaser.sound;

/**
 * @classdesc
 * Web Audio API implementation of the Sound Manager.
 *
 * Not all browsers can play all audio formats.
 *
 * There is a good guide to what's supported: [Cross-browser audio basics: Audio codec support](https://developer.mozilla.org/en-US/Apps/Fundamentals/Audio_and_video_delivery/Cross-browser_audio_basics#Audio_Codec_Support).
 *
 * @class WebAudioSoundManager
 * @extends Phaser.Sound.BaseSoundManager
 * @memberof Phaser.Sound
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - Reference to the current game instance.
 */
@:native("Phaser.Sound.WebAudioSoundManager")
extern class WebAudioSoundManager extends phaser.sound.BaseSoundManager {
    public function new(game:phaser.Game);
    /**
     * This method takes a new AudioContext reference and then sets
     * this Sound Manager to use that context for all playback.
     *
     * As part of this call it also disconnects the master mute and volume
     * nodes and then re-creates them on the new given context.
     *
     * @method Phaser.Sound.WebAudioSoundManager#setAudioContext
     * @since 3.21.0
     *
     * @param {AudioContext} context - Reference to an already created AudioContext instance.
     *
     * @return {this} The WebAudioSoundManager instance.
     */
    public function setAudioContext(context:js.html.audio.AudioContext):Dynamic;
    /**
     * Decode audio data into a format ready for playback via Web Audio.
     *
     * The audio data can be a base64 encoded string, an audio media-type data uri, or an ArrayBuffer instance.
     *
     * The `audioKey` is the key that will be used to save the decoded audio to the audio cache.
     *
     * Instead of passing a single entry you can instead pass an array of `Phaser.Types.Sound.DecodeAudioConfig`
     * objects as the first and only argument.
     *
     * Decoding is an async process, so be sure to listen for the events to know when decoding has completed.
     *
     * Once the audio has decoded it can be added to the Sound Manager or played via its key.
     *
     * @method Phaser.Sound.WebAudioSoundManager#decodeAudio
     * @fires Phaser.Sound.Events#DECODED
     * @fires Phaser.Sound.Events#DECODED_ALL
     * @since 3.18.0
     *
     * @param {(Phaser.Types.Sound.DecodeAudioConfig[]|string)} [audioKey] - The string-based key to be used to reference the decoded audio in the audio cache, or an array of audio config objects.
     * @param {(ArrayBuffer|string)} [audioData] - The audio data, either a base64 encoded string, an audio media-type data uri, or an ArrayBuffer instance.
     */
    public function decodeAudio(?audioKey:Dynamic, ?audioData:Dynamic):Void;
    /**
     * Sets the muted state of all this Sound Manager.
     *
     * @method Phaser.Sound.WebAudioSoundManager#setMute
     * @fires Phaser.Sound.Events#GLOBAL_MUTE
     * @since 3.3.0
     *
     * @param {boolean} value - `true` to mute all sounds, `false` to unmute them.
     *
     * @return {Phaser.Sound.WebAudioSoundManager} This Sound Manager.
     */
    public function setMute(value:Bool):phaser.sound.WebAudioSoundManager;
    /**
     * Sets the volume of this Sound Manager.
     *
     * @method Phaser.Sound.WebAudioSoundManager#setVolume
     * @fires Phaser.Sound.Events#GLOBAL_VOLUME
     * @since 3.3.0
     *
     * @param {number} value - The global volume of this Sound Manager.
     *
     * @return {Phaser.Sound.WebAudioSoundManager} This Sound Manager.
     */
    public function setVolume(value:Float):phaser.sound.WebAudioSoundManager;
}
