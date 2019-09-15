package phaser.input;

/**
 * @classdesc
 * The Input Manager is responsible for handling the pointer related systems in a single Phaser Game instance.
 *
 * Based on the Game Config it will create handlers for mouse and touch support.
 *
 * Keyboard and Gamepad are plugins, handled directly by the InputPlugin class.
 *
 * It then manages the events, pointer creation and general hit test related operations.
 *
 * You rarely need to interact with the Input Manager directly, and as such, all of its properties and methods
 * should be considered private. Instead, you should use the Input Plugin, which is a Scene level system, responsible
 * for dealing with all input events for a Scene.
 *
 * @class InputManager
 * @memberof Phaser.Input
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - The Game instance that owns the Input Manager.
 * @param {object} config - The Input Configuration object, as set in the Game Config.
 */
@:native("Phaser.Input.InputManager")
extern class InputManager {
    public function new(game:phaser.Game, config:Dynamic);
    /**
     * The Game instance that owns the Input Manager.
     * A Game only maintains on instance of the Input Manager at any time.
     *
     * @name Phaser.Input.InputManager#game
     * @type {Phaser.Game}
     * @readonly
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * A reference to the global Game Scale Manager.
     * Used for all bounds checks and pointer scaling.
     *
     * @name Phaser.Input.InputManager#scaleManager
     * @type {Phaser.Scale.ScaleManager}
     * @since 3.16.0
     */
    public var scaleManager:phaser.scale.ScaleManager;
    /**
     * The Canvas that is used for all DOM event input listeners.
     *
     * @name Phaser.Input.InputManager#canvas
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var canvas:js.html.CanvasElement;
    /**
     * The Game Configuration object, as set during the game boot.
     *
     * @name Phaser.Input.InputManager#config
     * @type {Phaser.Core.Config}
     * @since 3.0.0
     */
    public var config:phaser.core.Config;
    /**
     * If set, the Input Manager will run its update loop every frame.
     *
     * @name Phaser.Input.InputManager#enabled
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var enabled:Bool;
    /**
     * The Event Emitter instance that the Input Manager uses to emit events from.
     *
     * @name Phaser.Input.InputManager#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.0.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * Are any mouse or touch pointers currently over the game canvas?
     * This is updated automatically by the canvas over and out handlers.
     *
     * @name Phaser.Input.InputManager#isOver
     * @type {boolean}
     * @readonly
     * @since 3.16.0
     */
    public var isOver:Bool;
    /**
     * The default CSS cursor to be used when interacting with your game.
     *
     * See the `setDefaultCursor` method for more details.
     *
     * @name Phaser.Input.InputManager#defaultCursor
     * @type {string}
     * @since 3.10.0
     */
    public var defaultCursor:String;
    /**
     * A reference to the Keyboard Manager class, if enabled via the `input.keyboard` Game Config property.
     *
     * @name Phaser.Input.InputManager#keyboard
     * @type {?Phaser.Input.Keyboard.KeyboardManager}
     * @since 3.16.0
     */
    public var keyboard:phaser.input.keyboard.KeyboardManager;
    /**
     * A reference to the Mouse Manager class, if enabled via the `input.mouse` Game Config property.
     *
     * @name Phaser.Input.InputManager#mouse
     * @type {?Phaser.Input.Mouse.MouseManager}
     * @since 3.0.0
     */
    public var mouse:phaser.input.mouse.MouseManager;
    /**
     * A reference to the Touch Manager class, if enabled via the `input.touch` Game Config property.
     *
     * @name Phaser.Input.InputManager#touch
     * @type {Phaser.Input.Touch.TouchManager}
     * @since 3.0.0
     */
    public var touch:phaser.input.touch.TouchManager;
    /**
     * An array of Pointers that have been added to the game.
     * The first entry is reserved for the Mouse Pointer, the rest are Touch Pointers.
     *
     * By default there is 1 touch pointer enabled. If you need more use the `addPointer` method to start them,
     * or set the `input.activePointers` property in the Game Config.
     *
     * @name Phaser.Input.InputManager#pointers
     * @type {Phaser.Input.Pointer[]}
     * @since 3.10.0
     */
    public var pointers:Array<phaser.input.Pointer>;
    /**
     * The number of touch objects activated and being processed each update.
     *
     * You can change this by either calling `addPointer` at run-time, or by
     * setting the `input.activePointers` property in the Game Config.
     *
     * @name Phaser.Input.InputManager#pointersTotal
     * @type {integer}
     * @readonly
     * @since 3.10.0
     */
    public var pointersTotal:Int;
    /**
     * The mouse has its own unique Pointer object, which you can reference directly if making a _desktop specific game_.
     * If you are supporting both desktop and touch devices then do not use this property, instead use `activePointer`
     * which will always map to the most recently interacted pointer.
     *
     * @name Phaser.Input.InputManager#mousePointer
     * @type {?Phaser.Input.Pointer}
     * @since 3.10.0
     */
    public var mousePointer:phaser.input.Pointer;
    /**
     * The most recently active Pointer object.
     *
     * If you've only 1 Pointer in your game then this will accurately be either the first finger touched, or the mouse.
     *
     * If your game doesn't need to support multi-touch then you can safely use this property in all of your game
     * code and it will adapt to be either the mouse or the touch, based on device.
     *
     * @name Phaser.Input.InputManager#activePointer
     * @type {Phaser.Input.Pointer}
     * @since 3.0.0
     */
    public var activePointer:phaser.input.Pointer;
    /**
     * If the top-most Scene in the Scene List receives an input it will stop input from
     * propagating any lower down the scene list, i.e. if you have a UI Scene at the top
     * and click something on it, that click will not then be passed down to any other
     * Scene below. Disable this to have input events passed through all Scenes, all the time.
     *
     * @name Phaser.Input.InputManager#globalTopOnly
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var globalTopOnly:Bool;
    /**
     * The time this Input Manager was last updated.
     * This value is populated by the Game Step each frame.
     *
     * @name Phaser.Input.InputManager#time
     * @type {number}
     * @readonly
     * @since 3.16.2
     */
    public var time:Float;
    /**
     * The Boot handler is called by Phaser.Game when it first starts up.
     * The renderer is available by now.
     *
     * @method Phaser.Input.InputManager#boot
     * @protected
     * @fires Phaser.Input.Events#MANAGER_BOOT
     * @since 3.0.0
     */
    public function boot():Void;
    /**
     * Tells the Input system to set a custom cursor.
     *
     * This cursor will be the default cursor used when interacting with the game canvas.
     *
     * If an Interactive Object also sets a custom cursor, this is the cursor that is reset after its use.
     *
     * Any valid CSS cursor value is allowed, including paths to image files, i.e.:
     *
     * ```javascript
     * this.input.setDefaultCursor('url(assets/cursors/sword.cur), pointer');
     * ```
     *
     * Please read about the differences between browsers when it comes to the file formats and sizes they support:
     *
     * https://developer.mozilla.org/en-US/docs/Web/CSS/cursor
     * https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_User_Interface/Using_URL_values_for_the_cursor_property
     *
     * It's up to you to pick a suitable cursor format that works across the range of browsers you need to support.
     *
     * @method Phaser.Input.InputManager#setDefaultCursor
     * @since 3.10.0
     *
     * @param {string} cursor - The CSS to be used when setting the default cursor.
     */
    public function setDefaultCursor(cursor:String):Void;
    /**
     * Adds new Pointer objects to the Input Manager.
     *
     * By default Phaser creates 2 pointer objects: `mousePointer` and `pointer1`.
     *
     * You can create more either by calling this method, or by setting the `input.activePointers` property
     * in the Game Config, up to a maximum of 10 pointers.
     *
     * The first 10 pointers are available via the `InputPlugin.pointerX` properties, once they have been added
     * via this method.
     *
     * @method Phaser.Input.InputManager#addPointer
     * @since 3.10.0
     *
     * @param {integer} [quantity=1] The number of new Pointers to create. A maximum of 10 is allowed in total.
     *
     * @return {Phaser.Input.Pointer[]} An array containing all of the new Pointer objects that were created.
     */
    public function addPointer(?quantity:Int):Array<phaser.input.Pointer>;
    /**
     * Internal method that gets a list of all the active Input Plugins in the game
     * and updates each of them in turn, in reverse order (top to bottom), to allow
     * for DOM top-level event handling simulation.
     *
     * @method Phaser.Input.InputManager#updateInputPlugins
     * @since 3.16.0
     *
     * @param {integer} type - The type of event to process.
     * @param {Phaser.Input.Pointer[]} pointers - An array of Pointers on which the event occurred.
     */
    public function updateInputPlugins(type:Int, pointers:Array<phaser.input.Pointer>):Void;
    /**
     * Performs a hit test using the given Pointer and camera, against an array of interactive Game Objects.
     *
     * The Game Objects are culled against the camera, and then the coordinates are translated into the local camera space
     * and used to determine if they fall within the remaining Game Objects hit areas or not.
     *
     * If nothing is matched an empty array is returned.
     *
     * This method is called automatically by InputPlugin.hitTestPointer and doesn't usually need to be invoked directly.
     *
     * @method Phaser.Input.InputManager#hitTest
     * @since 3.0.0
     *
     * @param {Phaser.Input.Pointer} pointer - The Pointer to test against.
     * @param {array} gameObjects - An array of interactive Game Objects to check.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera which is being tested against.
     * @param {array} [output] - An array to store the results in. If not given, a new empty array is created.
     *
     * @return {array} An array of the Game Objects that were hit during this hit test.
     */
    public function hitTest(pointer:phaser.input.Pointer, gameObjects:Array<Dynamic>, camera:phaser.cameras.scene2d.Camera, ?output:Array<Dynamic>):Array<Dynamic>;
    /**
     * Checks if the given x and y coordinate are within the hit area of the Game Object.
     *
     * This method assumes that the coordinate values have already been translated into the space of the Game Object.
     *
     * If the coordinates are within the hit area they are set into the Game Objects Input `localX` and `localY` properties.
     *
     * @method Phaser.Input.InputManager#pointWithinHitArea
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The interactive Game Object to check against.
     * @param {number} x - The translated x coordinate for the hit test.
     * @param {number} y - The translated y coordinate for the hit test.
     *
     * @return {boolean} `true` if the coordinates were inside the Game Objects hit area, otherwise `false`.
     */
    public function pointWithinHitArea(gameObject:phaser.gameobjects.GameObject, x:Float, y:Float):Bool;
    /**
     * Checks if the given x and y coordinate are within the hit area of the Interactive Object.
     *
     * This method assumes that the coordinate values have already been translated into the space of the Interactive Object.
     *
     * If the coordinates are within the hit area they are set into the Interactive Objects Input `localX` and `localY` properties.
     *
     * @method Phaser.Input.InputManager#pointWithinInteractiveObject
     * @since 3.0.0
     *
     * @param {Phaser.Types.Input.InteractiveObject} object - The Interactive Object to check against.
     * @param {number} x - The translated x coordinate for the hit test.
     * @param {number} y - The translated y coordinate for the hit test.
     *
     * @return {boolean} `true` if the coordinates were inside the Game Objects hit area, otherwise `false`.
     */
    public function pointWithinInteractiveObject(object:phaser.types.input.InteractiveObject, x:Float, y:Float):Bool;
    /**
     * Transforms the pageX and pageY values of a Pointer into the scaled coordinate space of the Input Manager.
     *
     * @method Phaser.Input.InputManager#transformPointer
     * @since 3.10.0
     *
     * @param {Phaser.Input.Pointer} pointer - The Pointer to transform the values for.
     * @param {number} pageX - The Page X value.
     * @param {number} pageY - The Page Y value.
     * @param {boolean} wasMove - Are we transforming the Pointer from a move event, or an up / down event?
     */
    public function transformPointer(pointer:phaser.input.Pointer, pageX:Float, pageY:Float, wasMove:Bool):Void;
    /**
     * Destroys the Input Manager and all of its systems.
     *
     * There is no way to recover from doing this.
     *
     * @method Phaser.Input.InputManager#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
