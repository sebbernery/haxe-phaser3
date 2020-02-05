package phaser.dom;

/**
 * @classdesc
 * Abstracts away the use of RAF or setTimeOut for the core game update loop.
 * This is invoked automatically by the Phaser.Game instance.
 *
 * @class RequestAnimationFrame
 * @memberof Phaser.DOM
 * @constructor
 * @since 3.0.0
 */
@:native("Phaser.DOM.RequestAnimationFrame")
extern class RequestAnimationFrame {
    public function new();
    /**
     * True if RequestAnimationFrame is running, otherwise false.
     *
     * @name Phaser.DOM.RequestAnimationFrame#isRunning
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var isRunning:Bool;
    /**
     * The callback to be invoked each step.
     *
     * @name Phaser.DOM.RequestAnimationFrame#callback
     * @type {FrameRequestCallback}
     * @since 3.0.0
     */
    public var callback:Dynamic;
    /**
     * The most recent timestamp. Either a DOMHighResTimeStamp under RAF or `Date.now` under SetTimeout.
     *
     * @name Phaser.DOM.RequestAnimationFrame#tick
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var tick:Float;
    /**
     * True if the step is using setTimeout instead of RAF.
     *
     * @name Phaser.DOM.RequestAnimationFrame#isSetTimeOut
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var isSetTimeOut:Bool;
    /**
     * The setTimeout or RAF callback ID used when canceling them.
     *
     * @name Phaser.DOM.RequestAnimationFrame#timeOutID
     * @type {?number}
     * @default null
     * @since 3.0.0
     */
    public var timeOutID:Float;
    /**
     * The previous time the step was called.
     *
     * @name Phaser.DOM.RequestAnimationFrame#lastTime
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var lastTime:Float;
    /**
     * The target FPS rate in ms.
     * Only used when setTimeout is used instead of RAF.
     *
     * @name Phaser.DOM.RequestAnimationFrame#target
     * @type {number}
     * @default 0
     * @since 3.21.0
     */
    public var target:Float;
    /**
     * The RAF step function.
     * Updates the local tick value, invokes the callback and schedules another call to requestAnimationFrame.
     *
     * @name Phaser.DOM.RequestAnimationFrame#step
     * @type {FrameRequestCallback}
     * @since 3.0.0
     */
    public var step:Dynamic;
    /**
     * The SetTimeout step function.
     * Updates the local tick value, invokes the callback and schedules another call to setTimeout.
     *
     * @name Phaser.DOM.RequestAnimationFrame#stepTimeout
     * @type {function}
     * @since 3.0.0
     */
    public var stepTimeout:Dynamic;
    /**
     * Starts the requestAnimationFrame or setTimeout process running.
     *
     * @method Phaser.DOM.RequestAnimationFrame#start
     * @since 3.0.0
     *
     * @param {FrameRequestCallback} callback - The callback to invoke each step.
     * @param {boolean} forceSetTimeOut - Should it use SetTimeout, even if RAF is available?
     * @param {number} targetFPS - The target fps rate (in ms). Only used when setTimeout is used.
     */
    public function start(callback:Dynamic, forceSetTimeOut:Bool, targetFPS:Float):Void;
    /**
     * Stops the requestAnimationFrame or setTimeout from running.
     *
     * @method Phaser.DOM.RequestAnimationFrame#stop
     * @since 3.0.0
     */
    public function stop():Void;
    /**
     * Stops the step from running and clears the callback reference.
     *
     * @method Phaser.DOM.RequestAnimationFrame#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
