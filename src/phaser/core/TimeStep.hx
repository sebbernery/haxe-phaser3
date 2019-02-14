package phaser.core;

/**
 * @classdesc
 * [description]
 *
 * @class TimeStep
 * @memberof Phaser.Core
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - A reference to the Phaser.Game instance that owns this Time Step.
 * @param {FPSConfig} config
 */
@:native("Phaser.Core.TimeStep")
extern class TimeStep {
    public function new(game:phaser.Game, config:FPSConfig);
    /**
     * A reference to the Phaser.Game instance.
     *
     * @name Phaser.Core.TimeStep#game
     * @type {Phaser.Game}
     * @readonly
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#raf
     * @type {Phaser.DOM.RequestAnimationFrame}
     * @readonly
     * @since 3.0.0
     */
    public var raf:phaser.dom.RequestAnimationFrame;
    /**
     * A flag that is set once the TimeStep has started running and toggled when it stops.
     *
     * @name Phaser.Core.TimeStep#started
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.0.0
     */
    public var started:Bool;
    /**
     * A flag that is set once the TimeStep has started running and toggled when it stops.
     * The difference between this value and `started` is that `running` is toggled when
     * the TimeStep is sent to sleep, where-as `started` remains `true`, only changing if
     * the TimeStep is actually stopped, not just paused.
     *
     * @name Phaser.Core.TimeStep#running
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.0.0
     */
    public var running:Bool;
    /**
     * The minimum fps rate you want the Time Step to run at.
     *
     * @name Phaser.Core.TimeStep#minFps
     * @type {integer}
     * @default 5
     * @since 3.0.0
     */
    public var minFps:Int;
    /**
     * The target fps rate for the Time Step to run at.
     *
     * Setting this value will not actually change the speed at which the browser runs, that is beyond
     * the control of Phaser. Instead, it allows you to determine performance issues and if the Time Step
     * is spiraling out of control.
     *
     * @name Phaser.Core.TimeStep#targetFps
     * @type {integer}
     * @default 60
     * @since 3.0.0
     */
    public var targetFps:Int;
    /**
     * An exponential moving average of the frames per second.
     *
     * @name Phaser.Core.TimeStep#actualFps
     * @type {integer}
     * @readonly
     * @default 60
     * @since 3.0.0
     */
    public var actualFps:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#nextFpsUpdate
     * @type {integer}
     * @readonly
     * @default 0
     * @since 3.0.0
     */
    public var nextFpsUpdate:Int;
    /**
     * The number of frames processed this second.
     *
     * @name Phaser.Core.TimeStep#framesThisSecond
     * @type {integer}
     * @readonly
     * @default 0
     * @since 3.0.0
     */
    public var framesThisSecond:Int;
    /**
     * A callback to be invoked each time the Time Step steps.
     *
     * @name Phaser.Core.TimeStep#callback
     * @type {TimeStepCallback}
     * @default NOOP
     * @since 3.0.0
     */
    public var callback:TimeStepCallback;
    /**
     * You can force the Time Step to use Set Timeout instead of Request Animation Frame by setting
     * the `forceSetTimeOut` property to `true` in the Game Configuration object. It cannot be changed at run-time.
     *
     * @name Phaser.Core.TimeStep#forceSetTimeOut
     * @type {boolean}
     * @readonly
     * @default false
     * @since 3.0.0
     */
    public var forceSetTimeOut:Bool;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#time
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var time:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#startTime
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var startTime:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#lastTime
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var lastTime:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#frame
     * @type {integer}
     * @readonly
     * @default 0
     * @since 3.0.0
     */
    public var frame:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#inFocus
     * @type {boolean}
     * @readonly
     * @default true
     * @since 3.0.0
     */
    public var inFocus:Bool;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#delta
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var delta:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#deltaIndex
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var deltaIndex:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#deltaHistory
     * @type {integer[]}
     * @since 3.0.0
     */
    public var deltaHistory:Array<Int>;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#deltaSmoothingMax
     * @type {integer}
     * @default 10
     * @since 3.0.0
     */
    public var deltaSmoothingMax:Int;
    /**
     * [description]
     *
     * @name Phaser.Core.TimeStep#panicMax
     * @type {integer}
     * @default 120
     * @since 3.0.0
     */
    public var panicMax:Int;
    /**
     * The actual elapsed time in ms between one update and the next.
     * Unlike with `delta` no smoothing, capping, or averaging is applied to this value.
     * So please be careful when using this value in calculations.
     *
     * @name Phaser.Core.TimeStep#rawDelta
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var rawDelta:Float;
    /**
     * Called when the DOM window.onBlur event triggers.
     *
     * @method Phaser.Core.TimeStep#blur
     * @since 3.0.0
     */
    public function blur():Void;
    /**
     * Called when the DOM window.onFocus event triggers.
     *
     * @method Phaser.Core.TimeStep#focus
     * @since 3.0.0
     */
    public function focus():Void;
    /**
     * Called when the visibility API says the game is 'hidden' (tab switch out of view, etc)
     *
     * @method Phaser.Core.TimeStep#pause
     * @since 3.0.0
     */
    public function pause():Void;
    /**
     * Called when the visibility API says the game is 'visible' again (tab switch back into view, etc)
     *
     * @method Phaser.Core.TimeStep#resume
     * @since 3.0.0
     */
    public function resume():Void;
    /**
     * [description]
     *
     * @method Phaser.Core.TimeStep#resetDelta
     * @since 3.0.0
     */
    public function resetDelta():Void;
    /**
     * Starts the Time Step running, if it is not already doing so.
     * Called automatically by the Game Boot process.
     *
     * @method Phaser.Core.TimeStep#start
     * @since 3.0.0
     *
     * @param {TimeStepCallback} callback - The callback to be invoked each time the Time Step steps.
     */
    public function start(callback:TimeStepCallback):Void;
    /**
     * The main step method. This is called each time the browser updates, either by Request Animation Frame,
     * or by Set Timeout. It is responsible for calculating the delta values, frame totals, cool down history and more.
     * You generally should never call this method directly.
     *
     * @method Phaser.Core.TimeStep#step
     * @since 3.0.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     */
    public function step(time:Float):Void;
    /**
     * Manually calls TimeStep.step, passing in the performance.now value to it.
     *
     * @method Phaser.Core.TimeStep#tick
     * @since 3.0.0
     */
    public function tick():Void;
    /**
     * Sends the TimeStep to sleep, stopping Request Animation Frame (or SetTimeout) and toggling the `running` flag to false.
     *
     * @method Phaser.Core.TimeStep#sleep
     * @since 3.0.0
     */
    public function sleep():Void;
    /**
     * Wakes-up the TimeStep, restarting Request Animation Frame (or SetTimeout) and toggling the `running` flag to true.
     * The `seamless` argument controls if the wake-up should adjust the start time or not.
     *
     * @method Phaser.Core.TimeStep#wake
     * @since 3.0.0
     *
     * @param {boolean} [seamless=false] - Adjust the startTime based on the lastTime values.
     */
    public function wake(?seamless:Bool):Void;
    /**
     * Stops the TimeStep running.
     *
     * @method Phaser.Core.TimeStep#stop
     * @since 3.0.0
     *
     * @return {Phaser.Core.TimeStep} The TimeStep object.
     */
    public function stop():phaser.core.TimeStep;
    /**
     * Destroys the TimeStep. This will stop Request Animation Frame, stop the step, clear the callbacks and null
     * any objects.
     *
     * @method Phaser.Core.TimeStep#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
