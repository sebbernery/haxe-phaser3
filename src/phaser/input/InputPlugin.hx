package phaser.input;

/**
 * @classdesc
 * The Input Plugin belongs to a Scene and handles all input related events and operations for it.
 *
 * You can access it from within a Scene using `this.input`.
 *
 * It emits events directly. For example, you can do:
 *
 * ```javascript
 * this.input.on('pointerdown', callback, context);
 * ```
 *
 * To listen for a pointer down event anywhere on the game canvas.
 *
 * Game Objects can be enabled for input by calling their `setInteractive` method. After which they
 * will directly emit input events:
 *
 * ```javascript
 * var sprite = this.add.sprite(x, y, texture);
 * sprite.setInteractive();
 * sprite.on('pointerdown', callback, context);
 * ```
 *
 * There are lots of game configuration options available relating to input.
 * See the [Input Config object]{@linkcode Phaser.Types.Core.InputConfig} for more details, including how to deal with Phaser
 * listening for input events outside of the canvas, how to set a default number of pointers, input
 * capture settings and more.
 *
 * Please also see the Input examples and tutorials for further information.
 *
 * **Incorrect input coordinates with Angular**
 *
 * If you are using Phaser within Angular, and use nglf or the router, to make the component in which the Phaser game resides
 * change state (i.e. appear or disappear) then you'll need to notify the Scale Manager about this, as Angular will mess with
 * the DOM in a way in which Phaser can't detect directly. Call `this.scale.updateBounds()` as part of your game init in order
 * to refresh the canvas DOM bounds values, which Phaser uses for input point position calculations.
 *
 * @class InputPlugin
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Input
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - A reference to the Scene that this Input Plugin is responsible for.
 */
