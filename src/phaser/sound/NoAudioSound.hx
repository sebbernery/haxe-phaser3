package phaser.sound;

/**
 * @classdesc
 * No audio implementation of the sound. It is used if audio has been
 * disabled in the game config or the device doesn't support any audio.
 *
 * It represents a graceful degradation of sound logic that provides
 * minimal functionality and prevents Phaser projects that use audio from
 * breaking on devices that don't support any audio playback technologies.
 *
 * @class NoAudioSound
 * @memberof Phaser.Sound
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Sound.NoAudioSoundManager} manager - Reference to the current sound manager instance.
 * @param {string} key - Asset key for the sound.
 * @param {Phaser.Types.Sound.SoundConfig} [config={}] - An optional config object containing default sound settings.
 */
@:native("Phaser.Sound.NoAudioSound")
extern class NoAudioSound {
    public function new(manager:phaser.sound.NoAudioSoundManager, key:String, ?config:phaser.types.sound.SoundConfig);
    /**
     * @method Phaser.Sound.NoAudioSound#addMarker
     * @since 3.0.0
     *
     * @param {Phaser.Types.Sound.SoundMarker} marker - Marker object.
     *
     * @return {boolean} false
     */
    public function addMarker(marker:phaser.types.sound.SoundMarker):Bool;
    /**
     * @method Phaser.Sound.NoAudioSound#updateMarker
     * @since 3.0.0
     *
     * @param {Phaser.Types.Sound.SoundMarker} marker - Marker object with updated values.
     *
     * @return {boolean} false
     */
    public function updateMarker(marker:phaser.types.sound.SoundMarker):Bool;
    /**
     * @method Phaser.Sound.NoAudioSound#removeMarker
     * @since 3.0.0
     *
     * @param {string} markerName - The name of the marker to remove.
     *
     * @return {null} null
     */
    public function removeMarker(markerName:String):Dynamic;
    /**
     * @method Phaser.Sound.NoAudioSound#play
     * @since 3.0.0
     *
     * @param {(string|Phaser.Types.Sound.SoundConfig)} [markerName=''] - If you want to play a marker then provide the marker name here. Alternatively, this parameter can be a SoundConfig object.
     * @param {Phaser.Types.Sound.SoundConfig} [config] - Optional sound config object to be applied to this marker or entire sound if no marker name is provided. It gets memorized for future plays of current section of the sound.
     *
     * @return {boolean} false
     */
    public function play(?markerName:Dynamic, ?config:phaser.types.sound.SoundConfig):Bool;
    /**
     * @method Phaser.Sound.NoAudioSound#pause
     * @since 3.0.0
     *
     * @return {boolean} false
     */
    public function pause():Bool;
    /**
     * Resumes the sound.
     *
     * @method Phaser.Sound.NoAudioSound#resume
     * @since 3.0.0
     *
     * @return {boolean} false
     */
    public function resume():Bool;
    /**
     * Stop playing this sound.
     *
     * @method Phaser.Sound.NoAudioSound#stop
     * @since 3.0.0
     *
     * @return {boolean} false
     */
    public function stop():Bool;
    /**
     * Destroys this sound and all associated events and marks it for removal from the sound manager.
     *
     * @method Phaser.Sound.NoAudioSound#destroy
     * @fires Phaser.Sound.Events#DESTROY
     * @since 3.0.0
     */
    public function destroy():Void;
}
