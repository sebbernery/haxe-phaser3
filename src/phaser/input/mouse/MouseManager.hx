package phaser.input.mouse;

/**
 * @classdesc
 * The Mouse Manager is a helper class that belongs to the Input Manager.
 *
 * Its role is to listen for native DOM Mouse Events and then pass them onto the Input Manager for further processing.
 *
 * You do not need to create this class directly, the Input Manager will create an instance of it automatically.
 *
 * @class MouseManager
 * @memberof Phaser.Input.Mouse
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.InputManager} inputManager - A reference to the Input Manager.
 */
@:native("Phaser.Input.Mouse.MouseManager")
extern class MouseManager {
    public function new(inputManager:phaser.input.InputManager);
    /**
     * A reference to the Input Manager.
     *
     * @name Phaser.Input.Mouse.MouseManager#manager
     * @type {Phaser.Input.InputManager}
     * @since 3.0.0
     */
    public var manager:phaser.input.InputManager;
    /**
     * If true the DOM mouse events will have event.preventDefault applied to them, if false they will propagate fully.
     *
     * @name Phaser.Input.Mouse.MouseManager#capture
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var capture:Bool;
    /**
     * A boolean that controls if the Mouse Manager is enabled or not.
     * Can be toggled on the fly.
     *
     * @name Phaser.Input.Mouse.MouseManager#enabled
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var enabled:Bool;
    /**
     * The Mouse target, as defined in the Game Config.
     * Typically the canvas to which the game is rendering, but can be any interactive DOM element.
     *
     * @name Phaser.Input.Mouse.MouseManager#target
     * @type {any}
     * @since 3.0.0
     */
    public var target:Dynamic;
    /**
     * If the mouse has been pointer locked successfully this will be set to true.
     *
     * @name Phaser.Input.Mouse.MouseManager#locked
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var locked:Bool;
    /**
     * The Mouse Move Event handler.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseMove
     * @type {function}
     * @since 3.10.0
     */
    public var onMouseMove:Dynamic;
    /**
     * The Mouse Down Event handler.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseDown
     * @type {function}
     * @since 3.10.0
     */
    public var onMouseDown:Dynamic;
    /**
     * The Mouse Up Event handler.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseUp
     * @type {function}
     * @since 3.10.0
     */
    public var onMouseUp:Dynamic;
    /**
     * The Mouse Down Event handler specifically for events on the Window.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseDownWindow
     * @type {function}
     * @since 3.17.0
     */
    public var onMouseDownWindow:Dynamic;
    /**
     * The Mouse Up Event handler specifically for events on the Window.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseUpWindow
     * @type {function}
     * @since 3.17.0
     */
    public var onMouseUpWindow:Dynamic;
    /**
     * The Mouse Over Event handler.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseOver
     * @type {function}
     * @since 3.16.0
     */
    public var onMouseOver:Dynamic;
    /**
     * The Mouse Out Event handler.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseOut
     * @type {function}
     * @since 3.16.0
     */
    public var onMouseOut:Dynamic;
    /**
     * The Mouse Wheel Event handler.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#onMouseWheel
     * @type {function}
     * @since 3.18.0
     */
    public var onMouseWheel:Dynamic;
    /**
     * Internal pointerLockChange handler.
     * This function is sent the native DOM MouseEvent.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Mouse.MouseManager#pointerLockChange
     * @type {function}
     * @since 3.0.0
     */
    public var pointerLockChange:Dynamic;
    /**
     * Attempts to disable the context menu from appearing if you right-click on the browser.
     *
     * Works by listening for the `contextmenu` event and prevent defaulting it.
     *
     * Use this if you need to enable right-button mouse support in your game, and the browser
     * menu keeps getting in the way.
     *
     * @method Phaser.Input.Mouse.MouseManager#disableContextMenu
     * @since 3.0.0
     *
     * @return {this} This Mouse Manager instance.
     */
    public function disableContextMenu():Dynamic;
    /**
     * If the browser supports it, you can request that the pointer be locked to the browser window.
     *
     * This is classically known as 'FPS controls', where the pointer can't leave the browser until
     * the user presses an exit key.
     *
     * If the browser successfully enters a locked state, a `POINTER_LOCK_CHANGE_EVENT` will be dispatched,
     * from the games Input Manager, with an `isPointerLocked` property.
     *
     * It is important to note that pointer lock can only be enabled after an 'engagement gesture',
     * see: https://w3c.github.io/pointerlock/#dfn-engagement-gesture.
     *
     * @method Phaser.Input.Mouse.MouseManager#requestPointerLock
     * @since 3.0.0
     */
    public function requestPointerLock():Void;
    /**
     * If the browser supports pointer lock, this will request that the pointer lock is released. If
     * the browser successfully enters a locked state, a 'POINTER_LOCK_CHANGE_EVENT' will be
     * dispatched - from the game's input manager - with an `isPointerLocked` property.
     *
     * @method Phaser.Input.Mouse.MouseManager#releasePointerLock
     * @since 3.0.0
     */
    public function releasePointerLock():Void;
    /**
     * Starts the Mouse Event listeners running.
     * This is called automatically and does not need to be manually invoked.
     *
     * @method Phaser.Input.Mouse.MouseManager#startListeners
     * @since 3.0.0
     */
    public function startListeners():Void;
    /**
     * Stops the Mouse Event listeners.
     * This is called automatically and does not need to be manually invoked.
     *
     * @method Phaser.Input.Mouse.MouseManager#stopListeners
     * @since 3.0.0
     */
    public function stopListeners():Void;
    /**
     * Destroys this Mouse Manager instance.
     *
     * @method Phaser.Input.Mouse.MouseManager#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
