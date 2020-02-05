package phaser.tweens;

/**
 * @classdesc
 * A Tween is able to manipulate the properties of one or more objects to any given value, based
 * on a duration and type of ease. They are rarely instantiated directly and instead should be
 * created via the TweenManager.
 *
 * @class Tween
 * @memberof Phaser.Tweens
 * @extends Phaser.Events.EventEmitter
 * @constructor
 * @since 3.0.0
 *
 * @param {(Phaser.Tweens.TweenManager|Phaser.Tweens.Timeline)} parent - A reference to the parent of this Tween. Either the Tween Manager or a Tween Timeline instance.
 * @param {Phaser.Types.Tweens.TweenDataConfig[]} data - An array of TweenData objects, each containing a unique property to be tweened.
 * @param {array} targets - An array of targets to be tweened.
 */
@:native("Phaser.Tweens.Tween")
extern class Tween extends phaser.events.EventEmitter {
    public function new(parent:Dynamic, data:Array<phaser.types.tweens.TweenDataConfig>, targets:Array<Dynamic>);
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
     * @type {Phaser.Types.Tweens.TweenDataConfig[]}
     * @since 3.0.0
     */
    public var data:Array<phaser.types.tweens.TweenDataConfig>;
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
     * Time in ms/frames before the 'onStart' event fires.
     * This is the shortest `delay` value across all of the TweenDatas of this Tween.
     *
     * @name Phaser.Tweens.Tween#startDelay
     * @type {number}
     * @default 0
     * @since 3.19.0
     */
    public var startDelay:Float;
    /**
     * Has this Tween started playback yet?
     * This boolean is toggled when the Tween leaves the 'delayed' state and starts running.
     *
     * @name Phaser.Tweens.Tween#hasStarted
     * @type {boolean}
     * @readonly
     * @since 3.19.0
     */
    public var hasStarted:Bool;
    /**
     * Is this Tween currently seeking?
     * This boolean is toggled in the `Tween.seek` method.
     * When a tween is seeking it will not dispatch any events or callbacks.
     *
     * @name Phaser.Tweens.Tween#isSeeking
     * @type {boolean}
     * @readonly
     * @since 3.19.0
     */
    public var isSeeking:Bool;
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
     * An object containing the different Tween callback functions.
     *
     * You can either set these in the Tween config, or by calling the `Tween.setCallback` method.
     *
     * `onActive` When the Tween is moved from the pending to the active list in the Tween Manager, even if playback paused.
     * `onStart` When the Tween starts playing after a delayed state. Will happen at the same time as `onActive` if it has no delay.
     * `onYoyo` When a TweenData starts a yoyo. This happens _after_ the `hold` delay expires, if set.
     * `onRepeat` When a TweenData repeats playback. This happens _after_ the `repeatDelay` expires, if set.
     * `onComplete` When the Tween finishes playback fully or `Tween.stop` is called. Never invoked if tween is set to repeat infinitely.
     * `onUpdate` When a TweenData updates a property on a source target during playback.
     * `onLoop` When a Tween loops. This happens _after_ the `loopDelay` expires, if set.
     *
     * @name Phaser.Tweens.Tween#callbacks
     * @type {object}
     * @since 3.0.0
     */
    public var callbacks:Dynamic;
    /**
     * The context in which all callbacks are invoked.
     *
     * @name Phaser.Tweens.Tween#callbackScope
     * @type {any}
     * @since 3.0.0
     */
    public var callbackScope:Dynamic;
    /**	
     * Returns the current value of the specified Tween Data.
     *
     * @method Phaser.Tweens.Tween#getValue
     * @since 3.0.0
     *
     * @param {integer} [index=0] - The Tween Data to return the value from.
     *
     * @return {number} The value of the requested Tween Data.
     */
    public function getValue(?index:Int):Float;
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
     * Updates the 'end' value of the given property across all matching targets.
     *
     * Calling this does not adjust the duration of the tween, or the current progress.
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
     * Internal method that makes this Tween active within the TweenManager
     * and emits the onActive event and callback.
     *
     * @method Phaser.Tweens.Tween#makeActive
     * @fires Phaser.Tweens.Events#TWEEN_ACTIVE
     * @since 3.19.0
     */
    public function makeActive():Void;
    /**
     * Internal method that advances to the next state of the Tween during playback.
     *
     * @method Phaser.Tweens.Tween#nextState
     * @fires Phaser.Tweens.Events#TWEEN_COMPLETE
     * @fires Phaser.Tweens.Events#TWEEN_LOOP
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
     * If the Tween is already playing, calling this method again will have no effect. If you wish to
     * restart the Tween, use `Tween.restart` instead.
     *
     * Calling this method after the Tween has completed will start the Tween playing again from the start.
     * This is the same as calling `Tween.seek(0)` and then `Tween.play()`.
     *
     * @method Phaser.Tweens.Tween#play
     * @since 3.0.0
     *
     * @param {boolean} [resetFromTimeline=false] - Is this Tween being played as part of a Timeline?
     *
     * @return {this} This Tween instance.
     */
    public function play(?resetFromTimeline:Bool):Dynamic;
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
     * Seeks to a specific point in the Tween.
     *
     * **Note:** You cannot seek a Tween that repeats or loops forever, or that has an unusually long total duration.
     *
     * The given position is a value between 0 and 1 which represents how far through the Tween to seek to.
     * A value of 0.5 would seek to half-way through the Tween, where-as a value of zero would seek to the start.
     *
     * Note that the seek takes the entire duration of the Tween into account, including delays, loops and repeats.
     * For example, a Tween that lasts for 2 seconds, but that loops 3 times, would have a total duration of 6 seconds,
     * so seeking to 0.5 would seek to 3 seconds into the Tween, as that's half-way through its _entire_ duration.
     *
     * Seeking works by resetting the Tween to its initial values and then iterating through the Tween at `delta`
     * jumps per step. The longer the Tween, the longer this can take.
     *
     * @method Phaser.Tweens.Tween#seek
     * @since 3.0.0
     *
     * @param {number} toPosition - A value between 0 and 1 which represents the progress point to seek to.
     * @param {number} [delta=16.6] - The size of each step when seeking through the Tween. A higher value completes faster but at a cost of less precision.
     *
     * @return {this} This Tween instance.
     */
    public function seek(toPosition:Float, ?delta:Float):Dynamic;
    /**
     * Sets an event based callback to be invoked during playback.
     *
     * Calling this method will replace a previously set callback for the given type, if any exists.
     *
     * The types available are:
     *
     * `onActive` When the Tween is moved from the pending to the active list in the Tween Manager, even if playback paused.
     * `onStart` When the Tween starts playing after a delayed state. Will happen at the same time as `onActive` if it has no delay.
     * `onYoyo` When a TweenData starts a yoyo. This happens _after_ the `hold` delay expires, if set.
     * `onRepeat` When a TweenData repeats playback. This happens _after_ the `repeatDelay` expires, if set.
     * `onComplete` When the Tween finishes playback fully or `Tween.stop` is called. Never invoked if tween is set to repeat infinitely.
     * `onUpdate` When a TweenData updates a property on a source target during playback.
     * `onLoop` When a Tween loops. This happens _after_ the `loopDelay` expires, if set.
     *
     * @method Phaser.Tweens.Tween#setCallback
     * @since 3.0.0
     *
     * @param {string} type - Type of the callback to set.
     * @param {function} callback - The function to invoke when this callback happens.
     * @param {array} [params] - An array of parameters for specified callbacks types.
     * @param {any} [scope] - The context the callback will be invoked in.
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
     * @fires Phaser.Tweens.Events#TWEEN_COMPLETE
     * @since 3.2.0
     *
     * @param {number} [delay=0] - The time to wait before invoking the complete callback. If zero it will fire immediately.
     *
     * @return {this} This Tween instance.
     */
    public function complete(?delay:Float):Dynamic;
    /**
     * Immediately removes this Tween from the TweenManager and all of its internal arrays,
     * no matter what stage it as it. Then sets the tween state to `REMOVED`.
     *
     * You should dispose of your reference to this tween after calling this method, to
     * free it from memory.
     *
     * @method Phaser.Tweens.Tween#remove
     * @since 3.17.0
     *
     * @return {this} This Tween instance.
     */
    public function remove():Dynamic;
    /**
     * Stops the Tween immediately, whatever stage of progress it is at and flags it for removal by the TweenManager.
     *
     * @method Phaser.Tweens.Tween#stop
     * @since 3.0.0
     *
     * @param {number} [resetTo] - If you want to seek the tween, provide a value between 0 and 1.
     *
     * @return {this} This Tween instance.
     */
    public function stop(?resetTo:Float):Dynamic;
    /**
     * Internal method that advances the Tween based on the time values.
     *
     * @method Phaser.Tweens.Tween#update
     * @fires Phaser.Tweens.Events#TWEEN_COMPLETE
     * @fires Phaser.Tweens.Events#TWEEN_LOOP
     * @fires Phaser.Tweens.Events#TWEEN_START
     * @since 3.0.0
     *
     * @param {number} timestamp - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     *
     * @return {boolean} Returns `true` if this Tween has finished and should be removed from the Tween Manager, otherwise returns `false`.
     */
    public function update(timestamp:Float, delta:Float):Bool;
    /**
     * Internal method that will emit a TweenData based Event and invoke the given callback.
     *
     * @method Phaser.Tweens.Tween#dispatchTweenDataEvent
     * @since 3.19.0
     *
     * @param {Phaser.Types.Tweens.Event} event - The Event to be dispatched.
     * @param {function} callback - The callback to be invoked. Can be `null` or `undefined` to skip invocation.
     * @param {Phaser.Types.Tweens.TweenDataConfig} tweenData - The TweenData object that caused this event.
     */
    public function dispatchTweenDataEvent(event:phaser.types.tweens.Event, callback:Dynamic, tweenData:phaser.types.tweens.TweenDataConfig):Void;
    /**
     * Internal method that will emit a Tween based Event and invoke the given callback.
     *
     * @method Phaser.Tweens.Tween#dispatchTweenEvent
     * @since 3.19.0
     *
     * @param {Phaser.Types.Tweens.Event} event - The Event to be dispatched.
     * @param {function} callback - The callback to be invoked. Can be `null` or `undefined` to skip invocation.
     */
    public function dispatchTweenEvent(event:phaser.types.tweens.Event, callback:Dynamic):Void;
    /**
     * Internal method used as part of the playback process that sets a tween to play in reverse.
     *
     * @method Phaser.Tweens.Tween#setStateFromEnd
     * @fires Phaser.Tweens.Events#TWEEN_REPEAT
     * @fires Phaser.Tweens.Events#TWEEN_YOYO
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to update.
     * @param {Phaser.Types.Tweens.TweenDataConfig} tweenData - The TweenData property to update.
     * @param {number} diff - Any extra time that needs to be accounted for in the elapsed and progress values.
     *
     * @return {integer} The state of this Tween.
     */
    public function setStateFromEnd(tween:phaser.tweens.Tween, tweenData:phaser.types.tweens.TweenDataConfig, diff:Float):Int;
    /**
     * Internal method used as part of the playback process that sets a tween to play from the start.
     *
     * @method Phaser.Tweens.Tween#setStateFromStart
     * @fires Phaser.Tweens.Events#TWEEN_REPEAT
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to update.
     * @param {Phaser.Types.Tweens.TweenDataConfig} tweenData - The TweenData property to update.
     * @param {number} diff - Any extra time that needs to be accounted for in the elapsed and progress values.
     *
     * @return {integer} The state of this Tween.
     */
    public function setStateFromStart(tween:phaser.tweens.Tween, tweenData:phaser.types.tweens.TweenDataConfig, diff:Float):Int;
    /**
     * Internal method that advances the TweenData based on the time value given.
     *
     * @method Phaser.Tweens.Tween#updateTweenData
     * @fires Phaser.Tweens.Events#TWEEN_UPDATE
     * @fires Phaser.Tweens.Events#TWEEN_REPEAT
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to update.
     * @param {Phaser.Types.Tweens.TweenDataConfig} tweenData - The TweenData property to update.
     * @param {number} delta - Either a value in ms, or 1 if Tween.useFrames is true.
     *
     * @return {boolean} True if the tween is not complete (e.g., playing), or false if the tween is complete.
     */
    public function updateTweenData(tween:phaser.tweens.Tween, tweenData:phaser.types.tweens.TweenDataConfig, delta:Float):Bool;
}
