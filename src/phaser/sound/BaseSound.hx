package phaser.sound;

/**
 * @classdesc
 * Class containing all the shared state and behavior of a sound object, independent of the implementation.
 *
 * @class BaseSound
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Sound
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Sound.BaseSoundManager} manager - Reference to the current sound manager instance.
 * @param {string} key - Asset key for the sound.
 * @param {Phaser.Types.Sound.SoundConfig} [config] - An optional config object containing default sound settings.
 */
@:native("Phaser.Sound.BaseSound")
extern class BaseSound extends phaser.events.EventEmitter {
    public function new(manager:phaser.sound.BaseSoundManager, key:String, ?config:phaser.types.sound.SoundConfig);
    /**
     * Asset key for the sound.
     *
     * @name Phaser.Sound.BaseSound#key
     * @type {string}
     * @readonly
     * @since 3.0.0
     */
    public var key:String;
    /**
     * Flag indicating if sound is currently playing.
     *
     * @name Phaser.Sound.BaseSound#isPlaying
     * @type {boolean}
     * @default false
     * @readonly
     * @since 3.0.0
     */
    public var isPlaying:Bool;
    /**
     * Flag indicating if sound is currently paused.
     *
     * @name Phaser.Sound.BaseSound#isPaused
     * @type {boolean}
     * @default false
     * @readonly
     * @since 3.0.0
     */
    public var isPaused:Bool;
    /**
     * A property that holds the value of sound's actual playback rate,
     * after its rate and detune values has been combined with global
     * rate and detune values.
     *
     * @name Phaser.Sound.BaseSound#totalRate
     * @type {number}
     * @default 1
     * @readonly
     * @since 3.0.0
     */
    public var totalRate:Float;
    /**
     * A value representing the duration, in seconds.
     * It could be total sound duration or a marker duration.
     *
     * @name Phaser.Sound.BaseSound#duration
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * The total duration of the sound in seconds.
     *
     * @name Phaser.Sound.BaseSound#totalDuration
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var totalDuration:Float;
    /**
     * Object containing markers definitions.
     *
     * @name Phaser.Sound.BaseSound#markers
     * @type {Object.<string, Phaser.Types.Sound.SoundMarker>}
     * @default {}
     * @readonly
     * @since 3.0.0
     */
    public var markers:Dynamic;
    /**
     * Currently playing marker.
     * 'null' if whole sound is playing.
     *
     * @name Phaser.Sound.BaseSound#currentMarker
     * @type {Phaser.Types.Sound.SoundMarker}
     * @default null
     * @readonly
     * @since 3.0.0
     */
    public var currentMarker:phaser.types.sound.SoundMarker;
    /**
     * Adds a marker into the current sound. A marker is represented by name, start time, duration, and optionally config object.
     * This allows you to bundle multiple sounds together into a single audio file and use markers to jump between them for playback.
     *
     * @method Phaser.Sound.BaseSound#addMarker
     * @since 3.0.0
     *
     * @param {Phaser.Types.Sound.SoundMarker} marker - Marker object.
     *
     * @return {boolean} Whether the marker was added successfully.
     */
    public function addMarker(marker:phaser.types.sound.SoundMarker):Bool;
    /**
     * Updates previously added marker.
     *
     * @method Phaser.Sound.BaseSound#updateMarker
     * @since 3.0.0
     *
     * @param {Phaser.Types.Sound.SoundMarker} marker - Marker object with updated values.
     *
     * @return {boolean} Whether the marker was updated successfully.
     */
    public function updateMarker(marker:phaser.types.sound.SoundMarker):Bool;
    /**
     * Removes a marker from the sound.
     *
     * @method Phaser.Sound.BaseSound#removeMarker
     * @since 3.0.0
     *
     * @param {string} markerName - The name of the marker to remove.
     *
     * @return {?Phaser.Types.Sound.SoundMarker} Removed marker object or 'null' if there was no marker with provided name.
     */
    public function removeMarker(markerName:String):phaser.types.sound.SoundMarker;
    /**
     * Play this sound, or a marked section of it.
     * It always plays the sound from the start. If you want to start playback from a specific time
     * you can set 'seek' setting of the config object, provided to this call, to that value.
     *
     * @method Phaser.Sound.BaseSound#play
     * @since 3.0.0
     *
     * @param {(string|Phaser.Types.Sound.SoundConfig)} [markerName=''] - If you want to play a marker then provide the marker name here. Alternatively, this parameter can be a SoundConfig object.
     * @param {Phaser.Types.Sound.SoundConfig} [config] - Optional sound config object to be applied to this marker or entire sound if no marker name is provided. It gets memorized for future plays of current section of the sound.
     *
     * @return {boolean} Whether the sound started playing successfully.
     */
    public function play(?markerName:Dynamic, ?config:phaser.types.sound.SoundConfig):Bool;
    /**
     * Pauses the sound.
     *
     * @method Phaser.Sound.BaseSound#pause
     * @since 3.0.0
     *
     * @return {boolean} Whether the sound was paused successfully.
     */
    public function pause():Bool;
    /**
     * Resumes the sound.
     *
     * @method Phaser.Sound.BaseSound#resume
     * @since 3.0.0
     *
     * @return {boolean} Whether the sound was resumed successfully.
     */
    public function resume():Bool;
    /**
     * Stop playing this sound.
     *
     * @method Phaser.Sound.BaseSound#stop
     * @since 3.0.0
     *
     * @return {boolean} Whether the sound was stopped successfully.
     */
    public function stop():Bool;
    /**
     * Method used internally for applying config values to some of the sound properties.
     *
     * @method Phaser.Sound.BaseSound#applyConfig
     * @protected
     * @since 3.0.0
     */
    public function applyConfig():Void;
    /**
     * Method used internally for resetting values of some of the config properties.
     *
     * @method Phaser.Sound.BaseSound#resetConfig
     * @protected
     * @since 3.0.0
     */
    public function resetConfig():Void;
    /**
     * Update method called automatically by sound manager on every game step.
     *
     * @method Phaser.Sound.BaseSound#update
     * @override
     * @protected
     * @since 3.0.0
     *
     * @param {number} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time elapsed since the last frame.
     */
    public function update(time:Float, delta:Float):Void;
    /**
     * Method used internally to calculate total playback rate of the sound.
     *
     * @method Phaser.Sound.BaseSound#calculateRate
     * @protected
     * @since 3.0.0
     */
    public function calculateRate():Void;
}
