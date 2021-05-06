package phaser.tweens;

/**
 * @classdesc
 * A Timeline combines multiple Tweens into one. Its overall behavior is otherwise similar to a single Tween.
 *
 * The Timeline updates all of its Tweens simultaneously. Its methods allow you to easily build a sequence
 * of Tweens (each one starting after the previous one) or run multiple Tweens at once during given parts of the Timeline.
 *
 * @class Timeline
 * @memberof Phaser.Tweens
 * @extends Phaser.Events.EventEmitter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Tweens.TweenManager} manager - The Tween Manager which owns this Timeline.
 */
@:native("Phaser.Tweens.Timeline")
extern class Timeline extends phaser.events.EventEmitter {
    public function new(manager:phaser.tweens.TweenManager);
    /**
     * The Tween Manager which owns this Timeline.
     *
     * @name Phaser.Tweens.Timeline#manager
     * @type {Phaser.Tweens.TweenManager}
     * @since 3.0.0
     */
    public var manager:phaser.tweens.TweenManager;
    /**
     * A constant value which allows this Timeline to be easily identified as one.
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
     * The cached size of the data array.
     *
     * @name Phaser.Tweens.Timeline#totalData
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalData:Float;
    /**
     * If true then duration, delay, etc values are all frame totals, rather than ms.
     *
     * @name Phaser.Tweens.Timeline#useFrames
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var useFrames:Bool;
    /**
     * Scales the time applied to this Timeline. A value of 1 runs in real-time. A value of 0.5 runs 50% slower, and so on.
     * Value isn't used when calculating total duration of the Timeline, it's a run-time delta adjustment only.
     *
     * @name Phaser.Tweens.Timeline#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * Loop this Timeline? Can be -1 for an infinite loop, or an integer.
     * When enabled it will play through ALL Tweens again (use Tween.repeat to loop a single tween)
     *
     * @name Phaser.Tweens.Timeline#loop
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var loop:Float;
    /**
     * Time in ms/frames before this Timeline loops.
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
     * Countdown timer value, as used by `loopDelay` and `completeDelay`.
     *
     * @name Phaser.Tweens.Timeline#countdown
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var countdown:Float;
    /**
     * The current state of the Timeline.
     *
     * @name Phaser.Tweens.Timeline#state
     * @type {number}
     * @since 3.0.0
     */
    public var state:Float;
    /**
     * Does the Timeline start off paused? (if so it needs to be started with Timeline.play)
     *
     * @name Phaser.Tweens.Timeline#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * Elapsed time in ms/frames of this run through of the Timeline.
     *
     * @name Phaser.Tweens.Timeline#elapsed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var elapsed:Float;
    /**
     * Total elapsed time in ms/frames of the entire Timeline, including looping.
     *
     * @name Phaser.Tweens.Timeline#totalElapsed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalElapsed:Float;
    /**
     * Time in ms/frames for the whole Timeline to play through once, excluding loop amounts and loop delays.
     *
     * @name Phaser.Tweens.Timeline#duration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * Value between 0 and 1. The amount of progress through the Timeline, _excluding loops_.
     *
     * @name Phaser.Tweens.Timeline#progress
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var progress:Float;
    /**
     * Time in ms/frames for all Tweens in this Timeline to complete (including looping)
     *
     * @name Phaser.Tweens.Timeline#totalDuration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var totalDuration:Float;
    /**
     * Value between 0 and 1. The amount through the entire Timeline, including looping.
     *
     * @name Phaser.Tweens.Timeline#totalProgress
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
     * `onComplete` When the Timeline finishes playback fully or `Timeline.stop` is called. Never invoked if timeline is set to repeat infinitely.
     * `onLoop` When a Timeline loops.
     * `onStart` When the Timeline starts playing.
     * `onUpdate` When a Timeline updates a child Tween.
     * `onYoyo` When a Timeline starts a yoyo.
     *
     * @name Phaser.Tweens.Timeline#callbacks
     * @type {object}
     * @since 3.0.0
     */
    public var callbacks:Dynamic;
    /**
     * The context in which all callbacks are invoked.
     *
     * @name Phaser.Tweens.Timeline#callbackScope
     * @type {any}
     * @since 3.0.0
     */
    public var callbackScope:Dynamic;
    /**
     * Internal method that will emit a Timeline based Event and invoke the given callback.
     *
     * @method Phaser.Tweens.Timeline#dispatchTimelineEvent
     * @since 3.19.0
     *
     * @param {Phaser.Types.Tweens.Event} event - The Event to be dispatched.
     * @param {function} callback - The callback to be invoked. Can be `null` or `undefined` to skip invocation.
     */
    public function dispatchTimelineEvent(event:phaser.types.tweens.Event, callback:Dynamic):Void;
    /**
     * Sets the value of the time scale applied to this Timeline. A value of 1 runs in real-time.
     * A value of 0.5 runs 50% slower, and so on.
     *
     * The value isn't used when calculating total duration of the tween, it's a run-time delta adjustment only.
     *
     * @method Phaser.Tweens.Timeline#setTimeScale
     * @since 3.0.0
     *
     * @param {number} value - The time scale value to set.
     *
     * @return {this} This Timeline object.
     */
    public function setTimeScale(value:Float):Dynamic;
    /**
     * Gets the value of the time scale applied to this Timeline. A value of 1 runs in real-time.
     * A value of 0.5 runs 50% slower, and so on.
     *
     * @method Phaser.Tweens.Timeline#getTimeScale
     * @since 3.0.0
     *
     * @return {number} The value of the time scale applied to this Timeline.
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
     * Creates a new Tween, based on the given Tween Config, and adds it to this Timeline.
     *
     * @method Phaser.Tweens.Timeline#add
     * @since 3.0.0
     *
     * @param {(Phaser.Types.Tweens.TweenBuilderConfig|object)} config - The configuration object for the Tween.
     *
     * @return {this} This Timeline object.
     */
    public function add(config:Dynamic):Dynamic;
    /**
     * Adds an existing Tween to this Timeline.
     *
     * @method Phaser.Tweens.Timeline#queue
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to be added to this Timeline.
     *
     * @return {this} This Timeline object.
     */
    public function queue(tween:phaser.tweens.Tween):Dynamic;
    /**
     * Checks whether a Tween has an offset value.
     *
     * @method Phaser.Tweens.Timeline#hasOffset
     * @since 3.0.0
     *
     * @param {Phaser.Tweens.Tween} tween - The Tween to check.
     *
     * @return {boolean} `true` if the tween has a non-null offset.
     */
    public function hasOffset(tween:phaser.tweens.Tween):Bool;
    /**
     * Checks whether the offset value is a number or a directive that is relative to previous tweens.
     *
     * @method Phaser.Tweens.Timeline#isOffsetAbsolute
     * @since 3.0.0
     *
     * @param {number} value - The offset value to be evaluated.
     *
     * @return {boolean} `true` if the result is a number, `false` if it is a directive like " -= 1000".
     */
    public function isOffsetAbsolute(value:Float):Bool;
    /**
     * Checks if the offset is a relative value rather than an absolute one.
     * If the value is just a number, this returns false.
     *
     * @method Phaser.Tweens.Timeline#isOffsetRelative
     * @since 3.0.0
     *
     * @param {string} value - The offset value to be evaluated.
     *
     * @return {boolean} `true` if the value is relative, i.e " -= 1000". If `false`, the offset is absolute.
     */
    public function isOffsetRelative(value:String):Bool;
    /**
     * Parses the relative offset value, returning a positive or negative number.
     *
     * @method Phaser.Tweens.Timeline#getRelativeOffset
     * @since 3.0.0
     *
     * @param {string} value - The relative offset, in the format of '-=500', for example. The first character determines whether it will be a positive or negative number. Spacing matters here.
     * @param {number} base - The value to use as the offset.
     *
     * @return {number} The parsed offset value.
     */
    public function getRelativeOffset(value:String, base:Float):Float;
    /**
     * Calculates the total duration of the timeline.
     *
     * Computes all tween durations and returns the full duration of the timeline.
     *
     * The resulting number is stored in the timeline, not as a return value.
     *
     * @method Phaser.Tweens.Timeline#calcDuration
     * @since 3.0.0
     */
    public function calcDuration():Void;
    /**
     * Initializes the timeline, which means all Tweens get their init() called, and the total duration will be computed.
     * Returns a boolean indicating whether the timeline is auto-started or not.
     *
     * @method Phaser.Tweens.Timeline#init
     * @since 3.0.0
     *
     * @return {boolean} `true` if the Timeline is started. `false` if it is paused.
     */
    public function init():Bool;
    /**
     * Resets all of the timeline's tweens back to their initial states.
     * The boolean parameter indicates whether tweens that are looping should reset as well, or not.
     *
     * @method Phaser.Tweens.Timeline#resetTweens
     * @since 3.0.0
     *
     * @param {boolean} resetFromLoop - If `true`, resets all looping tweens to their initial values.
     */
    public function resetTweens(resetFromLoop:Bool):Void;
    /**
     * Sets a callback for the Timeline.
     *
     * @method Phaser.Tweens.Timeline#setCallback
     * @since 3.0.0
     *
     * @param {string} type - The internal type of callback to set.
     * @param {function} callback - Timeline allows multiple tweens to be linked together to create a streaming sequence.
     * @param {array} [params] - The parameters to pass to the callback.
     * @param {object} [scope] - The context scope of the callback.
     *
     * @return {this} This Timeline object.
     */
    public function setCallback(type:String, callback:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):Dynamic;
    /**
     * Passed a Tween to the Tween Manager and requests it be made active.
     *
     * @method Phaser.Tweens.Timeline#makeActive
     * @since 3.3.0
     *
     * @param {Phaser.Tweens.Tween} tween - The tween object to make active.
     *
     * @return {Phaser.Tweens.TweenManager} The Timeline's Tween Manager reference.
     */
    public function makeActive(tween:phaser.tweens.Tween):phaser.tweens.TweenManager;
    /**
     * Starts playing the Timeline.
     *
     * @method Phaser.Tweens.Timeline#play
     * @fires Phaser.Tweens.Events#TIMELINE_START
     * @since 3.0.0
     */
    public function play():Void;
    /**
     * Updates the Timeline's `state` and fires callbacks and events.
     *
     * @method Phaser.Tweens.Timeline#nextState
     * @fires Phaser.Tweens.Events#TIMELINE_COMPLETE
     * @fires Phaser.Tweens.Events#TIMELINE_LOOP
     * @since 3.0.0
     *
     * @see Phaser.Tweens.Timeline#update
     */
    public function nextState():Void;
    /**
     * Returns 'true' if this Timeline has finished and should be removed from the Tween Manager.
     * Otherwise, returns false.
     *
     * @method Phaser.Tweens.Timeline#update
     * @fires Phaser.Tweens.Events#TIMELINE_COMPLETE
     * @fires Phaser.Tweens.Events#TIMELINE_UPDATE
     * @since 3.0.0
     *
     * @param {number} timestamp - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     *
     * @return {boolean} Returns `true` if this Timeline has finished and should be removed from the Tween Manager.
     */
    public function update(timestamp:Float, delta:Float):Bool;
    /**
     * Stops the Timeline immediately, whatever stage of progress it is at and flags it for removal by the TweenManager.
     *
     * @method Phaser.Tweens.Timeline#stop
     * @since 3.0.0
     */
    public function stop():Void;
    /**
     * Pauses the Timeline, retaining its internal state.
     *
     * Calling this on a Timeline that is already paused has no effect and fires no event.
     *
     * @method Phaser.Tweens.Timeline#pause
     * @fires Phaser.Tweens.Events#TIMELINE_PAUSE
     * @since 3.0.0
     *
     * @return {this} This Timeline object.
     */
    public function pause():Dynamic;
    /**
     * Resumes a paused Timeline from where it was when it was paused.
     *
     * Calling this on a Timeline that isn't paused has no effect and fires no event.
     *
     * @method Phaser.Tweens.Timeline#resume
     * @fires Phaser.Tweens.Events#TIMELINE_RESUME
     * @since 3.0.0
     *
     * @return {this} This Timeline object.
     */
    public function resume():Dynamic;
    /**
     * Checks if any of the Tweens in this Timeline as operating on the target object.
     *
     * Returns `false` if no Tweens operate on the target object.
     *
     * @method Phaser.Tweens.Timeline#hasTarget
     * @since 3.0.0
     *
     * @param {object} target - The target to check all Tweens against.
     *
     * @return {boolean} `true` if there is at least a single Tween that operates on the target object, otherwise `false`.
     */
    public function hasTarget(target:Dynamic):Bool;
}
