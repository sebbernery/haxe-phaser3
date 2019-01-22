package phaser.time;

/**
 * @classdesc
 * [description]
 *
 * @class TimerEvent
 * @memberof Phaser.Time
 * @constructor
 * @since 3.0.0
 *
 * @param {TimerEventConfig} config - [description]
 */
@:native("Phaser.Time.TimerEvent")
extern class TimerEvent {
    public function new(config:TimerEventConfig);
    /**
     * The delay in ms at which this TimerEvent fires.
     *
     * @name Phaser.Time.TimerEvent#delay
     * @type {number}
     * @default 0
     * @readonly
     * @since 3.0.0
     */
    public var delay:Float;
    /**
     * The total number of times this TimerEvent will repeat before finishing.
     *
     * @name Phaser.Time.TimerEvent#repeat
     * @type {number}
     * @default 0
     * @readonly
     * @since 3.0.0
     */
    public var repeat:Float;
    /**
     * If repeating this contains the current repeat count.
     *
     * @name Phaser.Time.TimerEvent#repeatCount
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var repeatCount:Float;
    /**
     * True if this TimerEvent loops, otherwise false.
     *
     * @name Phaser.Time.TimerEvent#loop
     * @type {boolean}
     * @default false
     * @readonly
     * @since 3.0.0
     */
    public var loop:Bool;
    /**
     * The callback that will be called when the TimerEvent occurs.
     *
     * @name Phaser.Time.TimerEvent#callback
     * @type {function}
     * @since 3.0.0
     */
    public var callback:Dynamic;
    /**
     * The scope in which the callback will be called.
     *
     * @name Phaser.Time.TimerEvent#callbackScope
     * @type {object}
     * @since 3.0.0
     */
    public var callbackScope:Dynamic;
    /**
     * Additional arguments to be passed to the callback.
     *
     * @name Phaser.Time.TimerEvent#args
     * @type {array}
     * @since 3.0.0
     */
    public var args:Array<Dynamic>;
    /**
     * Scale the time causing this TimerEvent to update.
     *
     * @name Phaser.Time.TimerEvent#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * Start this many MS into the elapsed (useful if you want a long duration with repeat, but for the first loop to fire quickly)
     *
     * @name Phaser.Time.TimerEvent#startAt
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var startAt:Float;
    /**
     * [description]
     *
     * @name Phaser.Time.TimerEvent#elapsed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var elapsed:Float;
    /**
     * [description]
     *
     * @name Phaser.Time.TimerEvent#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * [description]
     *
     * @name Phaser.Time.TimerEvent#hasDispatched
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var hasDispatched:Bool;
    /**
     * [description]
     *
     * @method Phaser.Time.TimerEvent#reset
     * @since 3.0.0
     *
     * @param {TimerEventConfig} config - [description]
     *
     * @return {Phaser.Time.TimerEvent} This TimerEvent object.
     */
    public function reset(config:TimerEventConfig):phaser.time.TimerEvent;
    /**
     * Gets the progress of the current iteration, not factoring in repeats.
     *
     * @method Phaser.Time.TimerEvent#getProgress
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getProgress():Float;
    /**
     * Gets the progress of the timer overall, factoring in repeats.
     *
     * @method Phaser.Time.TimerEvent#getOverallProgress
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getOverallProgress():Float;
    /**
     * [description]
     *
     * @method Phaser.Time.TimerEvent#getRepeatCount
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getRepeatCount():Float;
    /**
     * [description]
     *
     * @method Phaser.Time.TimerEvent#getElapsed
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getElapsed():Float;
    /**
     * [description]
     *
     * @method Phaser.Time.TimerEvent#getElapsedSeconds
     * @since 3.0.0
     *
     * @return {number} [description]
     */
    public function getElapsedSeconds():Float;
    /**
     * [description]
     *
     * @method Phaser.Time.TimerEvent#remove
     * @since 3.0.0
     *
     * @param {function} dispatchCallback - [description]
     */
    public function remove(dispatchCallback:Dynamic):Void;
    /**
     * [description]
     *
     * @method Phaser.Time.TimerEvent#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
