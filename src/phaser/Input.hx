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
     * @type {number}
     * @since 3.10.0
     */
    static public var MOUSE_DOWN:Float;
    /**
     * The mouse pointer is being moved.
     *
     * @name Phaser.Input.MOUSE_MOVE
     * @type {number}
     * @since 3.10.0
     */
    static public var MOUSE_MOVE:Float;
    /**
     * The mouse pointer is released.
     *
     * @name Phaser.Input.MOUSE_UP
     * @type {number}
     * @since 3.10.0
     */
    static public var MOUSE_UP:Float;
    /**
     * A touch pointer has been started.
     *
     * @name Phaser.Input.TOUCH_START
     * @type {number}
     * @since 3.10.0
     */
    static public var TOUCH_START:Float;
    /**
     * A touch pointer has been started.
     *
     * @name Phaser.Input.TOUCH_MOVE
     * @type {number}
     * @since 3.10.0
     */
    static public var TOUCH_MOVE:Float;
    /**
     * A touch pointer has been started.
     *
     * @name Phaser.Input.TOUCH_END
     * @type {number}
     * @since 3.10.0
     */
    static public var TOUCH_END:Float;
    /**
     * The pointer lock has changed.
     *
     * @name Phaser.Input.POINTER_LOCK_CHANGE
     * @type {number}
     * @since 3.10.0
     */
    static public var POINTER_LOCK_CHANGE:Float;
    /**
     * A touch pointer has been been cancelled by the browser.
     *
     * @name Phaser.Input.TOUCH_CANCEL
     * @type {number}
     * @since 3.15.0
     */
    static public var TOUCH_CANCEL:Float;
    /**
     * The mouse wheel changes.
     *
     * @name Phaser.Input.MOUSE_WHEEL
     * @type {number}
     * @since 3.18.0
     */
    static public var MOUSE_WHEEL:Float;
}