@:native("Phaser.Input.InputPlugin")
extern class InputPlugin extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene);
    /**
     * A reference to the Scene that this Input Plugin is responsible for.
     *
     * @name Phaser.Input.InputPlugin#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene Systems class.
     *
     * @name Phaser.Input.InputPlugin#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * A reference to the Scene Systems Settings.
     *
     * @name Phaser.Input.InputPlugin#settings
     * @type {Phaser.Types.Scenes.SettingsObject}
     * @since 3.5.0
     */
    public var settings:phaser.types.scenes.SettingsObject;
    /**
     * A reference to the Game Input Manager.
     *
     * @name Phaser.Input.InputPlugin#manager
     * @type {Phaser.Input.InputManager}
     * @since 3.0.0
     */
    public var manager:phaser.input.InputManager;
    /**
     * If `true` this Input Plugin will process DOM input events.
     *
     * @name Phaser.Input.InputPlugin#enabled
     * @type {boolean}
     * @default true
     * @since 3.5.0
     */
    public var enabled:Bool;
    /**
     * A reference to the Scene Display List. This property is set during the `boot` method.
     *
     * @name Phaser.Input.InputPlugin#displayList
     * @type {Phaser.GameObjects.DisplayList}
     * @since 3.0.0
     */
    public var displayList:phaser.gameobjects.DisplayList;
    /**
     * A reference to the Scene Cameras Manager. This property is set during the `boot` method.
     *
     * @name Phaser.Input.InputPlugin#cameras
     * @type {Phaser.Cameras.Scene2D.CameraManager}
     * @since 3.0.0
     */
    public var cameras:phaser.cameras.scene2d.CameraManager;
    /**
     * A reference to the Mouse Manager.
     *
     * This property is only set if Mouse support has been enabled in your Game Configuration file.
     *
     * If you just wish to get access to the mouse pointer, use the `mousePointer` property instead.
     *
     * @name Phaser.Input.InputPlugin#mouse
     * @type {?Phaser.Input.Mouse.MouseManager}
     * @since 3.0.0
     */
    public var mouse:phaser.input.mouse.MouseManager;
    /**
     * When set to `true` (the default) the Input Plugin will emulate DOM behavior by only emitting events from
     * the top-most Game Objects in the Display List.
     *
     * If set to `false` it will emit events from all Game Objects below a Pointer, not just the top one.
     *
     * @name Phaser.Input.InputPlugin#topOnly
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var topOnly:Bool;
    /**
     * How often should the Pointers be checked?
     *
     * The value is a time, given in ms, and is the time that must have elapsed between game steps before
     * the Pointers will be polled again. When a pointer is polled it runs a hit test to see which Game
     * Objects are currently below it, or being interacted with it.
     *
     * Pointers will *always* be checked if they have been moved by the user, or press or released.
     *
     * This property only controls how often they will be polled if they have not been updated.
     * You should set this if you want to have Game Objects constantly check against the pointers, even
     * if the pointer didn't itself move.
     *
     * Set to 0 to poll constantly. Set to -1 to only poll on user movement.
     *
     * @name Phaser.Input.InputPlugin#pollRate
     * @type {number}
     * @default -1
     * @since 3.0.0
     */
    public var pollRate:Float;
    /**
     * The distance, in pixels, a pointer has to move while being held down, before it thinks it is being dragged.
     *
     * @name Phaser.Input.InputPlugin#dragDistanceThreshold
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var dragDistanceThreshold:Float;
    /**
     * The amount of time, in ms, a pointer has to be held down before it thinks it is dragging.
     *
     * The default polling rate is to poll only on move so once the time threshold is reached the
     * drag event will not start until you move the mouse. If you want it to start immediately
     * when the time threshold is reached, you must increase the polling rate by calling
     * [setPollAlways]{@linkcode Phaser.Input.InputPlugin#setPollAlways} or
     * [setPollRate]{@linkcode Phaser.Input.InputPlugin#setPollRate}.
     *
     * @name Phaser.Input.InputPlugin#dragTimeThreshold
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var dragTimeThreshold:Float;
    /**
     * The x coordinates of the ActivePointer based on the first camera in the camera list.
     * This is only safe to use if your game has just 1 non-transformed camera and doesn't use multi-touch.
     *
     * @name Phaser.Input.InputPlugin#x
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y coordinates of the ActivePointer based on the first camera in the camera list.
     * This is only safe to use if your game has just 1 non-transformed camera and doesn't use multi-touch.
     *
     * @name Phaser.Input.InputPlugin#y
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * Are any mouse or touch pointers currently over the game canvas?
     *
     * @name Phaser.Input.InputPlugin#isOver
     * @type {boolean}
     * @readonly
     * @since 3.16.0
     */
    public var isOver:Bool;
    /**
     * The mouse has its own unique Pointer object, which you can reference directly if making a _desktop specific game_.
     * If you are supporting both desktop and touch devices then do not use this property, instead use `activePointer`
     * which will always map to the most recently interacted pointer.
     *
     * @name Phaser.Input.InputPlugin#mousePointer
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var mousePointer:phaser.input.Pointer;
    /**
     * The current active input Pointer.
     *
     * @name Phaser.Input.InputPlugin#activePointer
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.0.0
     */
    public var activePointer:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer1
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer1:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer2
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer2:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer3
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer3:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer4
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer4:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer5
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer5:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer6
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer6:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer7
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer7:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer8
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer8:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer9
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer9:phaser.input.Pointer;
    /**
     * A touch-based Pointer object.
     * This will be `undefined` by default unless you add a new Pointer using `addPointer`.
     *
     * @name Phaser.Input.InputPlugin#pointer10
     * @type {Phaser.Input.Pointer}
     * @readonly
     * @since 3.10.0
     */
    public var pointer10:phaser.input.Pointer;
    /**
     * An instance of the Gamepad Plugin class, if enabled via the `input.gamepad` Scene or Game Config property.
     * Use this to create access Gamepads connected to the browser and respond to gamepad buttons.
     *
     * @name Phaser.Input.InputPlugin#gamepad
     * @type {?Phaser.Input.Gamepad.GamepadPlugin}
     * @since 3.10.0
     */
    public var gamepad:phaser.input.gamepad.GamepadPlugin;
    /**
     * An instance of the Keyboard Plugin class, if enabled via the `input.keyboard` Scene or Game Config property.
     * Use this to create Key objects and listen for keyboard specific events.
     *
     * @name Phaser.Input.InputPlugin#keyboard
     * @type {?Phaser.Input.Keyboard.KeyboardPlugin}
     * @since 3.10.0
     */
    public var keyboard:phaser.input.keyboard.KeyboardPlugin;
    /**
     * Checks to see if both this plugin and the Scene to which it belongs is active.
     *
     * @method Phaser.Input.InputPlugin#isActive
     * @since 3.10.0
     *
     * @return {boolean} `true` if the plugin and the Scene it belongs to is active.
     */
    public function isActive():Bool;
    /**
     * This is called automatically by the Input Manager.
     * It emits events for plugins to listen to and also handles polling updates, if enabled.
     *
     * @method Phaser.Input.InputPlugin#updatePoll
     * @since 3.18.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     *
     * @return {boolean} `true` if the plugin and the Scene it belongs to is active.
     */
    public function updatePoll(time:Float, delta:Float):Bool;
    /**
     * Clears a Game Object so it no longer has an Interactive Object associated with it.
     * The Game Object is then queued for removal from the Input Plugin on the next update.
     *
     * @method Phaser.Input.InputPlugin#clear
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object that will have its Interactive Object removed.
     * @param {boolean} [skipQueue=false] - Skip adding this Game Object into the removal queue?
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that had its Interactive Object removed.
     */
    public function clear(gameObject:phaser.gameobjects.GameObject, ?skipQueue:Bool):phaser.gameobjects.GameObject;
    /**
     * Disables Input on a single Game Object.
     *
     * An input disabled Game Object still retains its Interactive Object component and can be re-enabled
     * at any time, by passing it to `InputPlugin.enable`.
     *
     * @method Phaser.Input.InputPlugin#disable
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to have its input system disabled.
     */
    public function disable(gameObject:phaser.gameobjects.GameObject):Void;
    /**
     * Enable a Game Object for interaction.
     *
     * If the Game Object already has an Interactive Object component, it is enabled and returned.
     *
     * Otherwise, a new Interactive Object component is created and assigned to the Game Object's `input` property.
     *
     * Input works by using hit areas, these are nearly always geometric shapes, such as rectangles or circles, that act as the hit area
     * for the Game Object. However, you can provide your own hit area shape and callback, should you wish to handle some more advanced
     * input detection.
     *
     * If no arguments are provided it will try and create a rectangle hit area based on the texture frame the Game Object is using. If
     * this isn't a texture-bound object, such as a Graphics or BitmapText object, this will fail, and you'll need to provide a specific
     * shape for it to use.
     *
     * You can also provide an Input Configuration Object as the only argument to this method.
     *
     * @method Phaser.Input.InputPlugin#enable
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to be enabled for input.
     * @param {(Phaser.Types.Input.InputConfiguration|any)} [hitArea] - Either an input configuration object, or a geometric shape that defines the hit area for the Game Object. If not specified a Rectangle will be used.
     * @param {Phaser.Types.Input.HitAreaCallback} [hitAreaCallback] - The 'contains' function to invoke to check if the pointer is within the hit area.
     * @param {boolean} [dropZone=false] - Is this Game Object a drop zone or not?
     *
     * @return {this} This Input Plugin.
     */
    public function enable(gameObject:phaser.gameobjects.GameObject, ?hitArea:Dynamic, ?hitAreaCallback:phaser.types.input.HitAreaCallback, ?dropZone:Bool):Dynamic;
    /**
     * Takes the given Pointer and performs a hit test against it, to see which interactive Game Objects
     * it is currently above.
     *
     * The hit test is performed against which-ever Camera the Pointer is over. If it is over multiple
     * cameras, it starts checking the camera at the top of the camera list, and if nothing is found, iterates down the list.
     *
     * @method Phaser.Input.InputPlugin#hitTestPointer
     * @since 3.0.0
     *
     * @param {Phaser.Input.Pointer} pointer - The Pointer to check against the Game Objects.
     *
     * @return {Phaser.GameObjects.GameObject[]} An array of all the interactive Game Objects the Pointer was above.
     */
    public function hitTestPointer(pointer:phaser.input.Pointer):Array<phaser.gameobjects.GameObject>;
    /**
     * Returns the drag state of the given Pointer for this Input Plugin.
     *
     * The state will be one of the following:
     *
     * 0 = Not dragging anything
     * 1 = Primary button down and objects below, so collect a draglist
     * 2 = Pointer being checked if meets drag criteria
     * 3 = Pointer meets criteria, notify the draglist
     * 4 = Pointer actively dragging the draglist and has moved
     * 5 = Pointer actively dragging but has been released, notify draglist
     *
     * @method Phaser.Input.InputPlugin#getDragState
     * @since 3.16.0
     *
     * @param {Phaser.Input.Pointer} pointer - The Pointer to get the drag state for.
     *
     * @return {number} The drag state of the given Pointer.
     */
    public function getDragState(pointer:phaser.input.Pointer):Float;
    /**
     * Sets the drag state of the given Pointer for this Input Plugin.
     *
     * The state must be one of the following values:
     *
     * 0 = Not dragging anything
     * 1 = Primary button down and objects below, so collect a draglist
     * 2 = Pointer being checked if meets drag criteria
     * 3 = Pointer meets criteria, notify the draglist
     * 4 = Pointer actively dragging the draglist and has moved
     * 5 = Pointer actively dragging but has been released, notify draglist
     *
     * @method Phaser.Input.InputPlugin#setDragState
     * @since 3.16.0
     *
     * @param {Phaser.Input.Pointer} pointer - The Pointer to set the drag state for.
     * @param {number} state - The drag state value. An integer between 0 and 5.
     */
    public function setDragState(pointer:phaser.input.Pointer, state:Float):Void;
    /**
     * Sets the draggable state of the given array of Game Objects.
     *
     * They can either be set to be draggable, or can have their draggable state removed by passing `false`.
     *
     * A Game Object will not fire drag events unless it has been specifically enabled for drag.
     *
     * @method Phaser.Input.InputPlugin#setDraggable
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[])} gameObjects - An array of Game Objects to change the draggable state on.
     * @param {boolean} [value=true] - Set to `true` if the Game Objects should be made draggable, `false` if they should be unset.
     *
     * @return {this} This InputPlugin object.
     */
    public function setDraggable(gameObjects:Dynamic, ?value:Bool):Dynamic;
    /**
     * Creates a function that can be passed to `setInteractive`, `enable` or `setHitArea` that will handle
     * pixel-perfect input detection on an Image or Sprite based Game Object, or any custom class that extends them.
     *
     * The following will create a sprite that is clickable on any pixel that has an alpha value >= 1.
     *
     * ```javascript
     * this.add.sprite(x, y, key).setInteractive(this.input.makePixelPerfect());
     * ```
     *
     * The following will create a sprite that is clickable on any pixel that has an alpha value >= 150.
     *
     * ```javascript
     * this.add.sprite(x, y, key).setInteractive(this.input.makePixelPerfect(150));
     * ```
     *
     * Once you have made an Interactive Object pixel perfect it impacts all input related events for it: down, up,
     * dragstart, drag, etc.
     *
     * As a pointer interacts with the Game Object it will constantly poll the texture, extracting a single pixel from
     * the given coordinates and checking its color values. This is an expensive process, so should only be enabled on
     * Game Objects that really need it.
     *
     * You cannot make non-texture based Game Objects pixel perfect. So this will not work on Graphics, BitmapText,
     * Render Textures, Text, Tilemaps, Containers or Particles.
     *
     * @method Phaser.Input.InputPlugin#makePixelPerfect
     * @since 3.10.0
     *
     * @param {number} [alphaTolerance=1] - The alpha level that the pixel should be above to be included as a successful interaction.
     *
     * @return {function} A Pixel Perfect Handler for use as a hitArea shape callback.
     */
    public function makePixelPerfect(?alphaTolerance:Float):Dynamic;
    /**
     * Sets the hit area for the given array of Game Objects.
     *
     * A hit area is typically one of the geometric shapes Phaser provides, such as a `Phaser.Geom.Rectangle`
     * or `Phaser.Geom.Circle`. However, it can be any object as long as it works with the provided callback.
     *
     * If no hit area is provided a Rectangle is created based on the size of the Game Object, if possible
     * to calculate.
     *
     * The hit area callback is the function that takes an `x` and `y` coordinate and returns a boolean if
     * those values fall within the area of the shape or not. All of the Phaser geometry objects provide this,
     * such as `Phaser.Geom.Rectangle.Contains`.
     *
     * @method Phaser.Input.InputPlugin#setHitArea
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[])} gameObjects - An array of Game Objects to set the hit area on.
     * @param {(Phaser.Types.Input.InputConfiguration|any)} [hitArea] - Either an input configuration object, or a geometric shape that defines the hit area for the Game Object. If not specified a Rectangle will be used.
     * @param {Phaser.Types.Input.HitAreaCallback} [hitAreaCallback] - The 'contains' function to invoke to check if the pointer is within the hit area.
     *
     * @return {this} This InputPlugin object.
     */
    public function setHitArea(gameObjects:Dynamic, ?hitArea:Dynamic, ?hitAreaCallback:phaser.types.input.HitAreaCallback):Dynamic;
    /**
     * Sets the hit area for an array of Game Objects to be a `Phaser.Geom.Circle` shape, using
     * the given coordinates and radius to control its position and size.
     *
     * @method Phaser.Input.InputPlugin#setHitAreaCircle
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[])} gameObjects - An array of Game Objects to set as having a circle hit area.
     * @param {number} x - The center of the circle.
     * @param {number} y - The center of the circle.
     * @param {number} radius - The radius of the circle.
     * @param {Phaser.Types.Input.HitAreaCallback} [callback] - The hit area callback. If undefined it uses Circle.Contains.
     *
     * @return {this} This InputPlugin object.
     */
    public function setHitAreaCircle(gameObjects:Dynamic, x:Float, y:Float, radius:Float, ?callback:phaser.types.input.HitAreaCallback):Dynamic;
    /**
     * Sets the hit area for an array of Game Objects to be a `Phaser.Geom.Ellipse` shape, using
     * the given coordinates and dimensions to control its position and size.
     *
     * @method Phaser.Input.InputPlugin#setHitAreaEllipse
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[])} gameObjects - An array of Game Objects to set as having an ellipse hit area.
     * @param {number} x - The center of the ellipse.
     * @param {number} y - The center of the ellipse.
     * @param {number} width - The width of the ellipse.
     * @param {number} height - The height of the ellipse.
     * @param {Phaser.Types.Input.HitAreaCallback} [callback] - The hit area callback. If undefined it uses Ellipse.Contains.
     *
     * @return {this} This InputPlugin object.
     */
    public function setHitAreaEllipse(gameObjects:Dynamic, x:Float, y:Float, width:Float, height:Float, ?callback:phaser.types.input.HitAreaCallback):Dynamic;
    /**
     * Sets the hit area for an array of Game Objects to be a `Phaser.Geom.Rectangle` shape, using
     * the Game Objects texture frame to define the position and size of the hit area.
     *
     * @method Phaser.Input.InputPlugin#setHitAreaFromTexture
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[])} gameObjects - An array of Game Objects to set as having an ellipse hit area.
     * @param {Phaser.Types.Input.HitAreaCallback} [callback] - The hit area callback. If undefined it uses Rectangle.Contains.
     *
     * @return {this} This InputPlugin object.
     */
    public function setHitAreaFromTexture(gameObjects:Dynamic, ?callback:phaser.types.input.HitAreaCallback):Dynamic;
    /**
     * Sets the hit area for an array of Game Objects to be a `Phaser.Geom.Rectangle` shape, using
     * the given coordinates and dimensions to control its position and size.
     *
     * @method Phaser.Input.InputPlugin#setHitAreaRectangle
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[])} gameObjects - An array of Game Objects to set as having a rectangular hit area.
     * @param {number} x - The top-left of the rectangle.
     * @param {number} y - The top-left of the rectangle.
     * @param {number} width - The width of the rectangle.
     * @param {number} height - The height of the rectangle.
     * @param {Phaser.Types.Input.HitAreaCallback} [callback] - The hit area callback. If undefined it uses Rectangle.Contains.
     *
     * @return {this} This InputPlugin object.
     */
    public function setHitAreaRectangle(gameObjects:Dynamic, x:Float, y:Float, width:Float, height:Float, ?callback:phaser.types.input.HitAreaCallback):Dynamic;
    /**
     * Sets the hit area for an array of Game Objects to be a `Phaser.Geom.Triangle` shape, using
     * the given coordinates to control the position of its points.
     *
     * @method Phaser.Input.InputPlugin#setHitAreaTriangle
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[])} gameObjects - An array of Game Objects to set as having a  triangular hit area.
     * @param {number} x1 - The x coordinate of the first point of the triangle.
     * @param {number} y1 - The y coordinate of the first point of the triangle.
     * @param {number} x2 - The x coordinate of the second point of the triangle.
     * @param {number} y2 - The y coordinate of the second point of the triangle.
     * @param {number} x3 - The x coordinate of the third point of the triangle.
     * @param {number} y3 - The y coordinate of the third point of the triangle.
     * @param {Phaser.Types.Input.HitAreaCallback} [callback] - The hit area callback. If undefined it uses Triangle.Contains.
     *
     * @return {this} This InputPlugin object.
     */
    public function setHitAreaTriangle(gameObjects:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, ?callback:phaser.types.input.HitAreaCallback):Dynamic;
    /**
     * Creates an Input Debug Shape for the given Game Object.
     *
     * The Game Object must have _already_ been enabled for input prior to calling this method.
     *
     * This is intended to assist you during development and debugging.
     *
     * Debug Shapes can only be created for Game Objects that are using standard Phaser Geometry for input,
     * including: Circle, Ellipse, Line, Polygon, Rectangle and Triangle.
     *
     * Game Objects that are using their automatic hit areas are using Rectangles by default, so will also work.
     *
     * The Debug Shape is created and added to the display list and is then kept in sync with the Game Object
     * it is connected with. Should you need to modify it yourself, such as to hide it, you can access it via
     * the Game Object property: `GameObject.input.hitAreaDebug`.
     *
     * Calling this method on a Game Object that already has a Debug Shape will first destroy the old shape,
     * before creating a new one. If you wish to remove the Debug Shape entirely, you should call the
     * method `InputPlugin.removeDebug`.
     *
     * Note that the debug shape will only show the outline of the input area. If the input test is using a
     * pixel perfect check, for example, then this is not displayed. If you are using a custom shape, that
     * doesn't extend one of the base Phaser Geometry objects, as your hit area, then this method will not
     * work.
     *
     * @method Phaser.Input.InputPlugin#enableDebug
     * @since 3.19.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to create the input debug shape for.
     * @param {number} [color=0x00ff00] - The outline color of the debug shape.
     *
     * @return {this} This Input Plugin.
     */
    public function enableDebug(gameObject:phaser.gameobjects.GameObject, ?color:Float):Dynamic;
    /**
     * Removes an Input Debug Shape from the given Game Object.
     *
     * The shape is destroyed immediately and the `hitAreaDebug` property is set to `null`.
     *
     * @method Phaser.Input.InputPlugin#removeDebug
     * @since 3.19.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object to remove the input debug shape from.
     *
     * @return {this} This Input Plugin.
     */
    public function removeDebug(gameObject:phaser.gameobjects.GameObject):Dynamic;
    /**
     * Sets the Pointers to always poll.
     *
     * When a pointer is polled it runs a hit test to see which Game Objects are currently below it,
     * or being interacted with it, regardless if the Pointer has actually moved or not.
     *
     * You should enable this if you want objects in your game to fire over / out events, and the objects
     * are constantly moving, but the pointer may not have. Polling every frame has additional computation
     * costs, especially if there are a large number of interactive objects in your game.
     *
     * @method Phaser.Input.InputPlugin#setPollAlways
     * @since 3.0.0
     *
     * @return {this} This InputPlugin object.
     */
    public function setPollAlways():Dynamic;
    /**
     * Sets the Pointers to only poll when they are moved or updated.
     *
     * When a pointer is polled it runs a hit test to see which Game Objects are currently below it,
     * or being interacted with it.
     *
     * @method Phaser.Input.InputPlugin#setPollOnMove
     * @since 3.0.0
     *
     * @return {this} This InputPlugin object.
     */
    public function setPollOnMove():Dynamic;
    /**
     * Sets the poll rate value. This is the amount of time that should have elapsed before a pointer
     * will be polled again. See the `setPollAlways` and `setPollOnMove` methods.
     *
     * @method Phaser.Input.InputPlugin#setPollRate
     * @since 3.0.0
     *
     * @param {number} value - The amount of time, in ms, that should elapsed before re-polling the pointers.
     *
     * @return {this} This InputPlugin object.
     */
    public function setPollRate(value:Float):Dynamic;
    /**
     * When set to `true` the global Input Manager will emulate DOM behavior by only emitting events from
     * the top-most Scene in the Scene List. By default, if a Scene receives an input event it will then stop the event
     * from flowing down to any Scenes below it in the Scene list. To disable this behavior call this method with `false`.
     *
     * @method Phaser.Input.InputPlugin#setGlobalTopOnly
     * @since 3.0.0
     *
     * @param {boolean} value - Set to `true` to stop processing input events on the Scene that receives it, or `false` to let the event continue down the Scene list.
     *
     * @return {this} This InputPlugin object.
     */
    public function setGlobalTopOnly(value:Bool):Dynamic;
    /**
     * When set to `true` this Input Plugin will emulate DOM behavior by only emitting events from
     * the top-most Game Objects in the Display List.
     *
     * If set to `false` it will emit events from all Game Objects below a Pointer, not just the top one.
     *
     * @method Phaser.Input.InputPlugin#setTopOnly
     * @since 3.0.0
     *
     * @param {boolean} value - `true` to only include the top-most Game Object, or `false` to include all Game Objects in a hit test.
     *
     * @return {this} This InputPlugin object.
     */
    public function setTopOnly(value:Bool):Dynamic;
    /**
     * Given an array of Game Objects and a Pointer, sort the array and return it,
     * so that the objects are in render order with the lowest at the bottom.
     *
     * @method Phaser.Input.InputPlugin#sortGameObjects
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject[]} gameObjects - An array of Game Objects to be sorted.
     * @param {Phaser.Input.Pointer} pointer - The Pointer to check against the Game Objects.
     *
     * @return {Phaser.GameObjects.GameObject[]} The sorted array of Game Objects.
     */
    public function sortGameObjects(gameObjects:Array<phaser.gameobjects.GameObject>, pointer:phaser.input.Pointer):Array<phaser.gameobjects.GameObject>;
    /**
     * Given an array of Drop Zone Game Objects, sort the array and return it,
     * so that the objects are in depth index order with the lowest at the bottom.
     *
     * @method Phaser.Input.InputPlugin#sortDropZones
     * @since 3.52.0
     *
     * @param {Phaser.GameObjects.GameObject[]} gameObjects - An array of Game Objects to be sorted.
     *
     * @return {Phaser.GameObjects.GameObject[]} The sorted array of Game Objects.
     */
    public function sortDropZones(gameObjects:Array<phaser.gameobjects.GameObject>):Array<phaser.gameobjects.GameObject>;
    /**
     * This method should be called from within an input event handler, such as `pointerdown`.
     *
     * When called, it stops the Input Manager from allowing _this specific event_ to be processed by any other Scene
     * not yet handled in the scene list.
     *
     * @method Phaser.Input.InputPlugin#stopPropagation
     * @since 3.0.0
     *
     * @return {this} This InputPlugin object.
     */
    public function stopPropagation():Dynamic;
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
     * @method Phaser.Input.InputPlugin#addPointer
     * @since 3.10.0
     *
     * @param {number} [quantity=1] The number of new Pointers to create. A maximum of 10 is allowed in total.
     *
     * @return {Phaser.Input.Pointer[]} An array containing all of the new Pointer objects that were created.
     */
    public function addPointer(?quantity:Float):Array<phaser.input.Pointer>;
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
     * @method Phaser.Input.InputPlugin#setDefaultCursor
     * @since 3.10.0
     *
     * @param {string} cursor - The CSS to be used when setting the default cursor.
     *
     * @return {this} This Input instance.
     */
    public function setDefaultCursor(cursor:String):Dynamic;
}
