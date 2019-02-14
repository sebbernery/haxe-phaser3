package phaser.tweens;

/**
 * @classdesc
 * The Tween Manager is a default Scene Plugin which controls and updates Tweens and Timelines.
 *
 * @class TweenManager
 * @memberof Phaser.Tweens
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene which owns this Tween Manager.
 */
@:native("Phaser.Tweens.TweenManager")
extern class TweenManager {
    public function new(scene:phaser.Scene);
    /**
     * The Scene which owns this Tween Manager.
     *
     * @name Phaser.Tweens.TweenManager#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * The Systems object of the Scene which owns this Tween Manager.
     *
     * @name Phaser.Tweens.TweenManager#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * The time scale of the Tween Manager.
     *
     * This value scales the time delta between two frames, thus influencing the speed of time for all Tweens owned by this Tween Manager.
     *
     * @name Phaser.Tweens.TweenManager#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * Create a Tween Timeline and return it, but do NOT add it to the active or pending Tween lists.
     *
     * @method Phaser.Tweens.TweenManager#createTimeline
     * @since 3.0.0
     *
     * @param {object} config - The configuration object for the Timeline and its Tweens.
     *
     * @return {Phaser.Tweens.Timeline} The created Timeline object.
     */
    public function createTimeline(config:Dynamic):phaser.tweens.Timeline;
    /**
     * Create a Tween Timeline and add it to the active Tween list/
     *
     * @method Phaser.Tweens.TweenManager#timeline
     * @since 3.0.0
     *
     * @param {object} config - The configuration object for the Timeline and its Tweens.
     *
     * @return {Phaser.Tweens.Timeline} The created Timeline object.
     */
    public function timeline(config:Dynamic):phaser.tweens.Timeline;
    /**
     * Create a Tween and return it, but do NOT add it to the active or pending Tween lists.
     *
     * @method Phaser.Tweens.TweenManager#create
     * @since 3.0.0
     *
     * @param {object} config - The configuration object for the Tween as per {@link Phaser.Tweens.Builders.TweenBuilder}.
     *
     * @return {Phaser.Tweens.Tween} The created Tween object.
     */
    public function create(config:Dynamic):phaser.tweens.Tween;
    /**
     * Create a Tween and add it to the active Tween list.
     *
     * @method Phaser.Tweens.TweenManager#add
     * @since 3.0.0
     *
     * @param {object} config - The configuration object for the Tween as per the {@link Phaser.Tweens.Builders.TweenBuilder}.
     *
     * @return {Phaser.Tweens.Tween} The created Tween.
     */
    public function add(config:Dynamic):phaser.tweens.Tween;
    /**
     * Add an existing tween into the active Tween list.
     *
     * @method Phaser.Tweens.TweenManager#existing
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to add.
     *
     * @return {Phaser.Tweens.TweenManager} This Tween Manager object.
     */
    public function existing(tween:phaser.tweens.Tween):phaser.tweens.TweenManager;
    /**
     * Create a Tween and add it to the active Tween list.
     *
     * @method Phaser.Tweens.TweenManager#addCounter
     * @since 3.0.0
     *
     * @param {object} config - The configuration object for the Number Tween as per the {@link Phaser.Tweens.Builders.NumberTweenBuilder}.
     *
     * @return {Phaser.Tweens.Tween} The created Number Tween.
     */
    public function addCounter(config:Dynamic):phaser.tweens.Tween;
    /**
     * Updates the Tween Manager's internal lists at the start of the frame.
     *
     * This method will return immediately if no changes have been indicated.
     *
     * @method Phaser.Tweens.TweenManager#preUpdate
     * @since 3.0.0
     */
    public function preUpdate():Void;
    /**
     * Updates all Tweens and Timelines of the Tween Manager.
     *
     * @method Phaser.Tweens.TweenManager#update
     * @since 3.0.0
     *
     * @param {number} timestamp - The current time in milliseconds.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(timestamp:Float, delta:Float):Void;
    /**
     * Checks if a Tween or Timeline is active and adds it to the Tween Manager at the start of the frame if it isn't.
     *
     * @method Phaser.Tweens.TweenManager#makeActive
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to check.
     *
     * @return {Phaser.Tweens.TweenManager} This Tween Manager object.
     */
    public function makeActive(tween:phaser.tweens.Tween):phaser.tweens.TweenManager;
    /**
     * Passes all Tweens to the given callback.
     *
     * @method Phaser.Tweens.TweenManager#each
     * @since 3.0.0
     *
     * @param {function} callback - The function to call.
     * @param {object} [scope] - The scope (`this` object) to call the function with.
     * @param {...*} [args] - The arguments to pass into the function. Its first argument will always be the Tween currently being iterated.
     */
    public function each(callback:Dynamic, ?scope:Dynamic, ?args:Dynamic):Void;
    /**
     * Returns an array of all active Tweens and Timelines in the Tween Manager.
     *
     * @method Phaser.Tweens.TweenManager#getAllTweens
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.Tween[]} A new array containing references to all active Tweens and Timelines.
     */
    public function getAllTweens():Array<phaser.tweens.Tween>;
    /**
     * Returns the scale of the time delta for all Tweens and Timelines owned by this Tween Manager.
     *
     * @method Phaser.Tweens.TweenManager#getGlobalTimeScale
     * @since 3.0.0
     *
     * @return {number} The scale of the time delta, usually 1.
     */
    public function getGlobalTimeScale():Float;
    /**
     * Returns an array of all Tweens or Timelines in the Tween Manager which affect the given target or array of targets.
     *
     * @method Phaser.Tweens.TweenManager#getTweensOf
     * @since 3.0.0
     *
     * @param {(object|array)} target - The target to look for. Provide an array to look for multiple targets.
     *
     * @return {Phaser.Tweens.Tween[]} A new array containing all Tweens and Timelines which affect the given target(s).
     */
    public function getTweensOf(target:Dynamic):Array<phaser.tweens.Tween>;
    /**
     * Checks if the given object is being affected by a playing Tween.
     *
     * @method Phaser.Tweens.TweenManager#isTweening
     * @since 3.0.0
     *
     * @param {object} target - target Phaser.Tweens.Tween object
     *
     * @return {boolean} returns if target tween object is active or not
     */
    public function isTweening(target:Dynamic):Bool;
    /**
     * Stops all Tweens in this Tween Manager. They will be removed at the start of the frame.
     *
     * @method Phaser.Tweens.TweenManager#killAll
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.TweenManager} This Tween Manager.
     */
    public function killAll():phaser.tweens.TweenManager;
    /**
     * Stops all Tweens which affect the given target or array of targets. The Tweens will be removed from the Tween Manager at the start of the frame.
     *
     * @see {@link #getTweensOf}
     *
     * @method Phaser.Tweens.TweenManager#killTweensOf
     * @since 3.0.0
     *
     * @param {(object|array)} target - The target to look for. Provide an array to look for multiple targets.
     *
     * @return {Phaser.Tweens.TweenManager} This Tween Manager.
     */
    public function killTweensOf(target:Dynamic):phaser.tweens.TweenManager;
    /**
     * Pauses all Tweens in this Tween Manager.
     *
     * @method Phaser.Tweens.TweenManager#pauseAll
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.TweenManager} This Tween Manager.
     */
    public function pauseAll():phaser.tweens.TweenManager;
    /**
     * Resumes all Tweens in this Tween Manager.
     *
     * @method Phaser.Tweens.TweenManager#resumeAll
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.TweenManager} This Tween Manager.
     */
    public function resumeAll():phaser.tweens.TweenManager;
    /**
     * Sets a new scale of the time delta for this Tween Manager.
     *
     * The time delta is the time elapsed between two consecutive frames and influences the speed of time for this Tween Manager and all Tweens it owns. Values higher than 1 increase the speed of time, while values smaller than 1 decrease it. A value of 0 freezes time and is effectively equivalent to pausing all Tweens.
     *
     * @method Phaser.Tweens.TweenManager#setGlobalTimeScale
     * @since 3.0.0
     *
     * @param {number} value - The new scale of the time delta, where 1 is the normal speed.
     *
     * @return {Phaser.Tweens.TweenManager} This Tween Manager.
     */
    public function setGlobalTimeScale(value:Float):phaser.tweens.TweenManager;
    /**
     * The Scene that owns this plugin is shutting down.
     * We need to kill and reset all internal properties as well as stop listening to Scene events.
     *
     * @method Phaser.Tweens.TweenManager#shutdown
     * @since 3.0.0
     */
    public function shutdown():Void;
    /**
     * The Scene that owns this plugin is being destroyed.
     * We need to shutdown and then kill off all external references.
     *
     * @method Phaser.Tweens.TweenManager#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
