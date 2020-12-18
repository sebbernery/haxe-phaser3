package phaser.sound;

/**
 * HTML5 Audio implementation of the Sound Manager.
 *
 * To play multiple instances of the same HTML5 Audio sound, you need to provide an `instances` value when
 * loading the sound with the Loader:
 *
 * ```javascript
 * this.load.audio('explosion', 'explosion.mp3', {
 *     instances: 2
 * });
 * ```
 *
 * Not all browsers can play all audio formats.
 *
 * There is a good guide to what's supported: [Cross-browser audio basics: Audio codec support](https://developer.mozilla.org/en-US/Apps/Fundamentals/Audio_and_video_delivery/Cross-browser_audio_basics#Audio_Codec_Support).
 *
 * @class HTML5AudioSoundManager
 * @extends Phaser.Sound.BaseSoundManager
 * @memberof Phaser.Sound
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - Reference to the current game instance.
 */
@:native("Phaser.Sound.HTML5AudioSoundManager")
extern class HTML5AudioSoundManager extends phaser.sound.BaseSoundManager {
    public function new(game:phaser.Game);
    /**
     * Flag indicating whether if there are no idle instances of HTML5 Audio tag,
     * for any particular sound, if one of the used tags should be hijacked and used
     * for succeeding playback or if succeeding Phaser.Sound.HTML5AudioSound#play
     * call should be ignored.
     *
     * @name Phaser.Sound.HTML5AudioSoundManager#override
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    @:native('override') public var override_:Bool;
    /**
     * Value representing time difference, in seconds, between calling
     * play method on an audio tag and when it actually starts playing.
     * It is used to achieve more accurate delayed sound playback.
     *
     * You might need to tweak this value to get the desired results
     * since audio play delay varies depending on the browser/platform.
     *
     * @name Phaser.Sound.HTML5AudioSoundManager#audioPlayDelay
     * @type {number}
     * @default 0.1
     * @since 3.0.0
     */
    public var audioPlayDelay:Float;
    /**
     * A value by which we should offset the loop end marker of the
     * looping sound to compensate for lag, caused by changing audio
     * tag playback position, in order to achieve gapless looping.
     *
     * You might need to tweak this value to get the desired results
     * since loop lag varies depending on the browser/platform.
     *
     * @name Phaser.Sound.HTML5AudioSoundManager#loopEndOffset
     * @type {number}
     * @default 0.05
     * @since 3.0.0
     */
    public var loopEndOffset:Float;
    /**
     * Method used internally by Phaser.Sound.HTML5AudioSound class methods and property setters
     * to check if sound manager is locked and then either perform action immediately or queue it
     * to be performed once the sound manager gets unlocked.
     *
     * @method Phaser.Sound.HTML5AudioSoundManager#isLocked
     * @protected
     * @since 3.0.0
     *
     * @param {Phaser.Sound.HTML5AudioSound} sound - Sound object on which to perform queued action.
     * @param {string} prop - Name of the method to be called or property to be assigned a value to.
     * @param {*} [value] - An optional parameter that either holds an array of arguments to be passed to the method call or value to be set to the property.
     *
     * @return {boolean} Whether the sound manager is locked.
     */
    public function isLocked(sound:phaser.sound.HTML5AudioSound, prop:String, ?value:Dynamic):Bool;
    /**
     * Sets the muted state of all this Sound Manager.
     *
     * @method Phaser.Sound.HTML5AudioSoundManager#setMute
     * @fires Phaser.Sound.Events#GLOBAL_MUTE
     * @since 3.3.0
     *
     * @param {boolean} value - `true` to mute all sounds, `false` to unmute them.
     *
     * @return {Phaser.Sound.HTML5AudioSoundManager} This Sound Manager.
     */
    public function setMute(value:Bool):phaser.sound.HTML5AudioSoundManager;
    /**
     * Sets the volume of this Sound Manager.
     *
     * @method Phaser.Sound.HTML5AudioSoundManager#setVolume
     * @fires Phaser.Sound.Events#GLOBAL_VOLUME
     * @since 3.3.0
     *
     * @param {number} value - The global volume of this Sound Manager.
     *
     * @return {Phaser.Sound.HTML5AudioSoundManager} This Sound Manager.
     */
    public function setVolume(value:Float):phaser.sound.HTML5AudioSoundManager;
}
