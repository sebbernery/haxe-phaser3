package phaser.input.touch;

/**
 * @classdesc
 * The Touch Manager is a helper class that belongs to the Input Manager.
 *
 * Its role is to listen for native DOM Touch Events and then pass them onto the Input Manager for further processing.
 *
 * You do not need to create this class directly, the Input Manager will create an instance of it automatically.
 *
 * @class TouchManager
 * @memberof Phaser.Input.Touch
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Input.InputManager} inputManager - A reference to the Input Manager.
 */
@:native("Phaser.Input.Touch.TouchManager")
extern class TouchManager {
    public function new(inputManager:phaser.input.InputManager);
    /**
     * A reference to the Input Manager.
     *
     * @name Phaser.Input.Touch.TouchManager#manager
     * @type {Phaser.Input.InputManager}
     * @since 3.0.0
     */
    public var manager:phaser.input.InputManager;
    /**
     * If true the DOM events will have event.preventDefault applied to them, if false they will propagate fully.
     *
     * @name Phaser.Input.Touch.TouchManager#capture
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var capture:Bool;
    /**
     * A boolean that controls if the Touch Manager is enabled or not.
     * Can be toggled on the fly.
     *
     * @name Phaser.Input.Touch.TouchManager#enabled
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var enabled:Bool;
    /**
     * The Touch Event target, as defined in the Game Config.
     * Typically the canvas to which the game is rendering, but can be any interactive DOM element.
     *
     * @name Phaser.Input.Touch.TouchManager#target
     * @type {any}
     * @since 3.0.0
     */
    public var target:Dynamic;
    /**
     * The Touch Start event handler function.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchStart
     * @type {function}
     * @since 3.0.0
     */
    public var onTouchStart:Dynamic;
    /**
     * The Touch Start event handler function specifically for events on the Window.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchStartWindow
     * @type {function}
     * @since 3.17.0
     */
    public var onTouchStartWindow:Dynamic;
    /**
     * The Touch Move event handler function.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchMove
     * @type {function}
     * @since 3.0.0
     */
    public var onTouchMove:Dynamic;
    /**
     * The Touch End event handler function.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchEnd
     * @type {function}
     * @since 3.0.0
     */
    public var onTouchEnd:Dynamic;
    /**
     * The Touch End event handler function specifically for events on the Window.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchEndWindow
     * @type {function}
     * @since 3.17.0
     */
    public var onTouchEndWindow:Dynamic;
    /**
     * The Touch Cancel event handler function.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchCancel
     * @type {function}
     * @since 3.15.0
     */
    public var onTouchCancel:Dynamic;
    /**
     * The Touch Cancel event handler function specifically for events on the Window.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchCancelWindow
     * @type {function}
     * @since 3.18.0
     */
    public var onTouchCancelWindow:Dynamic;
    /**
     * The Touch Over event handler function.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchOver
     * @type {function}
     * @since 3.16.0
     */
    public var onTouchOver:Dynamic;
    /**
     * The Touch Out event handler function.
     * Initially empty and bound in the `startListeners` method.
     *
     * @name Phaser.Input.Touch.TouchManager#onTouchOut
     * @type {function}
     * @since 3.16.0
     */
    public var onTouchOut:Dynamic;
    /**
     * Starts the Touch Event listeners running as long as an input target is set.
     *
     * This method is called automatically if Touch Input is enabled in the game config,
     * which it is by default. However, you can call it manually should you need to
     * delay input capturing until later in the game.
     *
     * @method Phaser.Input.Touch.TouchManager#startListeners
     * @since 3.0.0
     */
    public function startListeners():Void;
    /**
     * Stops the Touch Event listeners.
     * This is called automatically and does not need to be manually invoked.
     *
     * @method Phaser.Input.Touch.TouchManager#stopListeners
     * @since 3.0.0
     */
    public function stopListeners():Void;
    /**
     * Destroys this Touch Manager instance.
     *
     * @method Phaser.Input.Touch.TouchManager#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
