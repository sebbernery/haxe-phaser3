package phaser.sound;

/**
 * @classdesc
 * No-audio implementation of the Sound Manager. It is used if audio has been
 * disabled in the game config or the device doesn't support any audio.
 *
 * It represents a graceful degradation of Sound Manager logic that provides
 * minimal functionality and prevents Phaser projects that use audio from
 * breaking on devices that don't support any audio playback technologies.
 *
 * @class NoAudioSoundManager
 * @extends Phaser.Sound.BaseSoundManager
 * @memberof Phaser.Sound
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - Reference to the current game instance.
 */
@:native("Phaser.Sound.NoAudioSoundManager")
extern class NoAudioSoundManager extends phaser.sound.BaseSoundManager {
    public function new(game:phaser.Game);
}
