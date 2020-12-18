package phaser.scenes;

/**
 * @classdesc
 * The Scene Systems class.
 *
 * This class is available from within a Scene under the property `sys`.
 * It is responsible for managing all of the plugins a Scene has running, including the display list, and
 * handling the update step and renderer. It also contains references to global systems belonging to Game.
 *
 * @class Systems
 * @memberof Phaser.Scenes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene that owns this Systems instance.
 * @param {(string|Phaser.Types.Scenes.SettingsConfig)} config - Scene specific configuration settings.
 */
@:native("Phaser.Scenes.Systems")
extern class Systems {
    public function new(scene:phaser.Scene, config:Dynamic);
    /**
     * A reference to the Scene that these Systems belong to.
     *
     * @name Phaser.Scenes.Systems#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Phaser Game instance.
     *
     * @name Phaser.Scenes.Systems#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * A reference to either the Canvas or WebGL Renderer that this Game is using.
     *
     * @name Phaser.Scenes.Systems#renderer
     * @type {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)}
     * @since 3.17.0
     */
    public var renderer:Dynamic;
    /**
     * The Facebook Instant Games Plugin.
     *
     * @name Phaser.Scenes.Systems#facebook
     * @type {Phaser.FacebookInstantGamesPlugin}
     * @since 3.12.0
     */
    public var facebook:Dynamic;
    /**
     * The Scene Configuration object, as passed in when creating the Scene.
     *
     * @name Phaser.Scenes.Systems#config
     * @type {(string|Phaser.Types.Scenes.SettingsConfig)}
     * @since 3.0.0
     */
    public var config:Dynamic;
    /**
     * The Scene Settings. This is the parsed output based on the Scene configuration.
     *
     * @name Phaser.Scenes.Systems#settings
     * @type {Phaser.Types.Scenes.SettingsObject}
     * @since 3.0.0
     */
    public var settings:phaser.types.scenes.SettingsObject;
    /**
     * A handy reference to the Scene canvas / context.
     *
     * @name Phaser.Scenes.Systems#canvas
     * @type {HTMLCanvasElement}
     * @since 3.0.0
     */
    public var canvas:js.html.CanvasElement;
    /**
     * A reference to the Canvas Rendering Context being used by the renderer.
     *
     * @name Phaser.Scenes.Systems#context
     * @type {CanvasRenderingContext2D}
     * @since 3.0.0
     */
    public var context:js.html.CanvasRenderingContext2D;
    /**
     * A reference to the global Animations Manager.
     *
     * In the default set-up you can access this from within a Scene via the `this.anims` property.
     *
     * @name Phaser.Scenes.Systems#anims
     * @type {Phaser.Animations.AnimationManager}
     * @since 3.0.0
     */
    public var anims:phaser.animations.AnimationManager;
    /**
     * A reference to the global Cache. The Cache stores all files bought in to Phaser via
     * the Loader, with the exception of images. Images are stored in the Texture Manager.
     *
     * In the default set-up you can access this from within a Scene via the `this.cache` property.
     *
     * @name Phaser.Scenes.Systems#cache
     * @type {Phaser.Cache.CacheManager}
     * @since 3.0.0
     */
    public var cache:phaser.cache.CacheManager;
    /**
     * A reference to the global Plugins Manager.
     *
     * In the default set-up you can access this from within a Scene via the `this.plugins` property.
     *
     * @name Phaser.Scenes.Systems#plugins
     * @type {Phaser.Plugins.PluginManager}
     * @since 3.0.0
     */
    public var plugins:phaser.plugins.PluginManager;
    /**
     * A reference to the global registry. This is a game-wide instance of the Data Manager, allowing
     * you to exchange data between Scenes via a universal and shared point.
     *
     * In the default set-up you can access this from within a Scene via the `this.registry` property.
     *
     * @name Phaser.Scenes.Systems#registry
     * @type {Phaser.Data.DataManager}
     * @since 3.0.0
     */
    public var registry:phaser.data.DataManager;
    /**
     * A reference to the global Scale Manager.
     *
     * In the default set-up you can access this from within a Scene via the `this.scale` property.
     *
     * @name Phaser.Scenes.Systems#scale
     * @type {Phaser.Scale.ScaleManager}
     * @since 3.15.0
     */
    public var scale:phaser.scale.ScaleManager;
    /**
     * A reference to the global Sound Manager.
     *
     * In the default set-up you can access this from within a Scene via the `this.sound` property.
     *
     * @name Phaser.Scenes.Systems#sound
     * @type {(Phaser.Sound.NoAudioSoundManager|Phaser.Sound.HTML5AudioSoundManager|Phaser.Sound.WebAudioSoundManager)}
     * @since 3.0.0
     */
    public var sound:Dynamic;
    /**
     * A reference to the global Texture Manager.
     *
     * In the default set-up you can access this from within a Scene via the `this.textures` property.
     *
     * @name Phaser.Scenes.Systems#textures
     * @type {Phaser.Textures.TextureManager}
     * @since 3.0.0
     */
    public var textures:phaser.textures.TextureManager;
    /**
     * A reference to the Scene's Game Object Factory.
     *
     * Use this to quickly and easily create new Game Object's.
     *
     * In the default set-up you can access this from within a Scene via the `this.add` property.
     *
     * @name Phaser.Scenes.Systems#add
     * @type {Phaser.GameObjects.GameObjectFactory}
     * @since 3.0.0
     */
    public var add:phaser.gameobjects.GameObjectFactory;
    /**
     * A reference to the Scene's Camera Manager.
     *
     * Use this to manipulate and create Cameras for this specific Scene.
     *
     * In the default set-up you can access this from within a Scene via the `this.cameras` property.
     *
     * @name Phaser.Scenes.Systems#cameras
     * @type {Phaser.Cameras.Scene2D.CameraManager}
     * @since 3.0.0
     */
    public var cameras:phaser.cameras.scene2d.CameraManager;
    /**
     * A reference to the Scene's Display List.
     *
     * Use this to organize the children contained in the display list.
     *
     * In the default set-up you can access this from within a Scene via the `this.children` property.
     *
     * @name Phaser.Scenes.Systems#displayList
     * @type {Phaser.GameObjects.DisplayList}
     * @since 3.0.0
     */
    public var displayList:phaser.gameobjects.DisplayList;
    /**
     * A reference to the Scene's Event Manager.
     *
     * Use this to listen for Scene specific events, such as `pause` and `shutdown`.
     *
     * In the default set-up you can access this from within a Scene via the `this.events` property.
     *
     * @name Phaser.Scenes.Systems#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.0.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * A reference to the Scene's Game Object Creator.
     *
     * Use this to quickly and easily create new Game Object's. The difference between this and the
     * Game Object Factory, is that the Creator just creates and returns Game Object instances, it
     * doesn't then add them to the Display List or Update List.
     *
     * In the default set-up you can access this from within a Scene via the `this.make` property.
     *
     * @name Phaser.Scenes.Systems#make
     * @type {Phaser.GameObjects.GameObjectCreator}
     * @since 3.0.0
     */
    public var make:phaser.gameobjects.GameObjectCreator;
    /**
     * A reference to the Scene Manager Plugin.
     *
     * Use this to manipulate both this and other Scene's in your game, for example to launch a parallel Scene,
     * or pause or resume a Scene, or switch from this Scene to another.
     *
     * In the default set-up you can access this from within a Scene via the `this.scene` property.
     *
     * @name Phaser.Scenes.Systems#scenePlugin
     * @type {Phaser.Scenes.ScenePlugin}
     * @since 3.0.0
     */
    public var scenePlugin:phaser.scenes.ScenePlugin;
    /**
     * A reference to the Scene's Update List.
     *
     * Use this to organize the children contained in the update list.
     *
     * The Update List is responsible for managing children that need their `preUpdate` methods called,
     * in order to process so internal components, such as Sprites with Animations.
     *
     * In the default set-up there is no reference to this from within the Scene itself.
     *
     * @name Phaser.Scenes.Systems#updateList
     * @type {Phaser.GameObjects.UpdateList}
     * @since 3.0.0
     */
    public var updateList:phaser.gameobjects.UpdateList;
    /**
     * This method is called only once by the Scene Manager when the Scene is instantiated.
     * It is responsible for setting up all of the Scene plugins and references.
     * It should never be called directly.
     *
     * @method Phaser.Scenes.Systems#init
     * @protected
     * @fires Phaser.Scenes.Events#BOOT
     * @since 3.0.0
     *
     * @param {Phaser.Game} game - A reference to the Phaser Game instance.
     */
    public function init(game:phaser.Game):Void;
    /**
     * A single game step. Called automatically by the Scene Manager as a result of a Request Animation
     * Frame or Set Timeout call to the main Game instance.
     *
     * @method Phaser.Scenes.Systems#step
     * @fires Phaser.Scenes.Events#PRE_UPDATE
     * @fires Phaser.Scenes.Events#UPDATE
     * @fires Phaser.Scenes.Events#POST_UPDATE
     * @since 3.0.0
     *
     * @param {number} time - The time value from the most recent Game step. Typically a high-resolution timer value, or Date.now().
     * @param {number} delta - The delta value since the last frame. This is smoothed to avoid delta spikes by the TimeStep class.
     */
    public function step(time:Float, delta:Float):Void;
    /**
     * Called automatically by the Scene Manager.
     * Instructs the Scene to render itself via its Camera Manager to the renderer given.
     *
     * @method Phaser.Scenes.Systems#render
     * @fires Phaser.Scenes.Events#RENDER
     * @since 3.0.0
     *
     * @param {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)} renderer - The renderer that invoked the render call.
     */
    public function render(renderer:Dynamic):Void;
    /**
     * Force a sort of the display list on the next render.
     *
     * @method Phaser.Scenes.Systems#queueDepthSort
     * @since 3.0.0
     */
    public function queueDepthSort():Void;
    /**
     * Immediately sorts the display list if the flag is set.
     *
     * @method Phaser.Scenes.Systems#depthSort
     * @since 3.0.0
     */
    public function depthSort():Void;
    /**
     * Pause this Scene.
     * A paused Scene still renders, it just doesn't run ANY of its update handlers or systems.
     *
     * @method Phaser.Scenes.Systems#pause
     * @fires Phaser.Scenes.Events#PAUSE
     * @since 3.0.0
     *
     * @param {object} [data] - A data object that will be passed in the 'pause' event.
     *
     * @return {Phaser.Scenes.Systems} This Systems object.
     */
    public function pause(?data:Dynamic):phaser.scenes.Systems;
    /**
     * Resume this Scene from a paused state.
     *
     * @method Phaser.Scenes.Systems#resume
     * @fires Phaser.Scenes.Events#RESUME
     * @since 3.0.0
     *
     * @param {object} [data] - A data object that will be passed in the 'resume' event.
     *
     * @return {Phaser.Scenes.Systems} This Systems object.
     */
    public function resume(?data:Dynamic):phaser.scenes.Systems;
    /**
     * Send this Scene to sleep.
     *
     * A sleeping Scene doesn't run its update step or render anything, but it also isn't shut down
     * or has any of its systems or children removed, meaning it can be re-activated at any point and
     * will carry on from where it left off. It also keeps everything in memory and events and callbacks
     * from other Scenes may still invoke changes within it, so be careful what is left active.
     *
     * @method Phaser.Scenes.Systems#sleep
     * @fires Phaser.Scenes.Events#SLEEP
     * @since 3.0.0
     *
     * @param {object} [data] - A data object that will be passed in the 'sleep' event.
     *
     * @return {Phaser.Scenes.Systems} This Systems object.
     */
    public function sleep(?data:Dynamic):phaser.scenes.Systems;
    /**
     * Wake-up this Scene if it was previously asleep.
     *
     * @method Phaser.Scenes.Systems#wake
     * @fires Phaser.Scenes.Events#WAKE
     * @since 3.0.0
     *
     * @param {object} [data] - A data object that will be passed in the 'wake' event.
     *
     * @return {Phaser.Scenes.Systems} This Systems object.
     */
    public function wake(?data:Dynamic):phaser.scenes.Systems;
    /**
     * Returns any data that was sent to this Scene by another Scene.
     *
     * The data is also passed to `Scene.init` and in various Scene events, but
     * you can access it at any point via this method.
     *
     * @method Phaser.Scenes.Systems#getData
     * @since 3.22.0
     *
     * @return {any}
     */
    public function getData():Dynamic;
    /**
     * Is this Scene sleeping?
     *
     * @method Phaser.Scenes.Systems#isSleeping
     * @since 3.0.0
     *
     * @return {boolean} `true` if this Scene is asleep, otherwise `false`.
     */
    public function isSleeping():Bool;
    /**
     * Is this Scene running?
     *
     * @method Phaser.Scenes.Systems#isActive
     * @since 3.0.0
     *
     * @return {boolean} `true` if this Scene is running, otherwise `false`.
     */
    public function isActive():Bool;
    /**
     * Is this Scene paused?
     *
     * @method Phaser.Scenes.Systems#isPaused
     * @since 3.13.0
     *
     * @return {boolean} `true` if this Scene is paused, otherwise `false`.
     */
    public function isPaused():Bool;
    /**
     * Is this Scene currently transitioning out to, or in from another Scene?
     *
     * @method Phaser.Scenes.Systems#isTransitioning
     * @since 3.5.0
     *
     * @return {boolean} `true` if this Scene is currently transitioning, otherwise `false`.
     */
    public function isTransitioning():Bool;
    /**
     * Is this Scene currently transitioning out from itself to another Scene?
     *
     * @method Phaser.Scenes.Systems#isTransitionOut
     * @since 3.5.0
     *
     * @return {boolean} `true` if this Scene is in transition to another Scene, otherwise `false`.
     */
    public function isTransitionOut():Bool;
    /**
     * Is this Scene currently transitioning in from another Scene?
     *
     * @method Phaser.Scenes.Systems#isTransitionIn
     * @since 3.5.0
     *
     * @return {boolean} `true` if this Scene is transitioning in from another Scene, otherwise `false`.
     */
    public function isTransitionIn():Bool;
    /**
     * Is this Scene visible and rendering?
     *
     * @method Phaser.Scenes.Systems#isVisible
     * @since 3.0.0
     *
     * @return {boolean} `true` if this Scene is visible, otherwise `false`.
     */
    public function isVisible():Bool;
    /**
     * Sets the visible state of this Scene.
     * An invisible Scene will not render, but will still process updates.
     *
     * @method Phaser.Scenes.Systems#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - `true` to render this Scene, otherwise `false`.
     *
     * @return {Phaser.Scenes.Systems} This Systems object.
     */
    public function setVisible(value:Bool):phaser.scenes.Systems;
    /**
     * Set the active state of this Scene.
     *
     * An active Scene will run its core update loop.
     *
     * @method Phaser.Scenes.Systems#setActive
     * @since 3.0.0
     *
     * @param {boolean} value - If `true` the Scene will be resumed, if previously paused. If `false` it will be paused.
     * @param {object} [data] - A data object that will be passed in the 'resume' or 'pause' events.
     *
     * @return {Phaser.Scenes.Systems} This Systems object.
     */
    public function setActive(value:Bool, ?data:Dynamic):phaser.scenes.Systems;
    /**
     * Start this Scene running and rendering.
     * Called automatically by the SceneManager.
     *
     * @method Phaser.Scenes.Systems#start
     * @fires Phaser.Scenes.Events#START
     * @fires Phaser.Scenes.Events#READY
     * @since 3.0.0
     *
     * @param {object} data - Optional data object that may have been passed to this Scene from another.
     */
    public function start(data:Dynamic):Void;
    /**
     * Shutdown this Scene and send a shutdown event to all of its systems.
     * A Scene that has been shutdown will not run its update loop or render, but it does
     * not destroy any of its plugins or references. It is put into hibernation for later use.
     * If you don't ever plan to use this Scene again, then it should be destroyed instead
     * to free-up resources.
     *
     * @method Phaser.Scenes.Systems#shutdown
     * @fires Phaser.Scenes.Events#SHUTDOWN
     * @since 3.0.0
     *
     * @param {object} [data] - A data object that will be passed in the 'shutdown' event.
     */
    public function shutdown(?data:Dynamic):Void;
}
