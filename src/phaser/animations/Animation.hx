package phaser.animations;

/**
 * @classdesc
 * A Frame based Animation.
 *
 * Animations in Phaser consist of a sequence of `AnimationFrame` objects, which are managed by
 * this class, along with properties that impact playback, such as the animations frame rate
 * or delay.
 *
 * This class contains all of the properties and methods needed to handle playback of the animation
 * directly to an `AnimationState` instance, which is owned by a Sprite, or similar Game Object.
 *
 * You don't typically create an instance of this class directly, but instead go via
 * either the `AnimationManager` or the `AnimationState` and use their `create` methods,
 * depending on if you need a global animation, or local to a specific Sprite.
 *
 * @class Animation
 * @memberof Phaser.Animations
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Animations.AnimationManager} manager - A reference to the global Animation Manager
 * @param {string} key - The unique identifying string for this animation.
 * @param {Phaser.Types.Animations.Animation} config - The Animation configuration.
 */
@:native("Phaser.Animations.Animation")
extern class Animation {
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
     * @type {number}
     * @default 24
     * @since 3.0.0
     */
    public var frameRate:Float;
    /**
     * How long the animation should play for, in milliseconds.
     * If the `frameRate` property has been set then it overrides this value,
     * otherwise the `frameRate` is derived from `duration`.
     *
     * @name Phaser.Animations.Animation#duration
     * @type {number}
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * How many ms per frame, not including frame specific modifiers.
     *
     * @name Phaser.Animations.Animation#msPerFrame
     * @type {number}
     * @since 3.0.0
     */
    public var msPerFrame:Float;
    /**
     * Skip frames if the time lags, or always advanced anyway?
     *
     * @name Phaser.Animations.Animation#skipMissedFrames
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var skipMissedFrames:Bool;
    /**
     * The delay in ms before the playback will begin.
     *
     * @name Phaser.Animations.Animation#delay
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var delay:Float;
    /**
     * Number of times to repeat the animation. Set to -1 to repeat forever.
     *
     * @name Phaser.Animations.Animation#repeat
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var repeat:Float;
    /**
     * The delay in ms before the a repeat play starts.
     *
     * @name Phaser.Animations.Animation#repeatDelay
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var repeatDelay:Float;
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
     * Gets the total number of frames in this animation.
     *
     * @method Phaser.Animations.Animation#getTotalFrames
     * @since 3.50.0
     *
     * @return {number} The total number of frames in this animation.
     */
    public function getTotalFrames():Float;
    /**
     * Calculates the duration, frame rate and msPerFrame values.
     *
     * @method Phaser.Animations.Animation#calculateDuration
     * @since 3.50.0
     *
     * @param {Phaser.Animations.Animation} target - The target to set the values on.
     * @param {number} totalFrames - The total number of frames in the animation.
     * @param {number} duration - The duration to calculate the frame rate from.
     * @param {number} frameRate - The frame ate to calculate the duration from.
     */
    public function calculateDuration(target:phaser.animations.Animation, totalFrames:Float, duration:Float, frameRate:Float):Void;
    /**
     * Add frames to the end of the animation.
     *
     * @method Phaser.Animations.Animation#addFrame
     * @since 3.0.0
     *
     * @param {(string|Phaser.Types.Animations.AnimationFrame[])} config - Either a string, in which case it will use all frames from a texture with the matching key, or an array of Animation Frame configuration objects.
     *
     * @return {this} This Animation object.
     */
    public function addFrame(config:Dynamic):Dynamic;
    /**
     * Add frame/s into the animation.
     *
     * @method Phaser.Animations.Animation#addFrameAt
     * @since 3.0.0
     *
     * @param {number} index - The index to insert the frame at within the animation.
     * @param {(string|Phaser.Types.Animations.AnimationFrame[])} config - Either a string, in which case it will use all frames from a texture with the matching key, or an array of Animation Frame configuration objects.
     *
     * @return {this} This Animation object.
     */
    public function addFrameAt(index:Float, config:Dynamic):Dynamic;
    /**
     * Check if the given frame index is valid.
     *
     * @method Phaser.Animations.Animation#checkFrame
     * @since 3.0.0
     *
     * @param {number} index - The index to be checked.
     *
     * @return {boolean} `true` if the index is valid, otherwise `false`.
     */
    public function checkFrame(index:Float):Bool;
    /**
     * Called internally when this Animation first starts to play.
     * Sets the accumulator and nextTick properties.
     *
     * @method Phaser.Animations.Animation#getFirstTick
     * @protected
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationState} state - The Animation State belonging to the Game Object invoking this call.
     */
    public function getFirstTick(state:phaser.animations.AnimationState):Void;
    /**
     * Returns the AnimationFrame at the provided index
     *
     * @method Phaser.Animations.Animation#getFrameAt
     * @protected
     * @since 3.0.0
     *
     * @param {number} index - The index in the AnimationFrame array
     *
     * @return {Phaser.Animations.AnimationFrame} The frame at the index provided from the animation sequence
     */
    public function getFrameAt(index:Float):phaser.animations.AnimationFrame;
    /**
     * Creates AnimationFrame instances based on the given frame data.
     *
     * @method Phaser.Animations.Animation#getFrames
     * @since 3.0.0
     *
     * @param {Phaser.Textures.TextureManager} textureManager - A reference to the global Texture Manager.
     * @param {(string|Phaser.Types.Animations.AnimationFrame[])} frames - Either a string, in which case it will use all frames from a texture with the matching key, or an array of Animation Frame configuration objects.
     * @param {string} [defaultTextureKey] - The key to use if no key is set in the frame configuration object.
     *
     * @return {Phaser.Animations.AnimationFrame[]} An array of newly created AnimationFrame instances.
     */
    public function getFrames(textureManager:phaser.textures.TextureManager, frames:Dynamic, ?defaultTextureKey:String):Array<phaser.animations.AnimationFrame>;
    /**
     * Called internally. Sets the accumulator and nextTick values of the current Animation.
     *
     * @method Phaser.Animations.Animation#getNextTick
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationState} state - The Animation State belonging to the Game Object invoking this call.
     */
    public function getNextTick(state:phaser.animations.AnimationState):Void;
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
     * @param {Phaser.Animations.AnimationState} state - The Animation State to advance.
     */
    public function nextFrame(state:phaser.animations.AnimationState):Void;
    /**
     * Returns the animation last frame.
     *
     * @method Phaser.Animations.Animation#getLastFrame
     * @since 3.12.0
     *
     * @return {Phaser.Animations.AnimationFrame} The last Animation Frame.
     */
    public function getLastFrame():phaser.animations.AnimationFrame;
    /**
     * Called internally when the Animation is playing backwards.
     * Sets the previous frame, causing a yoyo, repeat, complete or update, accordingly.
     *
     * @method Phaser.Animations.Animation#previousFrame
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationState} state - The Animation State belonging to the Game Object invoking this call.
     */
    public function previousFrame(state:phaser.animations.AnimationState):Void;
    /**
     * Removes the given AnimationFrame from this Animation instance.
     * This is a global action. Any Game Object using this Animation will be impacted by this change.
     *
     * @method Phaser.Animations.Animation#removeFrame
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationFrame} frame - The AnimationFrame to be removed.
     *
     * @return {this} This Animation object.
     */
    public function removeFrame(frame:phaser.animations.AnimationFrame):Dynamic;
    /**
     * Removes a frame from the AnimationFrame array at the provided index
     * and updates the animation accordingly.
     *
     * @method Phaser.Animations.Animation#removeFrameAt
     * @since 3.0.0
     *
     * @param {number} index - The index in the AnimationFrame array
     *
     * @return {this} This Animation object.
     */
    public function removeFrameAt(index:Float):Dynamic;
    /**
     * Called internally during playback. Forces the animation to repeat, providing there are enough counts left
     * in the repeat counter.
     *
     * @method Phaser.Animations.Animation#repeatAnimation
     * @fires Phaser.Animations.Events#ANIMATION_REPEAT
     * @fires Phaser.Animations.Events#SPRITE_ANIMATION_REPEAT
     * @fires Phaser.Animations.Events#SPRITE_ANIMATION_KEY_REPEAT
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationState} state - The Animation State belonging to the Game Object invoking this call.
     */
    public function repeatAnimation(state:phaser.animations.AnimationState):Void;
    /**
     * Converts the animation data to JSON.
     *
     * @method Phaser.Animations.Animation#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Animations.JSONAnimation} The resulting JSONAnimation formatted object.
     */
    public function toJSON():phaser.types.animations.JSONAnimation;
    /**
     * Called internally whenever frames are added to, or removed from, this Animation.
     *
     * @method Phaser.Animations.Animation#updateFrameSequence
     * @since 3.0.0
     *
     * @return {this} This Animation object.
     */
    public function updateFrameSequence():Dynamic;
    /**
     * Pauses playback of this Animation. The paused state is set immediately.
     *
     * @method Phaser.Animations.Animation#pause
     * @since 3.0.0
     *
     * @return {this} This Animation object.
     */
    public function pause():Dynamic;
    /**
     * Resumes playback of this Animation. The paused state is reset immediately.
     *
     * @method Phaser.Animations.Animation#resume
     * @since 3.0.0
     *
     * @return {this} This Animation object.
     */
    public function resume():Dynamic;
    /**
     * Destroys this Animation instance. It will remove all event listeners,
     * remove this animation and its key from the global Animation Manager,
     * and then destroy all Animation Frames in turn.
     *
     * @method Phaser.Animations.Animation#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
