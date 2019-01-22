package phaser.tweens;

/**
 * @classdesc
 * [description]
 *
 * @class Timeline
 * @memberof Phaser.Tweens
 * @extends Phaser.Events.EventEmitter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Tweens.TweenManager} manager - [description]
 */
@:native("Phaser.Tweens.Timeline")
extern class Timeline extends phaser.events.EventEmitter {
    public function new(manager:phaser.tweens.TweenManager);
    /**
     * [description]
     *
     * @name Phaser.Tweens.Timeline#manager
     * @type {Phaser.Tweens.TweenManager}
     * @since 3.0.0
     */
    public var manager:phaser.tweens.TweenManager;
    /**
     * [description]
     *
     * @name Phaser.Tweens.Timeline#isTimeline
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var isTimeline:Bool;
    /**
     * An array of Tween objects, each containing a unique property and target being tweened.
     *
     * @name Phaser.Tweens.Timeline#data
     * @type {array}
     * @default []
     * @since 3.0.0
     */
    public var data:Array<Dynamic>;
    /**
     * data array doesn't usually change, so we can cache the length
     *
     * @name Phaser.Tweens.Timeline#totalData
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalData:Float;
    /**
     * If true then duration, delay, etc values are all frame totals.
     *
     * @name Phaser.Tweens.Timeline#useFrames
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var useFrames:Bool;
    /**
     * Scales the time applied to this Tween. A value of 1 runs in real-time. A value of 0.5 runs 50% slower, and so on.
     * Value isn't used when calculating total duration of the tween, it's a run-time delta adjustment only.
     *
     * @name Phaser.Tweens.Timeline#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * Loop this tween? Can be -1 for an infinite loop, or an integer.
     * When enabled it will play through ALL TweenDatas again (use TweenData.repeat to loop a single TD)
     *
     * @name Phaser.Tweens.Timeline#loop
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var loop:Float;
    /**
     * Time in ms/frames before the tween loops.
     *
     * @name Phaser.Tweens.Timeline#loopDelay
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var loopDelay:Float;
    /**
     * How many loops are left to run?
     *
     * @name Phaser.Tweens.Timeline#loopCounter
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var loopCounter:Float;
    /**
     * Time in ms/frames before the 'onComplete' event fires. This never fires if loop = true (as it never completes)
     *
     * @name Phaser.Tweens.Timeline#completeDelay
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var completeDelay:Float;
    /**
     * Countdown timer (used by loopDelay and completeDelay)
     *
     * @name Phaser.Tweens.Timeline#countdown
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var countdown:Float;
    /**
     * The current state of the tween
     *
     * @name Phaser.Tweens.Timeline#state
     * @type {integer}
     * @since 3.0.0
     */
    public var state:Int;
    /**
     * Does the Tween start off paused? (if so it needs to be started with Tween.play)
     *
     * @name Phaser.Tweens.Timeline#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * Elapsed time in ms/frames of this run through the Tween.
     *
     * @name Phaser.Tweens.Timeline#elapsed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var elapsed:Float;
    /**
     * Total elapsed time in ms/frames of the entire Tween, including looping.
     *
     * @name Phaser.Tweens.Timeline#totalElapsed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalElapsed:Float;
    /**
     * Time in ms/frames for the whole Tween to play through once, excluding loop amounts and loop delays.
     *
     * @name Phaser.Tweens.Timeline#duration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * Value between 0 and 1. The amount through the Tween, excluding loops.
     *
     * @name Phaser.Tweens.Timeline#progress
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var progress:Float;
    /**
     * Time in ms/frames for all Tweens to complete (including looping)
     *
     * @name Phaser.Tweens.Timeline#totalDuration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalDuration:Float;
    /**
     * Value between 0 and 1. The amount through the entire Tween, including looping.
     *
     * @name Phaser.Tweens.Timeline#totalProgress
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalProgress:Float;
    /**
     * Sets the value of the time scale applied to this Timeline. A value of 1 runs in real-time. A value of 0.5 runs 50% slower, and so on.
     * Value isn't used when calculating total duration of the tween, it's a run-time delta adjustment only.
     *
     * @method Phaser.Tweens.Timeline#setTimeScale
     * @since 3.0.0
     *
     * @param {number} value - The time scale value to set.
     *
     * @return {Phaser.Tweens.Timeline} This Timeline object.
     */
    public function setTimeScale(value:Float):phaser.tweens.Timeline;
    /**
     * Gets the value of the time scale applied to this Timeline. A value of 1 runs in real-time. A value of 0.5 runs 50% slower, and so on.
     *
     * @method Phaser.Tweens.Timeline#getTimeScale
     * @since 3.0.0
     *
     * @return {number} The value of the time scale applied to this Tween.
     */
    public function getTimeScale():Float;
    /**
     * Check whether or not the Timeline is playing.
     *
     * @method Phaser.Tweens.Timeline#isPlaying
     * @since 3.0.0
     *
     * @return {boolean} `true` if this Timeline is active, otherwise `false`.
     */
    public function isPlaying():Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#add
     * @since 3.0.0
     *
     * @param {object} config - [description]
     *
     * @return {Phaser.Tweens.Timeline} This Timeline object.
     */
    public function add(config:Dynamic):phaser.tweens.Timeline;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#queue
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - [description]
     *
     * @return {Phaser.Tweens.Timeline} This Timeline object.
     */
    public function queue(tween:phaser.tweens.Tween):phaser.tweens.Timeline;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#hasOffset
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - [description]
     *
     * @return {boolean} [description]
     */
    public function hasOffset(tween:phaser.tweens.Tween):Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#isOffsetAbsolute
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {boolean} [description]
     */
    public function isOffsetAbsolute(value:Float):Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#isOffsetRelative
     * @since 3.0.0
     *
     * @param {string} value - [description]
     *
     * @return {boolean} [description]
     */
    public function isOffsetRelative(value:String):Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#getRelativeOffset
     * @since 3.0.0
     *
     * @param {string} value - [description]
     * @param {number} base - [description]
     *
     * @return {number} [description]
     */
    public function getRelativeOffset(value:String, base:Float):Float;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#calcDuration
     * @since 3.0.0
     */
    public function calcDuration():Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#init
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function init():Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#resetTweens
     * @since 3.0.0
     *
     * @param {boolean} resetFromLoop - [description]
     */
    public function resetTweens(resetFromLoop:Bool):Void;
    /**
     * Sets a callback for the Tween Manager.
     *
     * @method Phaser.Tweens.Timeline#setCallback
     * @since 3.0.0
     *
     * @param {string} type - [description]
     * @param {function} callback - [description]
     * @param {array} [params] - [description]
     * @param {object} [scope] - [description]
     *
     * @return {Phaser.Tweens.Timeline} This Timeline object.
     */
    public function setCallback(type:String, callback:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):phaser.tweens.Timeline;
    /**
     * Delegates #makeActive to the Tween manager.
     *
     * @method Phaser.Tweens.Timeline#makeActive
     * @since 3.3.0
     *
     * @param {Phaser.Tweens.Tween} tween - The tween object to make active.
     *
     * @return {Phaser.Tweens.TweenManager} The Timeline's Tween Manager object.
     */
    public function makeActive(tween:phaser.tweens.Tween):phaser.tweens.TweenManager;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#play
     * @since 3.0.0
     */
    public function play():Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#nextState
     * @since 3.0.0
     */
    public function nextState():Void;
    /**
     * Returns 'true' if this Timeline has finished and should be removed from the Tween Manager.
     * Otherwise, returns false.
     *
     * @method Phaser.Tweens.Timeline#update
     * @since 3.0.0
     *
     * @param {number} timestamp - [description]
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     *
     * @return {boolean} Returns `true` if this Timeline has finished and should be removed from the Tween Manager.
     */
    public function update(timestamp:Float, delta:Float):Bool;
    /**
     * Stops the Tween immediately, whatever stage of progress it is at and flags it for removal by the TweenManager.
     *
     * @method Phaser.Tweens.Timeline#stop
     * @since 3.0.0
     */
    public function stop():Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#pause
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.Timeline} This Timeline object.
     */
    public function pause():phaser.tweens.Timeline;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#resume
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.Timeline} This Timeline object.
     */
    public function resume():phaser.tweens.Timeline;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Timeline#hasTarget
     * @since 3.0.0
     *
     * @param {object} target - [description]
     *
     * @return {boolean} [description]
     */
    public function hasTarget(target:Dynamic):Bool;
}
