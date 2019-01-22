package phaser.tweens;

/**
 * @classdesc
 * [description]
 *
 * @class TweenManager
 * @memberof Phaser.Tweens
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - [description]
 */
@:native("Phaser.Tweens.TweenManager")
extern class TweenManager {
    public function new(scene:phaser.Scene);
    /**
     * [description]
     *
     * @name Phaser.Tweens.TweenManager#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * [description]
     *
     * @name Phaser.Tweens.TweenManager#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * [description]
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
     * @param {object} config - [description]
     *
     * @return {Phaser.Tweens.Timeline} [description]
     */
    public function createTimeline(config:Dynamic):phaser.tweens.Timeline;
    /**
     * Create a Tween Timeline and add it to the active Tween list/
     *
     * @method Phaser.Tweens.TweenManager#timeline
     * @since 3.0.0
     *
     * @param {object} config - [description]
     *
     * @return {Phaser.Tweens.Timeline} [description]
     */
    public function timeline(config:Dynamic):phaser.tweens.Timeline;
    /**
     * Create a Tween and return it, but do NOT add it to the active or pending Tween lists.
     *
     * @method Phaser.Tweens.TweenManager#create
     * @since 3.0.0
     *
     * @param {object} config - [description]
     *
     * @return {Phaser.Tweens.Tween} [description]
     */
    public function create(config:Dynamic):phaser.tweens.Tween;
    /**
     * Create a Tween and add it to the active Tween list.
     *
     * @method Phaser.Tweens.TweenManager#add
     * @since 3.0.0
     *
     * @param {object} config - [description]
     *
     * @return {Phaser.Tweens.Tween} [description]
     */
    public function add(config:Dynamic):phaser.tweens.Tween;
    /**
     * Add an existing tween into the active Tween list.
     *
     * @method Phaser.Tweens.TweenManager#existing
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - [description]
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
     * @param {object} config - [description]
     *
     * @return {Phaser.Tweens.Tween} [description]
     */
    public function addCounter(config:Dynamic):phaser.tweens.Tween;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#preUpdate
     * @since 3.0.0
     */
    public function preUpdate():Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#update
     * @since 3.0.0
     *
     * @param {number} timestamp - [description]
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(timestamp:Float, delta:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#makeActive
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - [description]
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
     * @param {function} callback - [description]
     * @param {object} [scope] - [description]
     * @param {...*} [args] - [description]
     */
    public function each(callback:Dynamic, ?scope:Dynamic, ?args:Dynamic):Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#getAllTweens
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.Tween[]} [description]
     */
    public function getAllTweens():Array<phaser.tweens.Tween>;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#getGlobalTimeScale
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getGlobalTimeScale():Float;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#getTweensOf
     * @since 3.0.0
     *
     * @param {(object|array)} target - [description]
     *
     * @return {Phaser.Tweens.Tween[]} [description]
     */
    public function getTweensOf(target:Dynamic):Array<phaser.tweens.Tween>;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#isTweening
     * @since 3.0.0
     *
     * @param {object} target - [description]
     *
     * @return {boolean} [description]
     */
    public function isTweening(target:Dynamic):Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#killAll
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.TweenManager} [description]
     */
    public function killAll():phaser.tweens.TweenManager;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#killTweensOf
     * @since 3.0.0
     *
     * @param {(object|array)} target - [description]
     *
     * @return {Phaser.Tweens.TweenManager} [description]
     */
    public function killTweensOf(target:Dynamic):phaser.tweens.TweenManager;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#pauseAll
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.TweenManager} [description]
     */
    public function pauseAll():phaser.tweens.TweenManager;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#resumeAll
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.TweenManager} [description]
     */
    public function resumeAll():phaser.tweens.TweenManager;
    /**
     * [description]
     *
     * @method Phaser.Tweens.TweenManager#setGlobalTimeScale
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.Tweens.TweenManager} [description]
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
