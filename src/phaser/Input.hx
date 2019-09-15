package phaser;

/**
 * @namespace Phaser.Input
 */
@:native("Phaser.Input")
class Input {
    /**
     * The mouse pointer is being held down.
     *
     * @name Phaser.Input.MOUSE_DOWN
     * @type {integer}
     * @since 3.10.0
     */
    static public var MOUSE_DOWN:Int;
    /**
     * The mouse pointer is being moved.
     *
     * @name Phaser.Input.MOUSE_MOVE
     * @type {integer}
     * @since 3.10.0
     */
    static public var MOUSE_MOVE:Int;
    /**
     * The mouse pointer is released.
     *
     * @name Phaser.Input.MOUSE_UP
     * @type {integer}
     * @since 3.10.0
     */
    static public var MOUSE_UP:Int;
    /**
     * A touch pointer has been started.
     *
     * @name Phaser.Input.TOUCH_START
     * @type {integer}
     * @since 3.10.0
     */
    static public var TOUCH_START:Int;
    /**
     * A touch pointer has been started.
     *
     * @name Phaser.Input.TOUCH_MOVE
     * @type {integer}
     * @since 3.10.0
     */
    static public var TOUCH_MOVE:Int;
    /**
     * A touch pointer has been started.
     *
     * @name Phaser.Input.TOUCH_END
     * @type {integer}
     * @since 3.10.0
     */
    static public var TOUCH_END:Int;
    /**
     * The pointer lock has changed.
     *
     * @name Phaser.Input.POINTER_LOCK_CHANGE
     * @type {integer}
     * @since 3.10.0
     */
    static public var POINTER_LOCK_CHANGE:Int;
    /**
     * A touch pointer has been been cancelled by the browser.
     *
     * @name Phaser.Input.TOUCH_CANCEL
     * @type {integer}
     * @since 3.15.0
     */
    static public var TOUCH_CANCEL:Int;
    /**
     * The mouse wheel changes.
     *
     * @name Phaser.Input.MOUSE_WHEEL
     * @type {integer}
     * @since 3.18.0
     */
    static public var MOUSE_WHEEL:Int;
}
