package phaser.animations;

/**
 * @classdesc
 * A Frame based Animation.
 *
 * This consists of a key, some default values (like the frame rate) and a bunch of Frame objects.
 *
 * The Animation Manager creates these. Game Objects don't own an instance of these directly.
 * Game Objects have the Animation Component, which are like playheads to global Animations (these objects)
 * So multiple Game Objects can have playheads all pointing to this one Animation instance.
 *
 * @class Animation
 * @memberof Phaser.Animations
 * @extends Phaser.Events.EventEmitter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Animations.AnimationManager} manager - A reference to the global Animation Manager
 * @param {string} key - The unique identifying string for this animation.
 * @param {Phaser.Types.Animations.Animation} config - The Animation configuration.
 */
@:native("Phaser.Animations.Animation")
extern class Animation extends phaser.events.EventEmitter {
    public function new(manager:phaser.animations.AnimationManager, key:String, config:phaser.types.animations.Animation);
    /**
     * A reference to the global Animation Manager.
     *
     * @name Phaser.Animations.Animation#manager
     * @type {Phaser.Animations.AnimationManager}
     * @since 3.0.0
     */
    public var manager:phaser.animations.AnimationManager;
    /**
     * The unique identifying string for this animation.
     *
     * @name Phaser.Animations.Animation#key
     * @type {string}
     * @since 3.0.0
     */
    public var key:String;
    /**
     * A frame based animation (as opposed to a bone based animation)
     *
     * @name Phaser.Animations.Animation#type
     * @type {string}
     * @default frame
     * @since 3.0.0
     */
    public var type:String;
    /**
     * Extract all the frame data into the frames array.
     *
     * @name Phaser.Animations.Animation#frames
     * @type {Phaser.Animations.AnimationFrame[]}
     * @since 3.0.0
     */
    public var frames:Array<phaser.animations.AnimationFrame>;
    /**
     * The frame rate of playback in frames per second (default 24 if duration is null)
     *
     * @name Phaser.Animations.Animation#frameRate
     * @type {integer}
     * @default 24
     * @since 3.0.0
     */
    public var frameRate:Int;
    /**
     * How long the animation should play for, in milliseconds.
     * If the `frameRate` property has been set then it overrides this value,
     * otherwise the `frameRate` is derived from `duration`.
     *
     * @name Phaser.Animations.Animation#duration
     * @type {integer}
     * @since 3.0.0
     */
    public var duration:Int;
    /**
     * How many ms per frame, not including frame specific modifiers.
     *
     * @name Phaser.Animations.Animation#msPerFrame
     * @type {integer}
     * @since 3.0.0
     */
    public var msPerFrame:Int;
    /**
     * Skip frames if the time lags, or always advanced anyway?
     *
     * @name Phaser.Animations.Animation#skipMissedFrames
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var skipMissedFrames:Bool;
    /**
     * The delay in ms before the playback will begin.
     *
     * @name Phaser.Animations.Animation#delay
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var delay:Int;
    /**
     * Number of times to repeat the animation. Set to -1 to repeat forever.
     *
     * @name Phaser.Animations.Animation#repeat
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var repeat:Int;
    /**
     * The delay in ms before the a repeat play starts.
     *
     * @name Phaser.Animations.Animation#repeatDelay
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var repeatDelay:Int;
    /**
     * Should the animation yoyo (reverse back down to the start) before repeating?
     *
     * @name Phaser.Animations.Animation#yoyo
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var yoyo:Bool;
    /**
     * Should the GameObject's `visible` property be set to `true` when the animation starts to play?
     *
     * @name Phaser.Animations.Animation#showOnStart
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var showOnStart:Bool;
    /**
     * Should the GameObject's `visible` property be set to `false` when the animation finishes?
     *
     * @name Phaser.Animations.Animation#hideOnComplete
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var hideOnComplete:Bool;
    /**
     * Global pause. All Game Objects using this Animation instance are impacted by this property.
     *
     * @name Phaser.Animations.Animation#paused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var paused:Bool;
    /**
     * Add frames to the end of the animation.
     *
     * @method Phaser.Animations.Animation#addFrame
     * @since 3.0.0
     *
     * @param {(string|Phaser.Types.Animations.AnimationFrame[])} config - [description]
     *
     * @return {Phaser.Animations.Animation} This Animation object.
     */
    public function addFrame(config:Dynamic):phaser.animations.Animation;
    /**
     * Add frame/s into the animation.
     *
     * @method Phaser.Animations.Animation#addFrameAt
     * @since 3.0.0
     *
     * @param {integer} index - The index to insert the frame at within the animation.
     * @param {(string|Phaser.Types.Animations.AnimationFrame[])} config - [description]
     *
     * @return {Phaser.Animations.Animation} This Animation object.
     */
    public function addFrameAt(index:Int, config:Dynamic):phaser.animations.Animation;
    /**
     * Check if the given frame index is valid.
     *
     * @method Phaser.Animations.Animation#checkFrame
     * @since 3.0.0
     *
     * @param {integer} index - The index to be checked.
     *
     * @return {boolean} `true` if the index is valid, otherwise `false`.
     */
    public function checkFrame(index:Int):Bool;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#completeAnimation
     * @protected
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.Animation} component - [description]
     */
    public function completeAnimation(component:phaser.gameobjects.components.Animation):Void;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#getFirstTick
     * @protected
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.Animation} component - [description]
     * @param {boolean} [includeDelay=true] - [description]
     */
    public function getFirstTick(component:phaser.gameobjects.components.Animation, ?includeDelay:Bool):Void;
    /**
     * Returns the AnimationFrame at the provided index
     *
     * @method Phaser.Animations.Animation#getFrameAt
     * @protected
     * @since 3.0.0
     *
     * @param {integer} index - The index in the AnimationFrame array
     *
     * @return {Phaser.Animations.AnimationFrame} The frame at the index provided from the animation sequence
     */
    public function getFrameAt(index:Int):phaser.animations.AnimationFrame;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#getFrames
     * @since 3.0.0
     *
     * @param {Phaser.Textures.TextureManager} textureManager - [description]
     * @param {(string|Phaser.Types.Animations.AnimationFrame[])} frames - [description]
     * @param {string} [defaultTextureKey] - [description]
     *
     * @return {Phaser.Animations.AnimationFrame[]} [description]
     */
    public function getFrames(textureManager:phaser.textures.TextureManager, frames:Dynamic, ?defaultTextureKey:String):Array<phaser.animations.AnimationFrame>;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#getNextTick
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.Animation} component - [description]
     */
    public function getNextTick(component:phaser.gameobjects.components.Animation):Void;
    /**
     * Returns the frame closest to the given progress value between 0 and 1.
     *
     * @method Phaser.Animations.Animation#getFrameByProgress
     * @since 3.4.0
     *
     * @param {number} value - A value between 0 and 1.
     *
     * @return {Phaser.Animations.AnimationFrame} The frame closest to the given progress value.
     */
    public function getFrameByProgress(value:Float):phaser.animations.AnimationFrame;
    /**
     * Advance the animation frame.
     *
     * @method Phaser.Animations.Animation#nextFrame
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.Animation} component - The Animation Component to advance.
     */
    public function nextFrame(component:phaser.gameobjects.components.Animation):Void;
    /**
     * Returns the animation last frame.
     *
     * @method Phaser.Animations.Animation#getLastFrame
     * @since 3.12.0
     *
     * @return {Phaser.Animations.AnimationFrame} component - The Animation Last Frame.
     */
    public function getLastFrame():phaser.animations.AnimationFrame;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#previousFrame
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.Animation} component - [description]
     */
    public function previousFrame(component:phaser.gameobjects.components.Animation):Void;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#removeFrame
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationFrame} frame - [description]
     *
     * @return {Phaser.Animations.Animation} This Animation object.
     */
    public function removeFrame(frame:phaser.animations.AnimationFrame):phaser.animations.Animation;
    /**
     * Removes a frame from the AnimationFrame array at the provided index
     * and updates the animation accordingly.
     *
     * @method Phaser.Animations.Animation#removeFrameAt
     * @since 3.0.0
     *
     * @param {integer} index - The index in the AnimationFrame array
     *
     * @return {Phaser.Animations.Animation} This Animation object.
     */
    public function removeFrameAt(index:Int):phaser.animations.Animation;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#repeatAnimation
     * @fires Phaser.Animations.Events#ANIMATION_REPEAT
     * @fires Phaser.Animations.Events#SPRITE_ANIMATION_REPEAT
     * @fires Phaser.Animations.Events#SPRITE_ANIMATION_KEY_REPEAT
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.Animation} component - [description]
     */
    public function repeatAnimation(component:phaser.gameobjects.components.Animation):Void;
    /**
     * Sets the texture frame the animation uses for rendering.
     *
     * @method Phaser.Animations.Animation#setFrame
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Components.Animation} component - [description]
     */
    public function setFrame(component:phaser.gameobjects.components.Animation):Void;
    /**
     * Converts the animation data to JSON.
     *
     * @method Phaser.Animations.Animation#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Animations.JSONAnimation} [description]
     */
    public function toJSON():phaser.types.animations.JSONAnimation;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#updateFrameSequence
     * @since 3.0.0
     *
     * @return {Phaser.Animations.Animation} This Animation object.
     */
    public function updateFrameSequence():phaser.animations.Animation;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#pause
     * @since 3.0.0
     *
     * @return {Phaser.Animations.Animation} This Animation object.
     */
    public function pause():phaser.animations.Animation;
    /**
     * [description]
     *
     * @method Phaser.Animations.Animation#resume
     * @since 3.0.0
     *
     * @return {Phaser.Animations.Animation} This Animation object.
     */
    public function resume():phaser.animations.Animation;
}
