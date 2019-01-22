package phaser.animations;

/**
 * @classdesc
 * The Animation Manager.
 *
 * Animations are managed by the global Animation Manager. This is a singleton class that is
 * responsible for creating and delivering animations and their corresponding data to all Game Objects.
 * Unlike plugins it is owned by the Game instance, not the Scene.
 *
 * Sprites and other Game Objects get the data they need from the AnimationManager.
 *
 * @class AnimationManager
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Animations
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - A reference to the Phaser.Game instance.
 */
@:native("Phaser.Animations.AnimationManager")
extern class AnimationManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    /**
     * A reference to the Phaser.Game instance.
     *
     * @name Phaser.Animations.AnimationManager#game
     * @type {Phaser.Game}
     * @protected
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * A reference to the Texture Manager.
     *
     * @name Phaser.Animations.AnimationManager#textureManager
     * @type {Phaser.Textures.TextureManager}
     * @protected
     * @since 3.0.0
     */
    public var textureManager:phaser.textures.TextureManager;
    /**
     * [description]
     *
     * @name Phaser.Animations.AnimationManager#globalTimeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var globalTimeScale:Float;
    /**
     * [description]
     *
     * @name Phaser.Animations.AnimationManager#anims
     * @type {Phaser.Structs.Map.<string, Phaser.Animations.Animation>}
     * @protected
     * @since 3.0.0
     */
    public var anims:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Animations.AnimationManager#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * [description]
     *
     * @name Phaser.Animations.AnimationManager#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * [description]
     *
     * @method Phaser.Animations.AnimationManager#boot
     * @since 3.0.0
     */
    public function boot():Void;
    /**
     * [description]
     *
     * @method Phaser.Animations.AnimationManager#add
     * @fires AddAnimationEvent
     * @since 3.0.0
     *
     * @param {string} key - [description]
     * @param {Phaser.Animations.Animation} animation - [description]
     *
     * @return {Phaser.Animations.AnimationManager} This Animation Manager.
     */
    public function add(key:String, animation:phaser.animations.Animation):phaser.animations.AnimationManager;
    /**
     * [description]
     *
     * @method Phaser.Animations.AnimationManager#create
     * @fires AddAnimationEvent
     * @since 3.0.0
     *
     * @param {AnimationConfig} config - [description]
     *
     * @return {Phaser.Animations.Animation} The Animation that was created.
     */
    public function create(config:AnimationConfig):phaser.animations.Animation;
    /**
     * [description]
     *
     * @method Phaser.Animations.AnimationManager#fromJSON
     * @since 3.0.0
     *
     * @param {(string|JSONAnimationManager|JSONAnimation)} data - [description]
     * @param {boolean} [clearCurrentAnimations=false] - If set to `true`, the current animations will be removed (`anims.clear()`). If set to `false` (default), the animations in `data` will be added.
     *
     * @return {Phaser.Animations.Animation[]} An array containing all of the Animation objects that were created as a result of this call.
     */
    public function fromJSON(data:Dynamic, ?clearCurrentAnimations:Bool):Array<phaser.animations.Animation>;
    /**
     * Generate an array of {@link AnimationFrameConfig} objects from a texture key and configuration object.
     *
     * Generates objects with string frame names, as configured by the given {@link AnimationFrameConfig}.
     *
     * @method Phaser.Animations.AnimationManager#generateFrameNames
     * @since 3.0.0
     *
     * @param {string} key - The key for the texture containing the animation frames.
     * @param {GenerateFrameNamesConfig} [config] - The configuration object for the animation frame names.
     *
     * @return {AnimationFrameConfig[]} The array of {@link AnimationFrameConfig} objects.
     */
    public function generateFrameNames(key:String, ?config:GenerateFrameNamesConfig):Array<AnimationFrameConfig>;
    /**
     * Generate an array of {@link AnimationFrameConfig} objects from a texture key and configuration object.
     *
     * Generates objects with numbered frame names, as configured by the given {@link GenerateFrameNumbersConfig}.
     *
     * @method Phaser.Animations.AnimationManager#generateFrameNumbers
     * @since 3.0.0
     *
     * @param {string} key - The key for the texture containing the animation frames.
     * @param {GenerateFrameNumbersConfig} config - The configuration object for the animation frames.
     *
     * @return {AnimationFrameConfig[]} The array of {@link AnimationFrameConfig} objects.
     */
    public function generateFrameNumbers(key:String, config:GenerateFrameNumbersConfig):Array<AnimationFrameConfig>;
    /**
     * Get an Animation.
     *
     * @method Phaser.Animations.AnimationManager#get
     * @since 3.0.0
     *
     * @param {string} key - The key of the Animation to retrieve.
     *
     * @return {Phaser.Animations.Animation} The Animation.
     */
    public function get(key:String):phaser.animations.Animation;
    /**
     * Load an Animation into a Game Object's Animation Component.
     *
     * @method Phaser.Animations.AnimationManager#load
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object to load the animation into.
     * @param {string} key - The key of the animation to load.
     * @param {(string|integer)} [startFrame] - The name of a start frame to set on the loaded animation.
     *
     * @return {Phaser.GameObjects.GameObject} [description]
     */
    public function load(child:phaser.gameobjects.GameObject, key:String, ?startFrame:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Pause all animations.
     *
     * @method Phaser.Animations.AnimationManager#pauseAll
     * @fires PauseAllAnimationEvent
     * @since 3.0.0
     *
     * @return {Phaser.Animations.AnimationManager} This Animation Manager.
     */
    public function pauseAll():phaser.animations.AnimationManager;
    /**
     * Play an animation on the given Game Objects that have an Animation Component.
     *
     * @method Phaser.Animations.AnimationManager#play
     * @since 3.0.0
     *
     * @param {string} key - The key of the animation to play on the Game Object.
     * @param {Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]} child - The Game Objects to play the animation on.
     *
     * @return {Phaser.Animations.AnimationManager} This Animation Manager.
     */
    public function play(key:String, child:Dynamic):phaser.animations.AnimationManager;
    /**
     * Remove an animation.
     *
     * @method Phaser.Animations.AnimationManager#remove
     * @fires RemoveAnimationEvent
     * @since 3.0.0
     *
     * @param {string} key - The key of the animation to remove.
     *
     * @return {Phaser.Animations.Animation} [description]
     */
    public function remove(key:String):phaser.animations.Animation;
    /**
     * Resume all paused animations.
     *
     * @method Phaser.Animations.AnimationManager#resumeAll
     * @fires ResumeAllAnimationEvent
     * @since 3.0.0
     *
     * @return {Phaser.Animations.AnimationManager} This Animation Manager.
     */
    public function resumeAll():phaser.animations.AnimationManager;
    /**
     * Takes an array of Game Objects that have an Animation Component and then
     * starts the given animation playing on them, each one offset by the
     * `stagger` amount given to this method.
     *
     * @method Phaser.Animations.AnimationManager#staggerPlay
     * @since 3.0.0
     *
     * @generic {Phaser.GameObjects.GameObject[]} G - [items,$return]
     *
     * @param {string} key - The key of the animation to play on the Game Objects.
     * @param {Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]} children - An array of Game Objects to play the animation on. They must have an Animation Component.
     * @param {number} [stagger=0] - The amount of time, in milliseconds, to offset each play time by.
     *
     * @return {Phaser.Animations.AnimationManager} This Animation Manager.
     */
    public function staggerPlay(key:String, children:Dynamic, ?stagger:Float):phaser.animations.AnimationManager;
    /**
     * [description]
     *
     * @method Phaser.Animations.AnimationManager#toJSON
     * @since 3.0.0
     *
     * @param {string} key - [description]
     *
     * @return {JSONAnimationManager} [description]
     */
    public function toJSON(key:String):JSONAnimationManager;
}
