package phaser.tweens;

/**
 * @classdesc
 * A Tween is able to manipulate the properties of one or more objects to any given value, based
 * on a duration and type of ease. They are rarely instantiated directly and instead should be
 * created via the TweenManager.
 *
 * @class Tween
 * @memberof Phaser.Tweens
 * @constructor
 * @since 3.0.0
 *
 * @param {(Phaser.Tweens.TweenManager|Phaser.Tweens.Timeline)} parent - A reference to the parent of this Tween. Either the Tween Manager or a Tween Timeline instance.
 * @param {Phaser.Tweens.TweenDataConfig[]} data - An array of TweenData objects, each containing a unique property to be tweened.
 * @param {array} targets - An array of targets to be tweened.
 */
@:native("Phaser.Tweens.Tween")
extern class Tween {
    public function new(parent:Dynamic, data:Array<phaser.tweens.TweenDataConfig>, targets:Array<Dynamic>);
    /**
     * A reference to the parent of this Tween.
     * Either the Tween Manager or a Tween Timeline instance.
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
     * The cached length of the data array.
     *
     * @name Phaser.Tweens.Tween#totalData
     * @type {integer}
     * @since 3.0.0
     */
    public var totalData:Int;
    /**
     * An array of references to the target/s this Tween is operating on.
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
     * If `true` then duration, delay, etc values are all frame totals.
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
     * When enabled it will play through ALL TweenDatas again. Use TweenData.repeat to loop a single element.
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
     * Returns the current value of the Tween.
     *
     * @method Phaser.Tweens.Tween#getValue
     * @since 3.0.0
     *
     * @return {number} The value of the Tween.
     */
    public function getValue():Float;
    /**
     * Set the scale the time applied to this Tween. A value of 1 runs in real-time. A value of 0.5 runs 50% slower, and so on.
     *
     * @method Phaser.Tweens.Tween#setTimeScale
     * @since 3.0.0
     *
     * @param {number} value - The scale factor for timescale.
     *
     * @return {this} - This Tween instance.
     */
    public function setTimeScale(value:Float):Dynamic;
    /**
     * Returns the scale of the time applied to this Tween.
     *
     * @method Phaser.Tweens.Tween#getTimeScale
     * @since 3.0.0
     *
     * @return {number} The timescale of this tween (between 0 and 1)
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
     * See if this Tween is currently acting upon the given target.
     *
     * @method Phaser.Tweens.Tween#hasTarget
     * @since 3.0.0
     *
     * @param {object} target - The target to check against this Tween.
     *
     * @return {boolean} `true` if the given target is a target of this Tween, otherwise `false`.
     */
    public function hasTarget(target:Dynamic):Bool;
    /**
     * Updates the value of a property of this Tween to a new value, without adjusting the
     * Tween duration or current progress.
     *
     * You can optionally tell it to set the 'start' value to be the current value (before the change).
     *
     * @method Phaser.Tweens.Tween#updateTo
     * @since 3.0.0
     *
     * @param {string} key - The property to set the new value for.
     * @param {*} value - The new value of the property.
     * @param {boolean} [startToCurrent=false] - Should this change set the start value to be the current value?
     *
     * @return {this} - This Tween instance.
     */
    public function updateTo(key:String, value:Dynamic, ?startToCurrent:Bool):Dynamic;
    /**
     * Restarts the tween from the beginning.
     *
     * @method Phaser.Tweens.Tween#restart
     * @since 3.0.0
     *
     * @return {this} This Tween instance.
     */
    public function restart():Dynamic;
    /**
     * Internal method that calculates the overall duration of the Tween.
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
     * Internal method that advances to the next state of the Tween during playback.
     *
     * @method Phaser.Tweens.Tween#nextState
     * @since 3.0.0
     */
    public function nextState():Void;
    /**
     * Pauses the Tween immediately. Use `resume` to continue playback.
     *
     * @method Phaser.Tweens.Tween#pause
     * @since 3.0.0
     *
     * @return {this} - This Tween instance.
     */
    public function pause():Dynamic;
    /**
     * Starts a Tween playing.
     *
     * You only need to call this method if you have configured the tween to be paused on creation.
     *
     * @method Phaser.Tweens.Tween#play
     * @since 3.0.0
     *
     * @param {boolean} resetFromTimeline - Is this Tween being played as part of a Timeline?
     *
     * @return {this} This Tween instance.
     */
    public function play(resetFromTimeline:Bool):Dynamic;
    /**
     * Internal method that resets all of the Tween Data, including the progress and elapsed values.
     *
     * @method Phaser.Tweens.Tween#resetTweenData
     * @since 3.0.0
     *
     * @param {boolean} resetFromLoop - Has this method been called as part of a loop?
     */
    public function resetTweenData(resetFromLoop:Bool):Void;
    /**
     * Resumes the playback of a previously paused Tween.
     *
     * @method Phaser.Tweens.Tween#resume
     * @since 3.0.0
     *
     * @return {this} - This Tween instance.
     */
    public function resume():Dynamic;
    /**
     * Attempts to seek to a specific position in a Tween.
     *
     * @method Phaser.Tweens.Tween#seek
     * @since 3.0.0
     *
     * @param {number} toPosition - A value between 0 and 1 which represents the progress point to seek to.
     *
     * @return {this} This Tween instance.
     */
    public function seek(toPosition:Float):Dynamic;
    /**
     * Sets an event based callback to be invoked during playback.
     *
     * @method Phaser.Tweens.Tween#setCallback
     * @since 3.0.0
     *
     * @param {string} type - Type of the callback.
     * @param {function} callback - Callback function.
     * @param {array} [params] - An array of parameters for specified callbacks types.
     * @param {object} [scope] - The context the callback will be invoked in.
     *
     * @return {this} This Tween instance.
     */
    public function setCallback(type:String, callback:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):Dynamic;
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
     *
     * @return {this} This Tween instance.
     */
    public function complete(?delay:Float):Dynamic;
    /**
     * Stops the Tween immediately, whatever stage of progress it is at and flags it for removal by the TweenManager.
     *
     * @method Phaser.Tweens.Tween#stop
     * @since 3.0.0
     *
     * @param {number} [resetTo] - A value between 0 and 1.
     *
     * @return {this} This Tween instance.
     */
    public function stop(?resetTo:Float):Dynamic;
    /**
     * Internal method that advances the Tween based on the time values.
     *
     * @method Phaser.Tweens.Tween#update
     * @since 3.0.0
     *
     * @param {number} timestamp - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     *
     * @return {boolean} Returns `true` if this Tween has finished and should be removed from the Tween Manager, otherwise returns `false`.
     */
    public function update(timestamp:Float, delta:Float):Bool;
    /**
     * Internal method used as part of the playback process that sets a tween to play in reverse.
     *
     * @method Phaser.Tweens.Tween#setStateFromEnd
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to update.
     * @param {Phaser.Tweens.TweenDataConfig} tweenData - The TweenData property to update.
     * @param {number} diff - Any extra time that needs to be accounted for in the elapsed and progress values.
     *
     * @return {integer} The state of this Tween.
     */
    public function setStateFromEnd(tween:phaser.tweens.Tween, tweenData:phaser.tweens.TweenDataConfig, diff:Float):Int;
    /**
     * Internal method used as part of the playback process that sets a tween to play from the start.
     *
     * @method Phaser.Tweens.Tween#setStateFromStart
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to update.
     * @param {Phaser.Tweens.TweenDataConfig} tweenData - The TweenData property to update.
     * @param {number} diff - Any extra time that needs to be accounted for in the elapsed and progress values.
     *
     * @return {integer} The state of this Tween.
     */
    public function setStateFromStart(tween:phaser.tweens.Tween, tweenData:phaser.tweens.TweenDataConfig, diff:Float):Int;
    /**
     * Internal method that advances the TweenData based on the time value given.
     *
     * @method Phaser.Tweens.Tween#updateTweenData
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to update.
     * @param {Phaser.Tweens.TweenDataConfig} tweenData - The TweenData property to update.
     * @param {number} delta - Either a value in ms, or 1 if Tween.useFrames is true
     *
     * @return {boolean} [description]
     */
    public function updateTweenData(tween:phaser.tweens.Tween, tweenData:phaser.tweens.TweenDataConfig, delta:Float):Bool;
}
