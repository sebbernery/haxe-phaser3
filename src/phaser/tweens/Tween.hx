package phaser.tweens;

/**
 * @classdesc
 * [description]
 *
 * @class Tween
 * @memberof Phaser.Tweens
 * @constructor
 * @since 3.0.0
 *
 * @param {(Phaser.Tweens.TweenManager|Phaser.Tweens.Timeline)} parent - [description]
 * @param {Phaser.Tweens.TweenDataConfig[]} data - [description]
 * @param {array} targets - [description]
 */
@:native("Phaser.Tweens.Tween")
extern class Tween {
    public function new(parent:Dynamic, data:Array<phaser.tweens.TweenDataConfig>, targets:Array<Dynamic>);
    /**
     * [description]
     *
     * @name Phaser.Tweens.Tween#parent
     * @type {(Phaser.Tweens.TweenManager|Phaser.Tweens.Timeline)}
     * @since 3.0.0
     */
    public var parent:Dynamic;
    /**
     * Is the parent of this Tween a Timeline?
     *
     * @name Phaser.Tweens.Tween#parentIsTimeline
     * @type {boolean}
     * @since 3.0.0
     */
    public var parentIsTimeline:Bool;
    /**
     * An array of TweenData objects, each containing a unique property and target being tweened.
     *
     * @name Phaser.Tweens.Tween#data
     * @type {Phaser.Tweens.TweenDataConfig[]}
     * @since 3.0.0
     */
    public var data:Array<phaser.tweens.TweenDataConfig>;
    /**
     * data array doesn't change, so we can cache the length
     *
     * @name Phaser.Tweens.Tween#totalData
     * @type {integer}
     * @since 3.0.0
     */
    public var totalData:Int;
    /**
     * An array of references to the target/s this Tween is operating on
     *
     * @name Phaser.Tweens.Tween#targets
     * @type {object[]}
     * @since 3.0.0
     */
    public var targets:Array<Dynamic>;
    /**
     * Cached target total (not necessarily the same as the data total)
     *
     * @name Phaser.Tweens.Tween#totalTargets
     * @type {integer}
     * @since 3.0.0
     */
    public var totalTargets:Int;
    /**
     * If true then duration, delay, etc values are all frame totals.
     *
     * @name Phaser.Tweens.Tween#useFrames
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var useFrames:Bool;
    /**
     * Scales the time applied to this Tween. A value of 1 runs in real-time. A value of 0.5 runs 50% slower, and so on.
     * Value isn't used when calculating total duration of the tween, it's a run-time delta adjustment only.
     *
     * @name Phaser.Tweens.Tween#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * Loop this tween? Can be -1 for an infinite loop, or an integer.
     * When enabled it will play through ALL TweenDatas again (use TweenData.repeat to loop a single TD)
     *
     * @name Phaser.Tweens.Tween#loop
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var loop:Float;
    /**
     * Time in ms/frames before the tween loops.
     *
     * @name Phaser.Tweens.Tween#loopDelay
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var loopDelay:Float;
    /**
     * How many loops are left to run?
     *
     * @name Phaser.Tweens.Tween#loopCounter
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var loopCounter:Float;
    /**
     * Time in ms/frames before the 'onComplete' event fires. This never fires if loop = -1 (as it never completes)
     *
     * @name Phaser.Tweens.Tween#completeDelay
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var completeDelay:Float;
    /**
     * Countdown timer (used by timeline offset, loopDelay and completeDelay)
     *
     * @name Phaser.Tweens.Tween#countdown
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var countdown:Float;
    /**
     * Set only if this Tween is part of a Timeline.
     *
     * @name Phaser.Tweens.Tween#offset
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var offset:Float;
    /**
     * Set only if this Tween is part of a Timeline. The calculated offset amount.
     *
     * @name Phaser.Tweens.Tween#calculatedOffset
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var calculatedOffset:Float;
    /**
     * The current state of the tween
     *
     * @name Phaser.Tweens.Tween#state
     * @type {integer}
     * @since 3.0.0
     */
    public var state:Int;
    /**
     * Does the Tween start off paused? (if so it needs to be started with Tween.play)
     *
     * @name Phaser.Tweens.Tween#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * Elapsed time in ms/frames of this run through the Tween.
     *
     * @name Phaser.Tweens.Tween#elapsed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var elapsed:Float;
    /**
     * Total elapsed time in ms/frames of the entire Tween, including looping.
     *
     * @name Phaser.Tweens.Tween#totalElapsed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalElapsed:Float;
    /**
     * Time in ms/frames for the whole Tween to play through once, excluding loop amounts and loop delays.
     *
     * @name Phaser.Tweens.Tween#duration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * Value between 0 and 1. The amount through the Tween, excluding loops.
     *
     * @name Phaser.Tweens.Tween#progress
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var progress:Float;
    /**
     * Time in ms/frames for the Tween to complete (including looping)
     *
     * @name Phaser.Tweens.Tween#totalDuration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalDuration:Float;
    /**
     * Value between 0 and 1. The amount through the entire Tween, including looping.
     *
     * @name Phaser.Tweens.Tween#totalProgress
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalProgress:Float;
    /**
     * An object containing the various Tween callback references.
     *
     * @name Phaser.Tweens.Tween#callbacks
     * @type {object}
     * @default 0
     * @since 3.0.0
     */
    public var callbacks:Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#getValue
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getValue():Float;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#setTimeScale
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.Tweens.Tween} This Tween object.
     */
    public function setTimeScale(value:Float):phaser.tweens.Tween;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#getTimeScale
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getTimeScale():Float;
    /**
     * Checks if the Tween is currently active.
     *
     * @method Phaser.Tweens.Tween#isPlaying
     * @since 3.0.0
     *
     * @return {boolean} `true` if the Tween is active, otherwise `false`.
     */
    public function isPlaying():Bool;
    /**
     * Checks if the Tween is currently paused.
     *
     * @method Phaser.Tweens.Tween#isPaused
     * @since 3.0.0
     *
     * @return {boolean} `true` if the Tween is paused, otherwise `false`.
     */
    public function isPaused():Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#hasTarget
     * @since 3.0.0
     *
     * @param {object} target - [description]
     *
     * @return {boolean} [description]
     */
    public function hasTarget(target:Dynamic):Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#updateTo
     * @since 3.0.0
     *
     * @param {string} key - [description]
     * @param {*} value - [description]
     * @param {boolean} startToCurrent - [description]
     *
     * @return {Phaser.Tweens.Tween} This Tween object.
     */
    public function updateTo(key:String, value:Dynamic, startToCurrent:Bool):phaser.tweens.Tween;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#restart
     * @since 3.0.0
     */
    public function restart():Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#calcDuration
     * @since 3.0.0
     */
    public function calcDuration():Void;
    /**
     * Called by TweenManager.preUpdate as part of its loop to check pending and active tweens.
     * Should not be called directly.
     *
     * @method Phaser.Tweens.Tween#init
     * @since 3.0.0
     *
     * @return {boolean} Returns `true` if this Tween should be moved from the pending list to the active list by the Tween Manager.
     */
    public function init():Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#nextState
     * @since 3.0.0
     */
    public function nextState():Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#pause
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.Tween} This Tween object.
     */
    public function pause():phaser.tweens.Tween;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#play
     * @since 3.0.0
     *
     * @param {boolean} resetFromTimeline - [description]
     */
    public function play(resetFromTimeline:Bool):Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#resetTweenData
     * @since 3.0.0
     *
     * @param {boolean} resetFromLoop - [description]
     */
    public function resetTweenData(resetFromLoop:Bool):Void;
    /**
     * Resumes the playback of a previously paused Tween.
     *
     * @method Phaser.Tweens.Tween#resume
     * @since 3.0.0
     *
     * @return {Phaser.Tweens.Tween} This Tween object.
     */
    public function resume():phaser.tweens.Tween;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#seek
     * @since 3.0.0
     *
     * @param {number} toPosition - A value between 0 and 1.
     */
    public function seek(toPosition:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#setCallback
     * @since 3.0.0
     *
     * @param {string} type - [description]
     * @param {function} callback - [description]
     * @param {array} [params] - [description]
     * @param {object} [scope] - [description]
     *
     * @return {Phaser.Tweens.Tween} This Tween object.
     */
    public function setCallback(type:String, callback:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):phaser.tweens.Tween;
    /**
     * Flags the Tween as being complete, whatever stage of progress it is at.
     *
     * If an onComplete callback has been defined it will automatically invoke it, unless a `delay`
     * argument is provided, in which case the Tween will delay for that period of time before calling the callback.
     *
     * If you don't need a delay, or have an onComplete callback, then call `Tween.stop` instead.
     *
     * @method Phaser.Tweens.Tween#complete
     * @since 3.2.0
     *
     * @param {number} [delay=0] - The time to wait before invoking the complete callback. If zero it will fire immediately.
     */
    public function complete(?delay:Float):Void;
    /**
     * Stops the Tween immediately, whatever stage of progress it is at and flags it for removal by the TweenManager.
     *
     * @method Phaser.Tweens.Tween#stop
     * @since 3.0.0
     *
     * @param {number} [resetTo] - A value between 0 and 1.
     */
    public function stop(?resetTo:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#update
     * @since 3.0.0
     *
     * @param {number} timestamp - [description]
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     *
     * @return {boolean} Returns `true` if this Tween has finished and should be removed from the Tween Manager, otherwise returns `false`.
     */
    public function update(timestamp:Float, delta:Float):Bool;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#setStateFromEnd
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - [description]
     * @param {Phaser.Tweens.TweenDataConfig} tweenData - [description]
     * @param {number} diff - [description]
     *
     * @return {integer} The state of this Tween.
     */
    public function setStateFromEnd(tween:phaser.tweens.Tween, tweenData:phaser.tweens.TweenDataConfig, diff:Float):Int;
    /**
     * Was PLAYING_BACKWARD and has hit the start.
     *
     * @method Phaser.Tweens.Tween#setStateFromStart
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - [description]
     * @param {Phaser.Tweens.TweenDataConfig} tweenData - [description]
     * @param {number} diff - [description]
     *
     * @return {integer} The state of this Tween.
     */
    public function setStateFromStart(tween:phaser.tweens.Tween, tweenData:phaser.tweens.TweenDataConfig, diff:Float):Int;
    /**
     * [description]
     *
     * @method Phaser.Tweens.Tween#updateTweenData
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - [description]
     * @param {Phaser.Tweens.TweenDataConfig} tweenData - [description]
     * @param {number} delta - Either a value in ms, or 1 if Tween.useFrames is true
     *
     * @return {boolean} [description]
     */
    public function updateTweenData(tween:phaser.tweens.Tween, tweenData:phaser.tweens.TweenDataConfig, delta:Float):Bool;
}
