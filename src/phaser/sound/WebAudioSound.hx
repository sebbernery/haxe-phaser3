package phaser.sound;

/**
 * @classdesc
 * Web Audio API implementation of the sound.
 *
 * @class WebAudioSound
 * @extends Phaser.Sound.BaseSound
 * @memberof Phaser.Sound
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Sound.WebAudioSoundManager} manager - Reference to the current sound manager instance.
 * @param {string} key - Asset key for the sound.
 * @param {Phaser.Types.Sound.SoundConfig} [config={}] - An optional config object containing default sound settings.
 */
@:native("Phaser.Sound.WebAudioSound")
extern class WebAudioSound extends phaser.sound.BaseSound {
    public function new(manager:phaser.sound.WebAudioSoundManager, key:String, ?config:phaser.types.sound.SoundConfig);
    /**
     * Audio buffer containing decoded data of the audio asset to be played.
     *
     * @name Phaser.Sound.WebAudioSound#audioBuffer
     * @type {AudioBuffer}
     * @since 3.0.0
     */
    public var audioBuffer:js.html.audio.AudioBuffer;
    /**
     * A reference to an audio source node used for playing back audio from
     * audio data stored in Phaser.Sound.WebAudioSound#audioBuffer.
     *
     * @name Phaser.Sound.WebAudioSound#source
     * @type {AudioBufferSourceNode}
     * @default null
     * @since 3.0.0
     */
    public var source:js.html.audio.AudioBufferSourceNode;
    /**
     * A reference to a second audio source used for gapless looped playback.
     *
     * @name Phaser.Sound.WebAudioSound#loopSource
     * @type {AudioBufferSourceNode}
     * @default null
     * @since 3.0.0
     */
    public var loopSource:js.html.audio.AudioBufferSourceNode;
    /**
     * Gain node responsible for controlling this sound's muting.
     *
     * @name Phaser.Sound.WebAudioSound#muteNode
     * @type {GainNode}
     * @since 3.0.0
     */
    public var muteNode:js.html.audio.GainNode;
    /**
     * Gain node responsible for controlling this sound's volume.
     *
     * @name Phaser.Sound.WebAudioSound#volumeNode
     * @type {GainNode}
     * @since 3.0.0
     */
    public var volumeNode:js.html.audio.GainNode;
    /**
     * Panner node responsible for controlling this sound's pan.
     *
     * Doesn't work on iOS / Safari.
     *
     * @name Phaser.Sound.WebAudioSound#pannerNode
     * @type {StereoPannerNode}
     * @since 3.50.0
     */
    public var pannerNode:js.html.audio.StereoPannerNode;
    /**
     * Used for keeping track when sound source playback has ended
     * so its state can be updated accordingly.
     *
     * @name Phaser.Sound.WebAudioSound#hasEnded
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.0.0
     */
    public var hasEnded:Bool;
    /**
     * Used for keeping track when sound source has looped
     * so its state can be updated accordingly.
     *
     * @name Phaser.Sound.WebAudioSound#hasLooped
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.0.0
     */
    public var hasLooped:Bool;
    /**
     * Rate at which this Sound will be played.
     * Value of 1.0 plays the audio at full speed, 0.5 plays the audio at half speed
     * and 2.0 doubles the audios playback speed.
     *
     * @name Phaser.Sound.WebAudioSound#rate
     * @type {number}
     * @default 1
     * @fires Phaser.Sound.Events#RATE
     * @since 3.0.0
     */
    public var rate:Float;
    /**
     * The detune value of this Sound, given in [cents](https://en.wikipedia.org/wiki/Cent_%28music%29).
     * The range of the value is -1200 to 1200, but we recommend setting it to [50](https://en.wikipedia.org/wiki/50_Cent).
     *
     * @name Phaser.Sound.WebAudioSound#detune
     * @type {number}
     * @default 0
     * @fires Phaser.Sound.Events#DETUNE
     * @since 3.0.0
     */
    public var detune:Float;
    /**
     * Boolean indicating whether the sound is muted or not.
     * Gets or sets the muted state of this sound.
     *
     * @name Phaser.Sound.WebAudioSound#mute
     * @type {boolean}
     * @default false
     * @fires Phaser.Sound.Events#MUTE
     * @since 3.0.0
     */
    public var mute:Bool;
    /**
     * Gets or sets the volume of this sound, a value between 0 (silence) and 1 (full volume).
     *
     * @name Phaser.Sound.WebAudioSound#volume
     * @type {number}
     * @default 1
     * @fires Phaser.Sound.Events#VOLUME
     * @since 3.0.0
     */
    public var volume:Float;
    /**
     * Property representing the position of playback for this sound, in seconds.
     * Setting it to a specific value moves current playback to that position.
     * The value given is clamped to the range 0 to current marker duration.
     * Setting seek of a stopped sound has no effect.
     *
     * @name Phaser.Sound.WebAudioSound#seek
     * @type {number}
     * @fires Phaser.Sound.Events#SEEK
     * @since 3.0.0
     */
    public var seek:Float;
    /**
     * Flag indicating whether or not the sound or current sound marker will loop.
     *
     * @name Phaser.Sound.WebAudioSound#loop
     * @type {boolean}
     * @default false
     * @fires Phaser.Sound.Events#LOOP
     * @since 3.0.0
     */
    public var loop:Bool;
    /**
     * Gets or sets the pan of this sound, a value between -1 (full left pan) and 1 (full right pan).
     *
     * Always returns zero on iOS / Safari as it doesn't support the stereo panner node.
     *
     * @name Phaser.Sound.WebAudioSound#pan
     * @type {number}
     * @default 0
     * @fires Phaser.Sound.Events#PAN
     * @since 3.50.0
     */
    public var pan:Float;
    /**
     * Sets the playback rate of this Sound.
     *
     * For example, a value of 1.0 plays the audio at full speed, 0.5 plays the audio at half speed
     * and 2.0 doubles the audios playback speed.
     *
     * @method Phaser.Sound.WebAudioSound#setRate
     * @fires Phaser.Sound.Events#RATE
     * @since 3.3.0
     *
     * @param {number} value - The playback rate at of this Sound.
     *
     * @return {this} This Sound instance.
     */
    public function setRate(value:Float):Dynamic;
    /**
     * Sets the detune value of this Sound, given in [cents](https://en.wikipedia.org/wiki/Cent_%28music%29).
     * The range of the value is -1200 to 1200, but we recommend setting it to [50](https://en.wikipedia.org/wiki/50_Cent).
     *
     * @method Phaser.Sound.WebAudioSound#setDetune
     * @fires Phaser.Sound.Events#DETUNE
     * @since 3.3.0
     *
     * @param {number} value - The range of the value is -1200 to 1200, but we recommend setting it to [50](https://en.wikipedia.org/wiki/50_Cent).
     *
     * @return {this} This Sound instance.
     */
    public function setDetune(value:Float):Dynamic;
    /**
     * Sets the muted state of this Sound.
     *
     * @method Phaser.Sound.WebAudioSound#setMute
     * @fires Phaser.Sound.Events#MUTE
     * @since 3.4.0
     *
     * @param {boolean} value - `true` to mute this sound, `false` to unmute it.
     *
     * @return {this} This Sound instance.
     */
    public function setMute(value:Bool):Dynamic;
    /**
     * Sets the volume of this Sound.
     *
     * @method Phaser.Sound.WebAudioSound#setVolume
     * @fires Phaser.Sound.Events#VOLUME
     * @since 3.4.0
     *
     * @param {number} value - The volume of the sound.
     *
     * @return {this} This Sound instance.
     */
    public function setVolume(value:Float):Dynamic;
    /**
     * Seeks to a specific point in this sound.
     *
     * @method Phaser.Sound.WebAudioSound#setSeek
     * @fires Phaser.Sound.Events#SEEK
     * @since 3.4.0
     *
     * @param {number} value - The point in the sound to seek to.
     *
     * @return {this} This Sound instance.
     */
    public function setSeek(value:Float):Dynamic;
    /**
     * Sets the loop state of this Sound.
     *
     * @method Phaser.Sound.WebAudioSound#setLoop
     * @fires Phaser.Sound.Events#LOOP
     * @since 3.4.0
     *
     * @param {boolean} value - `true` to loop this sound, `false` to not loop it.
     *
     * @return {this} This Sound instance.
     */
    public function setLoop(value:Bool):Dynamic;
    /**
     * Sets the pan of this sound, a value between -1 (full left pan) and 1 (full right pan).
     *
     * Note: iOS / Safari doesn't support the stereo panner node.
     *
     * @method Phaser.Sound.WebAudioSound#setPan
     * @fires Phaser.Sound.Events#PAN
     * @since 3.50.0
     *
     * @param {number} value - The pan of the sound. A value between -1 (full left pan) and 1 (full right pan).
     *
     * @return {this} This Sound instance.
     */
    public function setPan(value:Float):Dynamic;
}
