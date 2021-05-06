package phaser;

/**
 * @classdesc
 * A base Phaser.Scene class which can be extended for your own use.
 *
 * You can also define the optional methods {@link Phaser.Types.Scenes.SceneInitCallback init()}, {@link Phaser.Types.Scenes.ScenePreloadCallback preload()}, and {@link Phaser.Types.Scenes.SceneCreateCallback create()}.
 *
 * @class Scene
 * @memberof Phaser
 * @constructor
 * @since 3.0.0
 *
 * @param {(string|Phaser.Types.Scenes.SettingsConfig)} config - Scene specific configuration settings.
 */
@:native("Phaser.Scene")
extern class Scene {
    public function new(config:Dynamic);
    /**
     * The Scene Systems. You must never overwrite this property, or all hell will break lose.
     *
     * @name Phaser.Scene#sys
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var sys:phaser.scenes.Systems;
    /**
     * A reference to the Phaser.Game instance.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * A reference to the global Animation Manager.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#anims
     * @type {Phaser.Animations.AnimationManager}
     * @since 3.0.0
     */
    public var anims:phaser.animations.AnimationManager;
    /**
     * A reference to the global Cache.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#cache
     * @type {Phaser.Cache.CacheManager}
     * @since 3.0.0
     */
    public var cache:phaser.cache.CacheManager;
    /**
     * A reference to the global Data Manager.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#registry
     * @type {Phaser.Data.DataManager}
     * @since 3.0.0
     */
    public var registry:phaser.data.DataManager;
    /**
     * A reference to the Sound Manager.
     *
     * This property will only be available if defined in the Scene Injection Map and the plugin is installed.
     *
     * @name Phaser.Scene#sound
     * @type {(Phaser.Sound.NoAudioSoundManager|Phaser.Sound.HTML5AudioSoundManager|Phaser.Sound.WebAudioSoundManager)}
     * @since 3.0.0
     */
    public var sound:Dynamic;
    /**
     * A reference to the Texture Manager.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#textures
     * @type {Phaser.Textures.TextureManager}
     * @since 3.0.0
     */
    public var textures:phaser.textures.TextureManager;
    /**
     * A Scene specific Event Emitter.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#events
     * @type {Phaser.Events.EventEmitter}
     * @since 3.0.0
     */
    public var events:phaser.events.EventEmitter;
    /**
     * The Scene Camera Manager.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#cameras
     * @type {Phaser.Cameras.Scene2D.CameraManager}
     * @since 3.0.0
     */
    public var cameras:phaser.cameras.scene2d.CameraManager;
    /**
     * The Scene Game Object Factory.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#add
     * @type {Phaser.GameObjects.GameObjectFactory}
     * @since 3.0.0
     */
    public var add:phaser.gameobjects.GameObjectFactory;
    /**
     * The Scene Game Object Creator.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#make
     * @type {Phaser.GameObjects.GameObjectCreator}
     * @since 3.0.0
     */
    public var make:phaser.gameobjects.GameObjectCreator;
    /**
     * A reference to the Scene Manager Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#scene
     * @type {Phaser.Scenes.ScenePlugin}
     * @since 3.0.0
     */
    public var scene:phaser.scenes.ScenePlugin;
    /**
     * The Game Object Display List belonging to this Scene.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#children
     * @type {Phaser.GameObjects.DisplayList}
     * @since 3.0.0
     */
    public var children:phaser.gameobjects.DisplayList;
    /**
     * The Scene Lights Manager Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map and the plugin is installed.
     *
     * @name Phaser.Scene#lights
     * @type {Phaser.GameObjects.LightsManager}
     * @since 3.0.0
     */
    public var lights:phaser.gameobjects.LightsManager;
    /**
     * A Scene specific Data Manager Plugin.
     *
     * See the `registry` property for the global Data Manager.
     *
     * This property will only be available if defined in the Scene Injection Map and the plugin is installed.
     *
     * @name Phaser.Scene#data
     * @type {Phaser.Data.DataManager}
     * @since 3.0.0
     */
    public var data:phaser.data.DataManager;
    /**
     * The Scene Input Manager Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map and the plugin is installed.
     *
     * @name Phaser.Scene#input
     * @type {Phaser.Input.InputPlugin}
     * @since 3.0.0
     */
    public var input:phaser.input.InputPlugin;
    /**
     * The Scene Loader Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map and the plugin is installed.
     *
     * @name Phaser.Scene#load
     * @type {Phaser.Loader.LoaderPlugin}
     * @since 3.0.0
     */
    public var load:phaser.loader.LoaderPlugin;
    /**
     * The Scene Time and Clock Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map and the plugin is installed.
     *
     * @name Phaser.Scene#time
     * @type {Phaser.Time.Clock}
     * @since 3.0.0
     */
    public var time:phaser.time.Clock;
    /**
     * The Scene Tween Manager Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map and the plugin is installed.
     *
     * @name Phaser.Scene#tweens
     * @type {Phaser.Tweens.TweenManager}
     * @since 3.0.0
     */
    public var tweens:phaser.tweens.TweenManager;
    /**
     * The Scene Arcade Physics Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map, the plugin is installed and configured.
     *
     * @name Phaser.Scene#physics
     * @type {Phaser.Physics.Arcade.ArcadePhysics}
     * @since 3.0.0
     */
    public var physics:phaser.physics.arcade.ArcadePhysics;
    /**
     * The Scene Matter Physics Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map, the plugin is installed and configured.
     *
     * @name Phaser.Scene#matter
     * @type {Phaser.Physics.Matter.MatterPhysics}
     * @since 3.0.0
     */
    public var matter:phaser.physics.matter.MatterPhysics;
    /**
     * The Facebook Instant Games Plugin.
     *
     * This property will only be available if defined in the Scene Injection Map, the plugin is installed and configured.
     *
     * @name Phaser.Scene#facebook
     * @type {Phaser.FacebookInstantGamesPlugin}
     * @since 3.12.0
     */
    public var facebook:Dynamic;
    /**
     * A reference to the global Scale Manager.
     *
     * This property will only be available if defined in the Scene Injection Map.
     *
     * @name Phaser.Scene#scale
     * @type {Phaser.Scale.ScaleManager}
     * @since 3.16.2
     */
    public var scale:phaser.scale.ScaleManager;
    /**
     * A reference to the global Plugin Manager.
     *
     * The Plugin Manager is a global system that allows plugins to register themselves with it, and can then install
     * those plugins into Scenes as required.
     *
     * @name Phaser.Scene#plugins
     * @type {Phaser.Plugins.PluginManager}
     * @since 3.0.0
     */
    public var plugins:phaser.plugins.PluginManager;
    /**
     * A reference to the renderer instance Phaser is using, either Canvas Renderer or WebGL Renderer.
     *
     * @name Phaser.Scene#renderer
     * @type {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)}
     * @since 3.50.0
     */
    public var renderer:Dynamic;
    /**
     * This method should be overridden by your own Scenes.
     *
     * This method is called once per game step while the scene is running.
     *
     * @method Phaser.Scene#update
     * @since 3.0.0
     *
     * @param {number} time - The current time. Either a High Resolution Timer value if it comes from Request Animation Frame, or Date.now if using SetTimeout.
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(time:Float, delta:Float):Void;
}
