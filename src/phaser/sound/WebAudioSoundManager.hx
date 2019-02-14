package phaser.sound;

/**
 * @classdesc
 * Web Audio API implementation of the sound manager.
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
