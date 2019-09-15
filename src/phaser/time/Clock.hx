package phaser.time;

/**
 * @classdesc
 * The Clock is a Scene plugin which creates and updates Timer Events for its Scene.
 *
 * @class Clock
 * @memberof Phaser.Time
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene which owns this Clock.
 */
@:native("Phaser.Time.Clock")
extern class Clock {
    public function new(scene:phaser.Scene);
    /**
     * The Scene which owns this Clock.
     *
     * @name Phaser.Time.Clock#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * The Scene Systems object of the Scene which owns this Clock.
     *
     * @name Phaser.Time.Clock#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * The current time of the Clock, in milliseconds.
     *
     * If accessed externally, this is equivalent to the `time` parameter normally passed to a Scene's `update` method.
     *
     * @name Phaser.Time.Clock#now
     * @type {number}
     * @since 3.0.0
     */
    public var now:Float;
    /**
     * The scale of the Clock's time delta.
     *
     * The time delta is the time elapsed between two consecutive frames and influences the speed of time for this Clock and anything which uses it, such as its Timer Events. Values higher than 1 increase the speed of time, while values smaller than 1 decrease it. A value of 0 freezes time and is effectively equivalent to pausing the Clock.
     *
     * @name Phaser.Time.Clock#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * Whether the Clock is paused (`true`) or active (`false`).
     *
     * When paused, the Clock will not update any of its Timer Events, thus freezing time.
     *
     * @name Phaser.Time.Clock#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * Creates a Timer Event and adds it to the Clock at the start of the frame.
     *
     * @method Phaser.Time.Clock#addEvent
     * @since 3.0.0
     *
     * @param {Phaser.Types.Time.TimerEventConfig} config - The configuration for the Timer Event.
     *
     * @return {Phaser.Time.TimerEvent} The Timer Event which was created.
     */
    public function addEvent(config:phaser.types.time.TimerEventConfig):phaser.time.TimerEvent;
    /**
     * Creates a Timer Event and adds it to the Clock at the start of the frame.
     *
     * This is a shortcut for {@link #addEvent} which can be shorter and is compatible with the syntax of the GreenSock Animation Platform (GSAP).
     *
     * @method Phaser.Time.Clock#delayedCall
     * @since 3.0.0
     *
     * @param {number} delay - The delay of the function call, in milliseconds.
     * @param {function} callback - The function to call after the delay expires.
     * @param {Array.<*>} args - The arguments to call the function with.
     * @param {*} callbackScope - The scope (`this` object) to call the function with.
     *
     * @return {Phaser.Time.TimerEvent} The Timer Event which was created.
     */
    public function delayedCall(delay:Float, callback:Dynamic, args:Array<Dynamic>, callbackScope:Dynamic):phaser.time.TimerEvent;
    /**
     * Clears and recreates the array of pending Timer Events.
     *
     * @method Phaser.Time.Clock#clearPendingEvents
     * @since 3.0.0
     *
     * @return {Phaser.Time.Clock} This Clock object.
     */
    public function clearPendingEvents():phaser.time.Clock;
    /**
     * Schedules all active Timer Events for removal at the start of the frame.
     *
     * @method Phaser.Time.Clock#removeAllEvents
     * @since 3.0.0
     *
     * @return {Phaser.Time.Clock} This Clock object.
     */
    public function removeAllEvents():phaser.time.Clock;
    /**
     * Updates the arrays of active and pending Timer Events. Called at the start of the frame.
     *
     * @method Phaser.Time.Clock#preUpdate
     * @since 3.0.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function preUpdate(time:Float, delta:Float):Void;
    /**
     * Updates the Clock's internal time and all of its Timer Events.
     *
     * @method Phaser.Time.Clock#update
     * @since 3.0.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(time:Float, delta:Float):Void;
}
