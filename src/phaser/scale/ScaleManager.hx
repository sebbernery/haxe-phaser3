package phaser.scale;

/**
 * @classdesc
 * The Scale Manager handles the scaling, resizing and alignment of the game canvas.
 *
 * The way scaling is handled is by setting the game canvas to a fixed size, which is defined in the
 * game configuration. You also define the parent container in the game config. If no parent is given,
 * it will default to using the document body. The Scale Manager will then look at the available space
 * within the _parent_ and scale the canvas accordingly. Scaling is handled by setting the canvas CSS
 * width and height properties, leaving the width and height of the canvas element itself untouched.
 * Scaling is therefore achieved by keeping the core canvas the same size and 'stretching'
 * it via its CSS properties. This gives the same result and speed as using the `transform-scale` CSS
 * property, without the need for browser prefix handling.
 *
 * The calculations for the scale are heavily influenced by the bounding parent size, which is the computed
 * dimensions of the canvas's parent. The CSS rules of the parent element play an important role in the
 * operation of the Scale Manager. For example, if the parent has no defined width or height, then actions
 * like auto-centering will fail to achieve the required result. The Scale Manager works in tandem with the
 * CSS you set-up on the page hosting your game, rather than taking control of it.
 *
 * #### Parent and Display canvas containment guidelines:
 *
 * - Style the Parent element (of the game canvas) to control the Parent size and thus the games size and layout.
 *
 * - The Parent element's CSS styles should _effectively_ apply maximum (and minimum) bounding behavior.
 *
 * - The Parent element should _not_ apply a padding as this is not accounted for.
 *   If a padding is required apply it to the Parent's parent or apply a margin to the Parent.
 *   If you need to add a border, margin or any other CSS around your game container, then use a parent element and
 *   apply the CSS to this instead, otherwise you'll be constantly resizing the shape of the game container.
 *
 * - The Display canvas layout CSS styles (i.e. margins, size) should not be altered / specified as
 *   they may be updated by the Scale Manager.
 *
 * #### Scale Modes
 *
 * The way the scaling is handled is determined by the `scaleMode` property. The default is `NO_SCALE`,
 * which prevents Phaser from scaling or touching the canvas, or its parent, at all. In this mode, you are
 * responsible for all scaling. The other scaling modes afford you automatic scaling.
 *
 * If you wish to scale your game so that it always fits into the available space within the parent, you
 * should use the scale mode `FIT`. Look at the documentation for other scale modes to see what options are
 * available. Here is a basic config showing how to set this scale mode:
 *
 * ```javascript
 * scale: {
 *     parent: 'yourgamediv',
 *     mode: Phaser.Scale.FIT,
 *     width: 800,
 *     height: 600
 * }
 * ```
 *
 * Place the `scale` config object within your game config.
 *
 * If you wish for the canvas to be resized directly, so that the canvas itself fills the available space
 * (i.e. it isn't scaled, it's resized) then use the `RESIZE` scale mode. This will give you a 1:1 mapping
 * of canvas pixels to game size. In this mode CSS isn't used to scale the canvas, it's literally adjusted
 * to fill all available space within the parent. You should be extremely careful about the size of the
 * canvas you're creating when doing this, as the larger the area, the more work the GPU has to do and it's
 * very easy to hit fill-rate limits quickly.
 *
 * For complex, custom-scaling requirements, you should probably consider using the `RESIZE` scale mode,
 * with your own limitations in place re: canvas dimensions and managing the scaling with the game scenes
 * yourself. For the vast majority of games, however, the `FIT` mode is likely to be the most used.
 *
 * Please appreciate that the Scale Manager cannot perform miracles. All it does is scale your game canvas
 * as best it can, based on what it can infer from its surrounding area. There are all kinds of environments
 * where it's up to you to guide and help the canvas position itself, especially when built into rendering
 * frameworks like React and Vue. If your page requires meta tags to prevent user scaling gestures, or such
 * like, then it's up to you to ensure they are present in the html.
 *
 * #### Centering
 *
 * You can also have the game canvas automatically centered. Again, this relies heavily on the parent being
 * properly configured and styled, as the centering offsets are based entirely on the available space
 * within the parent element. Centering is disabled by default, or can be applied horizontally, vertically,
 * or both. Here's an example:
 *
 * ```javascript
 * scale: {
 *     parent: 'yourgamediv',
 *     autoCenter: Phaser.Scale.CENTER_BOTH,
 *     width: 800,
 *     height: 600
 * }
 * ```
 *
 * #### Fullscreen API
 *
 * If the browser supports it, you can send your game into fullscreen mode. In this mode, the game will fill
 * the entire display, removing all browser UI and anything else present on the screen. It will remain in this
 * mode until your game either disables it, or until the user tabs out or presses ESCape if on desktop. It's a
 * great way to achieve a desktop-game like experience from the browser, but it does require a modern browser
 * to handle it. Some mobile browsers also support this.
 *
 * @class ScaleManager
 * @memberof Phaser.Scale
 * @extends Phaser.Events.EventEmitter
 * @constructor
 * @since 3.16.0
 *
 * @param {Phaser.Game} game - A reference to the Phaser.Game instance.
 */
