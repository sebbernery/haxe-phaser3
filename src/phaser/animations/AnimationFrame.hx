package phaser.animations;

/**
 * @classdesc
 * A single frame in an Animation sequence.
 *
 * An AnimationFrame consists of a reference to the Texture it uses for rendering, references to other
 * frames in the animation, and index data. It also has the ability to modify the animation timing.
 *
 * AnimationFrames are generated automatically by the Animation class.
 *
 * @class AnimationFrame
 * @memberof Phaser.Animations
 * @constructor
 * @since 3.0.0
 *
 * @param {string} textureKey - The key of the Texture this AnimationFrame uses.
 * @param {(string|integer)} textureFrame - The key of the Frame within the Texture that this AnimationFrame uses.
 * @param {integer} index - The index of this AnimationFrame within the Animation sequence.
 * @param {Phaser.Textures.Frame} frame - A reference to the Texture Frame this AnimationFrame uses for rendering.
 */
@:native("Phaser.Animations.AnimationFrame")
extern class AnimationFrame {
    public function new(textureKey:String, textureFrame:Dynamic, index:Int, frame:phaser.textures.Frame);
    /**
     * The key of the Texture this AnimationFrame uses.
     *
     * @name Phaser.Animations.AnimationFrame#textureKey
     * @type {string}
     * @since 3.0.0
     */
    public var textureKey:String;
    /**
     * The key of the Frame within the Texture that this AnimationFrame uses.
     *
     * @name Phaser.Animations.AnimationFrame#textureFrame
     * @type {(string|integer)}
     * @since 3.0.0
     */
    public var textureFrame:Dynamic;
    /**
     * The index of this AnimationFrame within the Animation sequence.
     *
     * @name Phaser.Animations.AnimationFrame#index
     * @type {integer}
     * @since 3.0.0
     */
    public var index:Int;
    /**
     * A reference to the Texture Frame this AnimationFrame uses for rendering.
     *
     * @name Phaser.Animations.AnimationFrame#frame
     * @type {Phaser.Textures.Frame}
     * @since 3.0.0
     */
    public var frame:phaser.textures.Frame;
    /**
     * Is this the first frame in an animation sequence?
     *
     * @name Phaser.Animations.AnimationFrame#isFirst
     * @type {boolean}
     * @default false
     * @readonly
     * @since 3.0.0
     */
    public var isFirst:Bool;
    /**
     * Is this the last frame in an animation sequence?
     *
     * @name Phaser.Animations.AnimationFrame#isLast
     * @type {boolean}
     * @default false
     * @readonly
     * @since 3.0.0
     */
    public var isLast:Bool;
    /**
     * A reference to the AnimationFrame that comes before this one in the animation, if any.
     *
     * @name Phaser.Animations.AnimationFrame#prevFrame
     * @type {?Phaser.Animations.AnimationFrame}
     * @default null
     * @readonly
     * @since 3.0.0
     */
    public var prevFrame:phaser.animations.AnimationFrame;
    /**
     * A reference to the AnimationFrame that comes after this one in the animation, if any.
     *
     * @name Phaser.Animations.AnimationFrame#nextFrame
     * @type {?Phaser.Animations.AnimationFrame}
     * @default null
     * @readonly
     * @since 3.0.0
     */
    public var nextFrame:phaser.animations.AnimationFrame;
    /**
     * Additional time (in ms) that this frame should appear for during playback.
     * The value is added onto the msPerFrame set by the animation.
     *
     * @name Phaser.Animations.AnimationFrame#duration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * What % through the animation does this frame come?
     * This value is generated when the animation is created and cached here.
     *
     * @name Phaser.Animations.AnimationFrame#progress
     * @type {number}
     * @default 0
     * @readonly
     * @since 3.0.0
     */
    public var progress:Float;
    /**
     * Generates a JavaScript object suitable for converting to JSON.
     *
     * @method Phaser.Animations.AnimationFrame#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Animations.Types.JSONAnimationFrame} The AnimationFrame data.
     */
    public function toJSON():phaser.animations.types.JSONAnimationFrame;
    /**
     * Destroys this object by removing references to external resources and callbacks.
     *
     * @method Phaser.Animations.AnimationFrame#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
