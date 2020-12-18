package phaser.sound;

/**
 * @classdesc
 * Base class for other Sound Manager classes.
 *
 * @class BaseSoundManager
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Sound
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - Reference to the current game instance.
 *
 * @see Phaser.Sound.HTML5AudioSoundManager
 * @see Phaser.Sound.NoAudioSoundManager
 * @see Phaser.Sound.WebAudioSoundManager
 */
@:native("Phaser.Sound.BaseSoundManager")
extern class BaseSoundManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    /**
     * Local reference to game.
     *
     * @name Phaser.Sound.BaseSoundManager#game
     * @type {Phaser.Game}
     * @readonly
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * Local reference to the JSON Cache, as used by Audio Sprites.
     *
     * @name Phaser.Sound.BaseSoundManager#jsonCache
     * @type {Phaser.Cache.BaseCache}
     * @readonly
     * @since 3.7.0
     */
    public var jsonCache:phaser.cache.BaseCache;
    /**
     * Global mute setting.
     *
     * @name Phaser.Sound.BaseSoundManager#mute
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var mute:Bool;
    /**
     * Global volume setting.
     *
     * @name Phaser.Sound.BaseSoundManager#volume
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var volume:Float;
    /**
     * Flag indicating if sounds should be paused when game looses focus,
     * for instance when user switches to another tab/program/app.
     *
     * @name Phaser.Sound.BaseSoundManager#pauseOnBlur
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var pauseOnBlur:Bool;
    /**
     * Mobile devices require sounds to be triggered from an explicit user action,
     * such as a tap, before any sound can be loaded/played on a web page.
     * Set to true if the audio system is currently locked awaiting user interaction.
     *
     * @name Phaser.Sound.BaseSoundManager#locked
     * @type {boolean}
     * @readonly
     * @since 3.0.0
     */
    public var locked:Bool;
    /**
     * Global playback rate at which all the sounds will be played.
     * Value of 1.0 plays the audio at full speed, 0.5 plays the audio at half speed
     * and 2.0 doubles the audio's playback speed.
     *
     * @name Phaser.Sound.BaseSoundManager#rate
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var rate:Float;
    /**
     * Global detuning of all sounds in [cents](https://en.wikipedia.org/wiki/Cent_%28music%29).
     * The range of the value is -1200 to 1200, but we recommend setting it to [50](https://en.wikipedia.org/wiki/50_Cent).
     *
     * @name Phaser.Sound.BaseSoundManager#detune
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var detune:Float;
    /**
     * Adds a new sound into the sound manager.
     *
     * @method Phaser.Sound.BaseSoundManager#add
     * @override
     * @since 3.0.0
     *
     * @param {string} key - Asset key for the sound.
     * @param {Phaser.Types.Sound.SoundConfig} [config] - An optional config object containing default sound settings.
     *
     * @return {Phaser.Sound.BaseSound} The new sound instance.
     */
    public function add(key:String, ?config:phaser.types.sound.SoundConfig):phaser.sound.BaseSound;
    /**
     * Adds a new audio sprite sound into the sound manager.
     * Audio Sprites are a combination of audio files and a JSON configuration.
     * The JSON follows the format of that created by https://github.com/tonistiigi/audiosprite
     *
     * @method Phaser.Sound.BaseSoundManager#addAudioSprite
     * @since 3.0.0
     *
     * @param {string} key - Asset key for the sound.
     * @param {Phaser.Types.Sound.SoundConfig} [config] - An optional config object containing default sound settings.
     *
     * @return {(Phaser.Sound.HTML5AudioSound|Phaser.Sound.WebAudioSound)} The new audio sprite sound instance.
     */
    public function addAudioSprite(key:String, ?config:phaser.types.sound.SoundConfig):phaser.sound.HTML5AudioSound;
    /**
     * Gets the first sound in the manager matching the given key, if any.
     *
     * @method Phaser.Sound.BaseSoundManager#get
     * @since 3.23.0
     *
     * @param {string} key - Sound asset key.
     *
     * @return {?Phaser.Sound.BaseSound} - The sound, or null.
     */
    public function get(key:String):phaser.sound.BaseSound;
    /**
     * Gets any sounds in the manager matching the given key.
     *
     * @method Phaser.Sound.BaseSoundManager#getAll
     * @since 3.23.0
     *
     * @param {string} key - Sound asset key.
     *
     * @return {Phaser.Sound.BaseSound[]} - The sounds, or an empty array.
     */
    public function getAll(key:String):Array<phaser.sound.BaseSound>;
    /**
     * Adds a new sound to the sound manager and plays it.
     * The sound will be automatically removed (destroyed) once playback ends.
     * This lets you play a new sound on the fly without the need to keep a reference to it.
     *
     * @method Phaser.Sound.BaseSoundManager#play
     * @listens Phaser.Sound.Events#COMPLETE
     * @since 3.0.0
     *
     * @param {string} key - Asset key for the sound.
     * @param {(Phaser.Types.Sound.SoundConfig|Phaser.Types.Sound.SoundMarker)} [extra] - An optional additional object containing settings to be applied to the sound. It could be either config or marker object.
     *
     * @return {boolean} Whether the sound started playing successfully.
     */
    public function play(key:String, ?extra:Dynamic):Bool;
    /**
     * Adds a new audio sprite sound to the sound manager and plays it.
     * The sprite will be automatically removed (destroyed) once playback ends.
     * This lets you play a new sound on the fly without the need to keep a reference to it.
     *
     * @method Phaser.Sound.BaseSoundManager#playAudioSprite
     * @listens Phaser.Sound.Events#COMPLETE
     * @since 3.0.0
     *
     * @param {string} key - Asset key for the sound.
     * @param {string} spriteName - The name of the sound sprite to play.
     * @param {Phaser.Types.Sound.SoundConfig} [config] - An optional config object containing default sound settings.
     *
     * @return {boolean} Whether the audio sprite sound started playing successfully.
     */
    public function playAudioSprite(key:String, spriteName:String, ?config:phaser.types.sound.SoundConfig):Bool;
    /**
     * Removes a sound from the sound manager.
     * The removed sound is destroyed before removal.
     *
     * @method Phaser.Sound.BaseSoundManager#remove
     * @since 3.0.0
     *
     * @param {Phaser.Sound.BaseSound} sound - The sound object to remove.
     *
     * @return {boolean} True if the sound was removed successfully, otherwise false.
     */
    public function remove(sound:phaser.sound.BaseSound):Bool;
    /**
     * Removes all sounds from the manager, destroying the sounds.
     *
     * @method Phaser.Sound.BaseSoundManager#removeAll
     * @since 3.23.0
     */
    public function removeAll():Void;
    /**
     * Removes all sounds from the sound manager that have an asset key matching the given value.
     * The removed sounds are destroyed before removal.
     *
     * @method Phaser.Sound.BaseSoundManager#removeByKey
     * @since 3.0.0
     *
     * @param {string} key - The key to match when removing sound objects.
     *
     * @return {number} The number of matching sound objects that were removed.
     */
    public function removeByKey(key:String):Float;
    /**
     * Pauses all the sounds in the game.
     *
     * @method Phaser.Sound.BaseSoundManager#pauseAll
     * @fires Phaser.Sound.Events#PAUSE_ALL
     * @since 3.0.0
     */
    public function pauseAll():Void;
    /**
     * Resumes all the sounds in the game.
     *
     * @method Phaser.Sound.BaseSoundManager#resumeAll
     * @fires Phaser.Sound.Events#RESUME_ALL
     * @since 3.0.0
     */
    public function resumeAll():Void;
    /**
     * Stops all the sounds in the game.
     *
     * @method Phaser.Sound.BaseSoundManager#stopAll
     * @fires Phaser.Sound.Events#STOP_ALL
     * @since 3.0.0
     */
    public function stopAll():Void;
    /**
     * Stops any sounds matching the given key.
     *
     * @method Phaser.Sound.BaseSoundManager#stopByKey
     * @since 3.23.0
     *
     * @param {string} key - Sound asset key.
     *
     * @return {number} - How many sounds were stopped.
     */
    public function stopByKey(key:String):Float;
    /**
     * Method used internally for unlocking audio playback on devices that
     * require user interaction before any sound can be played on a web page.
     *
     * Read more about how this issue is handled here in [this article](https://medium.com/@pgoloskokovic/unlocking-web-audio-the-smarter-way-8858218c0e09).
     *
     * @method Phaser.Sound.BaseSoundManager#unlock
     * @override
     * @protected
     * @since 3.0.0
     */
    public function unlock():Void;
    /**
     * Method used internally for pausing sound manager if
     * Phaser.Sound.BaseSoundManager#pauseOnBlur is set to true.
     *
     * @method Phaser.Sound.BaseSoundManager#onBlur
     * @override
     * @protected
     * @since 3.0.0
     */
    public function onBlur():Void;
    /**
     * Method used internally for resuming sound manager if
     * Phaser.Sound.BaseSoundManager#pauseOnBlur is set to true.
     *
     * @method Phaser.Sound.BaseSoundManager#onFocus
     * @override
     * @protected
     * @since 3.0.0
     */
    public function onFocus():Void;
    /**
     * Update method called on every game step.
     * Removes destroyed sounds and updates every active sound in the game.
     *
     * @method Phaser.Sound.BaseSoundManager#update
     * @protected
     * @fires Phaser.Sound.Events#UNLOCKED
     * @since 3.0.0
     *
     * @param {number} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time elapsed since the last frame.
     */
    public function update(time:Float, delta:Float):Void;
    /**
     * Sets the global playback rate at which all the sounds will be played.
     *
     * For example, a value of 1.0 plays the audio at full speed, 0.5 plays the audio at half speed
     * and 2.0 doubles the audios playback speed.
     *
     * @method Phaser.Sound.BaseSoundManager#setRate
     * @fires Phaser.Sound.Events#GLOBAL_RATE
     * @since 3.3.0
     *
     * @param {number} value - Global playback rate at which all the sounds will be played.
     *
     * @return {Phaser.Sound.BaseSoundManager} This Sound Manager.
     */
    public function setRate(value:Float):phaser.sound.BaseSoundManager;
    /**
     * Sets the global detuning of all sounds in [cents](https://en.wikipedia.org/wiki/Cent_%28music%29).
     * The range of the value is -1200 to 1200, but we recommend setting it to [50](https://en.wikipedia.org/wiki/50_Cent).
     *
     * @method Phaser.Sound.BaseSoundManager#setDetune
     * @fires Phaser.Sound.Events#GLOBAL_DETUNE
     * @since 3.3.0
     *
     * @param {number} value - The range of the value is -1200 to 1200, but we recommend setting it to [50](https://en.wikipedia.org/wiki/50_Cent).
     *
     * @return {Phaser.Sound.BaseSoundManager} This Sound Manager.
     */
    public function setDetune(value:Float):phaser.sound.BaseSoundManager;
}
