package phaser.time;

/**
 * @classdesc
 * [description]
 *
 * @class Clock
 * @memberof Phaser.Time
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - [description]
 */
@:native("Phaser.Time.Clock")
extern class Clock {
    public function new(scene:phaser.Scene);
    /**
     * [description]
     *
     * @name Phaser.Time.Clock#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * [description]
     *
     * @name Phaser.Time.Clock#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * [description]
     *
     * @name Phaser.Time.Clock#now
     * @type {number}
     * @since 3.0.0
     */
    public var now:Float;
    /**
     * [description]
     *
     * @name Phaser.Time.Clock#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * [description]
     *
     * @name Phaser.Time.Clock#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * [description]
     *
     * @method Phaser.Time.Clock#addEvent
     * @since 3.0.0
     *
     * @param {TimerEventConfig} config - [description]
     *
     * @return {Phaser.Time.TimerEvent} [description]
     */
    public function addEvent(config:TimerEventConfig):phaser.time.TimerEvent;
    /**
     * [description]
     *
     * @method Phaser.Time.Clock#delayedCall
     * @since 3.0.0
     *
     * @param {number} delay - [description]
     * @param {function} callback - [description]
     * @param {Array.<*>} args - [description]
     * @param {*} callbackScope - [description]
     *
     * @return {Phaser.Time.TimerEvent} [description]
     */
    public function delayedCall(delay:Float, callback:Dynamic, args:Array<Dynamic>, callbackScope:Dynamic):phaser.time.TimerEvent;
    /**
     * [description]
     *
     * @method Phaser.Time.Clock#clearPendingEvents
     * @since 3.0.0
     *
     * @return {Phaser.Time.Clock} [description]
     */
    public function clearPendingEvents():phaser.time.Clock;
    /**
     * [description]
     *
     * @method Phaser.Time.Clock#removeAllEvents
     * @since 3.0.0
     *
     * @return {Phaser.Time.Clock} [description]
     */
    public function removeAllEvents():phaser.time.Clock;
    /**
     * [description]
     *
     * @method Phaser.Time.Clock#preUpdate
     * @since 3.0.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function preUpdate(time:Float, delta:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Time.Clock#update
     * @since 3.0.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(time:Float, delta:Float):Void;
}
