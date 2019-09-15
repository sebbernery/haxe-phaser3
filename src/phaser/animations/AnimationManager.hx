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
     * The global time scale of the Animation Manager.
     *
     * This scales the time delta between two frames, thus influencing the speed of time for the Animation Manager.
     *
     * @name Phaser.Animations.AnimationManager#globalTimeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var globalTimeScale:Float;
    /**
     * The Animations registered in the Animation Manager.
     *
     * This map should be modified with the {@link #add} and {@link #create} methods of the Animation Manager.
     *
     * @name Phaser.Animations.AnimationManager#anims
     * @type {Phaser.Structs.Map.<string, Phaser.Animations.Animation>}
     * @protected
     * @since 3.0.0
     */
    public var anims:Dynamic;
    /**
     * Whether the Animation Manager is paused along with all of its Animations.
     *
     * @name Phaser.Animations.AnimationManager#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * The name of this Animation Manager.
     *
     * @name Phaser.Animations.AnimationManager#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * Registers event listeners after the Game boots.
     *
     * @method Phaser.Animations.AnimationManager#boot
     * @listens Phaser.Core.Events#DESTROY
     * @since 3.0.0
     */
    public function boot():Void;
    /**
     * Adds an existing Animation to the Animation Manager.
     *
     * @method Phaser.Animations.AnimationManager#add
     * @fires Phaser.Animations.Events#ADD_ANIMATION
     * @since 3.0.0
     *
     * @param {string} key - The key under which the Animation should be added. The Animation will be updated with it. Must be unique.
     * @param {Phaser.Animations.Animation} animation - The Animation which should be added to the Animation Manager.
     *
     * @return {Phaser.Animations.AnimationManager} This Animation Manager.
     */
    public function add(key:String, animation:phaser.animations.Animation):phaser.animations.AnimationManager;
    /**
     * Checks to see if the given key is already in use within the Animation Manager or not.
     *
     * Animations are global. Keys created in one scene can be used from any other Scene in your game. They are not Scene specific.
     *
     * @method Phaser.Animations.AnimationManager#exists
     * @since 3.16.0
     *
     * @param {string} key - The key of the Animation to check.
     *
     * @return {boolean} `true` if the Animation already exists in the Animation Manager, or `false` if the key is available.
     */
    public function exists(key:String):Bool;
    /**
     * Creates a new Animation and adds it to the Animation Manager.
     *
     * Animations are global. Once created, you can use them in any Scene in your game. They are not Scene specific.
     *
     * If an invalid key is given this method will return `false`.
     *
     * If you pass the key of an animation that already exists in the Animation Manager, that animation will be returned.
     *
     * A brand new animation is only created if the key is valid and not already in use.
     *
     * If you wish to re-use an existing key, call `AnimationManager.remove` first, then this method.
     *
     * @method Phaser.Animations.AnimationManager#create
     * @fires Phaser.Animations.Events#ADD_ANIMATION
     * @since 3.0.0
     *
     * @param {Phaser.Types.Animations.Animation} config - The configuration settings for the Animation.
     *
     * @return {(Phaser.Animations.Animation|false)} The Animation that was created, or `false` is the key is already in use.
     */
    public function create(config:phaser.types.animations.Animation):phaser.animations.Animation;
    /**
     * Loads this Animation Manager's Animations and settings from a JSON object.
     *
     * @method Phaser.Animations.AnimationManager#fromJSON
     * @since 3.0.0
     *
     * @param {(string|Phaser.Types.Animations.JSONAnimations|Phaser.Types.Animations.JSONAnimation)} data - The JSON object to parse.
     * @param {boolean} [clearCurrentAnimations=false] - If set to `true`, the current animations will be removed (`anims.clear()`). If set to `false` (default), the animations in `data` will be added.
     *
     * @return {Phaser.Animations.Animation[]} An array containing all of the Animation objects that were created as a result of this call.
     */
    public function fromJSON(data:Dynamic, ?clearCurrentAnimations:Bool):Array<phaser.animations.Animation>;
    /**
     * [description]
     *
     * @method Phaser.Animations.AnimationManager#generateFrameNames
     * @since 3.0.0
     *
     * @param {string} key - The key for the texture containing the animation frames.
     * @param {Phaser.Types.Animations.GenerateFrameNames} [config] - The configuration object for the animation frame names.
     *
     * @return {Phaser.Types.Animations.AnimationFrame[]} The array of {@link Phaser.Types.Animations.AnimationFrame} objects.
     */
    public function generateFrameNames(key:String, ?config:phaser.types.animations.GenerateFrameNames):Array<phaser.types.animations.AnimationFrame>;
    /**
     * Generate an array of {@link Phaser.Types.Animations.AnimationFrame} objects from a texture key and configuration object.
     *
     * Generates objects with numbered frame names, as configured by the given {@link Phaser.Types.Animations.GenerateFrameNumbers}.
     *
     * @method Phaser.Animations.AnimationManager#generateFrameNumbers
     * @since 3.0.0
     *
     * @param {string} key - The key for the texture containing the animation frames.
     * @param {Phaser.Types.Animations.GenerateFrameNumbers} config - The configuration object for the animation frames.
     *
     * @return {Phaser.Types.Animations.AnimationFrame[]} The array of {@link Phaser.Types.Animations.AnimationFrame} objects.
     */
    public function generateFrameNumbers(key:String, config:phaser.types.animations.GenerateFrameNumbers):Array<phaser.types.animations.AnimationFrame>;
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
     * @return {Phaser.GameObjects.GameObject} The Game Object with the animation loaded into it.
     */
    public function load(child:phaser.gameobjects.GameObject, key:String, ?startFrame:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Pause all animations.
     *
     * @method Phaser.Animations.AnimationManager#pauseAll
     * @fires Phaser.Animations.Events#PAUSE_ALL
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
     * @fires Phaser.Animations.Events#REMOVE_ANIMATION
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
     * @fires Phaser.Animations.Events#RESUME_ALL
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
     * Get the animation data as javascript object by giving key, or get the data of all animations as array of objects, if key wasn't provided.
     *
     * @method Phaser.Animations.AnimationManager#toJSON
     * @since 3.0.0
     *
     * @param {string} key - [description]
     *
     * @return {Phaser.Types.Animations.JSONAnimations} [description]
     */
    public function toJSON(key:String):phaser.types.animations.JSONAnimations;
}