@:native("Phaser.Scale.ScaleManager")
extern class ScaleManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    /**
     * A reference to the Phaser.Game instance.
     *
     * @name Phaser.Scale.ScaleManager#game
     * @type {Phaser.Game}
     * @readonly
     * @since 3.15.0
     */
    public var game:phaser.Game;
    /**
     * A reference to the HTML Canvas Element that Phaser uses to render the game.
     *
     * @name Phaser.Scale.ScaleManager#canvas
     * @type {HTMLCanvasElement}
     * @since 3.16.0
     */
    public var canvas:js.html.CanvasElement;
    /**
     * The DOM bounds of the canvas element.
     *
     * @name Phaser.Scale.ScaleManager#canvasBounds
     * @type {Phaser.Geom.Rectangle}
     * @since 3.16.0
     */
    public var canvasBounds:phaser.geom.Rectangle;
    /**
     * The parent object of the Canvas. Often a div, or the browser window, or nothing in non-browser environments.
     *
     * This is set in the Game Config as the `parent` property. If undefined (or just not present), it will default
     * to use the document body. If specifically set to `null` Phaser will ignore all parent operations.
     *
     * @name Phaser.Scale.ScaleManager#parent
     * @type {?any}
     * @since 3.16.0
     */
    public var parent:Dynamic;
    /**
     * Is the parent element the browser window?
     *
     * @name Phaser.Scale.ScaleManager#parentIsWindow
     * @type {boolean}
     * @since 3.16.0
     */
    public var parentIsWindow:Bool;
    /**
     * The Parent Size component.
     *
     * @name Phaser.Scale.ScaleManager#parentSize
     * @type {Phaser.Structs.Size}
     * @since 3.16.0
     */
    public var parentSize:phaser.structs.Size;
    /**
     * The Game Size component.
     *
     * The un-modified game size, as requested in the game config (the raw width / height),
     * as used for world bounds, cameras, etc
     *
     * @name Phaser.Scale.ScaleManager#gameSize
     * @type {Phaser.Structs.Size}
     * @since 3.16.0
     */
    public var gameSize:phaser.structs.Size;
    /**
     * The Base Size component.
     *
     * The modified game size, which is the gameSize * resolution, used to set the canvas width and height
     * (but not the CSS style)
     *
     * @name Phaser.Scale.ScaleManager#baseSize
     * @type {Phaser.Structs.Size}
     * @since 3.16.0
     */
    public var baseSize:phaser.structs.Size;
    /**
     * The Display Size component.
     *
     * The size used for the canvas style, factoring in the scale mode, parent and other values.
     *
     * @name Phaser.Scale.ScaleManager#displaySize
     * @type {Phaser.Structs.Size}
     * @since 3.16.0
     */
    public var displaySize:phaser.structs.Size;
    /**
     * The game scale mode.
     *
     * @name Phaser.Scale.ScaleManager#scaleMode
     * @type {Phaser.Scale.ScaleModeType}
     * @since 3.16.0
     */
    public var scaleMode:phaser.scale.ScaleModeType;
    /**
     * The canvas resolution.
     *
     * This is hard-coded to a value of 1 in the 3.16 release of Phaser and will be enabled at a later date.
     *
     * @name Phaser.Scale.ScaleManager#resolution
     * @type {number}
     * @since 3.16.0
     */
    public var resolution:Float;
    /**
     * The game zoom factor.
     *
     * This value allows you to multiply your games base size by the given zoom factor.
     * This is then used when calculating the display size, even in `NO_SCALE` situations.
     * If you don't want Phaser to touch the canvas style at all, this value should be 1.
     *
     * Can also be set to `MAX_ZOOM` in which case the zoom value will be derived based
     * on the game size and available space within the parent.
     *
     * @name Phaser.Scale.ScaleManager#zoom
     * @type {number}
     * @since 3.16.0
     */
    public var zoom:Float;
    /**
     * The scale factor between the baseSize and the canvasBounds.
     *
     * @name Phaser.Scale.ScaleManager#displayScale
     * @type {Phaser.Math.Vector2}
     * @since 3.16.0
     */
    public var displayScale:phaser.math.Vector2;
    /**
     * If set, the canvas sizes will be automatically passed through Math.floor.
     * This results in rounded pixel display values, which is important for performance on legacy
     * and low powered devices, but at the cost of not achieving a 'perfect' fit in some browser windows.
     *
     * @name Phaser.Scale.ScaleManager#autoRound
     * @type {boolean}
     * @since 3.16.0
     */
    public var autoRound:Bool;
    /**
     * Automatically center the canvas within the parent? The different centering modes are:
     *
     * 1. No centering.
     * 2. Center both horizontally and vertically.
     * 3. Center horizontally.
     * 4. Center vertically.
     *
     * Please be aware that in order to center the game canvas, you must have specified a parent
     * that has a size set, or the canvas parent is the document.body.
     *
     * @name Phaser.Scale.ScaleManager#autoCenter
     * @type {Phaser.Scale.CenterType}
     * @since 3.16.0
     */
    public var autoCenter:phaser.scale.CenterType;
    /**
     * The current device orientation.
     *
     * Orientation events are dispatched via the Device Orientation API, typically only on mobile browsers.
     *
     * @name Phaser.Scale.ScaleManager#orientation
     * @type {Phaser.Scale.OrientationType}
     * @since 3.16.0
     */
    public var orientation:phaser.scale.OrientationType;
    /**
     * A reference to the Device.Fullscreen object.
     *
     * @name Phaser.Scale.ScaleManager#fullscreen
     * @type {Phaser.Device.Fullscreen}
     * @since 3.16.0
     */
    public var fullscreen:phaser.device.Fullscreen;
    /**
     * The DOM Element which is sent into fullscreen mode.
     *
     * @name Phaser.Scale.ScaleManager#fullscreenTarget
     * @type {?any}
     * @since 3.16.0
     */
    public var fullscreenTarget:Dynamic;
    /**
     * The dirty state of the Scale Manager.
     * Set if there is a change between the parent size and the current size.
     *
     * @name Phaser.Scale.ScaleManager#dirty
     * @type {boolean}
     * @since 3.16.0
     */
    public var dirty:Bool;
    /**
     * How many milliseconds should elapse before checking if the browser size has changed?
     *
     * Most modern browsers dispatch a 'resize' event, which the Scale Manager will listen for.
     * However, older browsers fail to do this, or do it consistently, so we fall back to a
     * more traditional 'size check' based on a time interval. You can control how often it is
     * checked here.
     *
     * @name Phaser.Scale.ScaleManager#resizeInterval
     * @type {integer}
     * @since 3.16.0
     */
    public var resizeInterval:Int;
    /**
     * Is the browser currently in fullscreen mode or not?
     *
     * @name Phaser.Scale.ScaleManager#isFullscreen
     * @type {boolean}
     * @readonly
     * @since 3.16.0
     */
    public var isFullscreen:Bool;
    /**
     * The game width.
     *
     * This is typically the size given in the game configuration.
     *
     * @name Phaser.Scale.ScaleManager#width
     * @type {number}
     * @readonly
     * @since 3.16.0
     */
    public var width:Float;
    /**
     * The game height.
     *
     * This is typically the size given in the game configuration.
     *
     * @name Phaser.Scale.ScaleManager#height
     * @type {number}
     * @readonly
     * @since 3.16.0
     */
    public var height:Float;
    /**
     * Is the device in a portrait orientation as reported by the Orientation API?
     * This value is usually only available on mobile devices.
     *
     * @name Phaser.Scale.ScaleManager#isPortrait
     * @type {boolean}
     * @readonly
     * @since 3.16.0
     */
    public var isPortrait:Bool;
    /**
     * Is the device in a landscape orientation as reported by the Orientation API?
     * This value is usually only available on mobile devices.
     *
     * @name Phaser.Scale.ScaleManager#isLandscape
     * @type {boolean}
     * @readonly
     * @since 3.16.0
     */
    public var isLandscape:Bool;
    /**
     * Are the game dimensions portrait? (i.e. taller than they are wide)
     *
     * This is different to the device itself being in a portrait orientation.
     *
     * @name Phaser.Scale.ScaleManager#isGamePortrait
     * @type {boolean}
     * @readonly
     * @since 3.16.0
     */
    public var isGamePortrait:Bool;
    /**
     * Are the game dimensions landscape? (i.e. wider than they are tall)
     *
     * This is different to the device itself being in a landscape orientation.
     *
     * @name Phaser.Scale.ScaleManager#isGameLandscape
     * @type {boolean}
     * @readonly
     * @since 3.16.0
     */
    public var isGameLandscape:Bool;
    /**
     * Called _before_ the canvas object is created and added to the DOM.
     *
     * @method Phaser.Scale.ScaleManager#preBoot
     * @protected
     * @listens Phaser.Core.Events#BOOT
     * @since 3.16.0
     */
    public function preBoot():Void;
    /**
     * The Boot handler is called by Phaser.Game when it first starts up.
     * The renderer is available by now and the canvas has been added to the DOM.
     *
     * @method Phaser.Scale.ScaleManager#boot
     * @protected
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     */
    public function boot():Void;
    /**
     * Parses the game configuration to set-up the scale defaults.
     *
     * @method Phaser.Scale.ScaleManager#parseConfig
     * @protected
     * @since 3.16.0
     *
     * @param {GameConfig} config - The Game configuration object.
     */
    public function parseConfig(config:GameConfig):Void;
    /**
     * Determines the parent element of the game canvas, if any, based on the game configuration.
     *
     * @method Phaser.Scale.ScaleManager#getParent
     * @since 3.16.0
     *
     * @param {GameConfig} config - The Game configuration object.
     */
    public function getParent(config:GameConfig):Void;
    /**
     * Calculates the size of the parent bounds and updates the `parentSize` component, if the canvas has a dom parent.
     *
     * @method Phaser.Scale.ScaleManager#getParentBounds
     * @since 3.16.0
     *
     * @return {boolean} `true` if the parent bounds have changed size, otherwise `false`.
     */
    public function getParentBounds():Bool;
    /**
     * Attempts to lock the orientation of the web browser using the Screen Orientation API.
     *
     * This API is only available on modern mobile browsers.
     * See https://developer.mozilla.org/en-US/docs/Web/API/Screen/lockOrientation for details.
     *
     * @method Phaser.Scale.ScaleManager#lockOrientation
     * @since 3.16.0
     *
     * @param {string} orientation - The orientation you'd like to lock the browser in. Should be an API string such as 'landscape', 'landscape-primary', 'portrait', etc.
     *
     * @return {boolean} `true` if the orientation was successfully locked, otherwise `false`.
     */
    public function lockOrientation(orientation:String):Bool;
    /**
     * This method will set the size of the Parent Size component, which is used in scaling
     * and centering calculations. You only need to call this method if you have explicitly
     * disabled the use of a parent in your game config, but still wish to take advantage of
     * other Scale Manager features.
     *
     * @method Phaser.Scale.ScaleManager#setParentSize
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @param {number} width - The new width of the parent.
     * @param {number} height - The new height of the parent.
     *
     * @return {this} The Scale Manager instance.
     */
    public function setParentSize(width:Float, height:Float):Dynamic;
    /**
     * This method will set a new size for your game.
     *
     * @method Phaser.Scale.ScaleManager#setGameSize
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @param {number} width - The new width of the game.
     * @param {number} height - The new height of the game.
     *
     * @return {this} The Scale Manager instance.
     */
    public function setGameSize(width:Float, height:Float):Dynamic;
    /**
     * Call this to modify the size of the Phaser canvas element directly.
     * You should only use this if you are using the `NO_SCALE` scale mode,
     * it will update all internal components completely.
     *
     * If all you want to do is change the size of the parent, see the `setParentSize` method.
     *
     * If all you want is to change the base size of the game, but still have the Scale Manager
     * manage all the scaling, then see the `setGameSize` method.
     *
     * This method will set the `gameSize`, `baseSize` and `displaySize` components to the given
     * dimensions. It will then resize the canvas width and height to the values given, by
     * directly setting the properties. Finally, if you have set the Scale Manager zoom value
     * to anything other than 1 (the default), it will set the canvas CSS width and height to
     * be the given size multiplied by the zoom factor (the canvas pixel size remains untouched).
     *
     * If you have enabled `autoCenter`, it is then passed to the `updateCenter` method and
     * the margins are set, allowing the canvas to be centered based on its parent element
     * alone. Finally, the `displayScale` is adjusted and the RESIZE event dispatched.
     *
     * @method Phaser.Scale.ScaleManager#resize
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @param {number} width - The new width of the game.
     * @param {number} height - The new height of the game.
     *
     * @return {this} The Scale Manager instance.
     */
    public function resize(width:Float, height:Float):Dynamic;
    /**
     * Sets the zoom value of the Scale Manager.
     *
     * @method Phaser.Scale.ScaleManager#setZoom
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @param {integer} value - The new zoom value of the game.
     *
     * @return {this} The Scale Manager instance.
     */
    public function setZoom(value:Int):Dynamic;
    /**
     * Sets the zoom to be the maximum possible based on the _current_ parent size.
     *
     * @method Phaser.Scale.ScaleManager#setMaxZoom
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @return {this} The Scale Manager instance.
     */
    public function setMaxZoom():Dynamic;
    /**
     * Refreshes the internal scale values, bounds sizes and orientation checks.
     *
     * Once finished, dispatches the resize event.
     *
     * This is called automatically by the Scale Manager when the browser window size changes,
     * as long as it is using a Scale Mode other than 'NONE'.
     *
     * @method Phaser.Scale.ScaleManager#refresh
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @return {this} The Scale Manager instance.
     */
    public function refresh():Dynamic;
    /**
     * Internal method that checks the current screen orientation, only if the internal check flag is set.
     *
     * If the orientation has changed it updates the orientation property and then dispatches the orientation change event.
     *
     * @method Phaser.Scale.ScaleManager#updateOrientation
     * @fires Phaser.Scale.Events#ORIENTATION_CHANGE
     * @since 3.16.0
     */
    public function updateOrientation():Void;
    /**
     * Internal method that manages updating the size components based on the scale mode.
     *
     * @method Phaser.Scale.ScaleManager#updateScale
     * @since 3.16.0
     */
    public function updateScale():Void;
    /**
     * Calculates and returns the largest possible zoom factor, based on the current
     * parent and game sizes. If the parent has no dimensions (i.e. an unstyled div),
     * or is smaller than the un-zoomed game, then this will return a value of 1 (no zoom)
     *
     * @method Phaser.Scale.ScaleManager#getMaxZoom
     * @since 3.16.0
     *
     * @return {integer} The maximum possible zoom factor. At a minimum this value is always at least 1.
     */
    public function getMaxZoom():Int;
    /**
     * Calculates and updates the canvas CSS style in order to center it within the
     * bounds of its parent. If you have explicitly set parent to be `null` in your
     * game config then this method will likely give incorrect results unless you have called the
     * `setParentSize` method first.
     *
     * It works by modifying the canvas CSS `marginLeft` and `marginTop` properties.
     *
     * If they have already been set by your own style sheet, or code, this will overwrite them.
     *
     * To prevent the Scale Manager from centering the canvas, either do not set the
     * `autoCenter` property in your game config, or make sure it is set to `NO_CENTER`.
     *
     * @method Phaser.Scale.ScaleManager#updateCenter
     * @since 3.16.0
     */
    public function updateCenter():Void;
    /**
     * Updates the `canvasBounds` rectangle to match the bounding client rectangle of the
     * canvas element being used to track input events.
     *
     * @method Phaser.Scale.ScaleManager#updateBounds
     * @since 3.16.0
     */
    public function updateBounds():Void;
    /**
     * Transforms the pageX value into the scaled coordinate space of the Scale Manager.
     *
     * @method Phaser.Scale.ScaleManager#transformX
     * @since 3.16.0
     *
     * @param {number} pageX - The DOM pageX value.
     *
     * @return {number} The translated value.
     */
    public function transformX(pageX:Float):Float;
    /**
     * Transforms the pageY value into the scaled coordinate space of the Scale Manager.
     *
     * @method Phaser.Scale.ScaleManager#transformY
     * @since 3.16.0
     *
     * @param {number} pageY - The DOM pageY value.
     *
     * @return {number} The translated value.
     */
    public function transformY(pageY:Float):Float;
    /**
     * Sends a request to the browser to ask it to go in to full screen mode, using the {@link https://developer.mozilla.org/en-US/docs/Web/API/Fullscreen_API Fullscreen API}.
     *
     * If the browser does not support this, a `FULLSCREEN_UNSUPPORTED` event will be emitted.
     *
     * This method _must_ be called from a user-input gesture, such as `pointerdown`. You cannot launch
     * games fullscreen without this, as most browsers block it. Games within an iframe will also be blocked
     * from fullscreen unless the iframe has the `allowfullscreen` attribute.
     *
     * Performing an action that navigates to another page, or opens another tab, will automatically cancel
     * fullscreen mode, as will the user pressing the ESC key. To cancel fullscreen mode from your game, i.e.
     * from clicking an icon, call the `stopFullscreen` method.
     *
     * A browser can only send one DOM element into fullscreen. You can control which element this is by
     * setting the `fullscreenTarget` property in your game config, or changing the property in the Scale Manager.
     * Note that the game canvas _must_ be a child of the target. If you do not give a target, Phaser will
     * automatically create a blank `<div>` element and move the canvas into it, before going fullscreen.
     * When it leaves fullscreen, the div will be removed.
     *
     * @method Phaser.Scale.ScaleManager#startFullscreen
     * @fires Phaser.Scale.Events#ENTER_FULLSCREEN
     * @fires Phaser.Scale.Events#FULLSCREEN_UNSUPPORTED
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @param {object} [fullscreenOptions] - The FullscreenOptions dictionary is used to provide configuration options when entering full screen.
     */
    public function startFullscreen(?fullscreenOptions:Dynamic):Void;
    /**
     * An internal method that gets the target element that is used when entering fullscreen mode.
     *
     * @method Phaser.Scale.ScaleManager#getFullscreenTarget
     * @since 3.16.0
     *
     * @return {object} The fullscreen target element.
     */
    public function getFullscreenTarget():Dynamic;
    /**
     * Calling this method will cancel fullscreen mode, if the browser has entered it.
     *
     * @method Phaser.Scale.ScaleManager#stopFullscreen
     * @fires Phaser.Scale.Events#LEAVE_FULLSCREEN
     * @fires Phaser.Scale.Events#FULLSCREEN_UNSUPPORTED
     * @since 3.16.0
     */
    public function stopFullscreen():Void;
    /**
     * Toggles the fullscreen mode. If already in fullscreen, calling this will cancel it.
     * If not in fullscreen, this will request the browser to enter fullscreen mode.
     *
     * If the browser does not support this, a `FULLSCREEN_UNSUPPORTED` event will be emitted.
     *
     * This method _must_ be called from a user-input gesture, such as `pointerdown`. You cannot launch
     * games fullscreen without this, as most browsers block it. Games within an iframe will also be blocked
     * from fullscreen unless the iframe has the `allowfullscreen` attribute.
     *
     * @method Phaser.Scale.ScaleManager#toggleFullscreen
     * @fires Phaser.Scale.Events#ENTER_FULLSCREEN
     * @fires Phaser.Scale.Events#LEAVE_FULLSCREEN
     * @fires Phaser.Scale.Events#FULLSCREEN_UNSUPPORTED
     * @fires Phaser.Scale.Events#RESIZE
     * @since 3.16.0
     *
     * @param {object} [fullscreenOptions] - The FullscreenOptions dictionary is used to provide configuration options when entering full screen.
     */
    public function toggleFullscreen(?fullscreenOptions:Dynamic):Void;
    /**
     * An internal method that starts the different DOM event listeners running.
     *
     * @method Phaser.Scale.ScaleManager#startListeners
     * @since 3.16.0
     */
    public function startListeners():Void;
    /**
     * Triggered when a fullscreenchange event is dispatched by the DOM.
     *
     * @method Phaser.Scale.ScaleManager#onFullScreenChange
     * @since 3.16.0
     */
    public function onFullScreenChange():Void;
    /**
     * Triggered when a fullscreenerror event is dispatched by the DOM.
     *
     * @method Phaser.Scale.ScaleManager#onFullScreenError
     * @since 3.16.0
     */
    public function onFullScreenError():Void;
    /**
     * Internal method, called automatically by the game step.
     * Monitors the elapsed time and resize interval to see if a parent bounds check needs to take place.
     *
     * @method Phaser.Scale.ScaleManager#step
     * @since 3.16.0
     *
     * @param {number} time - The time value from the most recent Game step. Typically a high-resolution timer value, or Date.now().
     * @param {number} delta - The delta value since the last frame. This is smoothed to avoid delta spikes by the TimeStep class.
     */
    public function step(time:Float, delta:Float):Void;
    /**
     * Stops all DOM event listeners.
     *
     * @method Phaser.Scale.ScaleManager#stopListeners
     * @since 3.16.0
     */
    public function stopListeners():Void;
}
