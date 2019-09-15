package phaser.gameobjects.components;

/**
 * @classdesc
 * A Game Object Animation Controller.
 *
 * This controller lives as an instance within a Game Object, accessible as `sprite.anims`.
 *
 * @class Animation
 * @memberof Phaser.GameObjects.Components
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.GameObjects.GameObject} parent - The Game Object to which this animation controller belongs.
 */
@:native("Phaser.GameObjects.Components.Animation")
extern class Animation {
    public function new(parent:phaser.gameobjects.GameObject);
    /**
     * The Game Object to which this animation controller belongs.
     *
     * @name Phaser.GameObjects.Components.Animation#parent
     * @type {Phaser.GameObjects.GameObject}
     * @since 3.0.0
     */
    public var parent:phaser.gameobjects.GameObject;
    /**
     * A reference to the global Animation Manager.
     *
     * @name Phaser.GameObjects.Components.Animation#animationManager
     * @type {Phaser.Animations.AnimationManager}
     * @since 3.0.0
     */
    public var animationManager:phaser.animations.AnimationManager;
    /**
     * Is an animation currently playing or not?
     *
     * @name Phaser.GameObjects.Components.Animation#isPlaying
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var isPlaying:Bool;
    /**
     * The current Animation loaded into this Animation Controller.
     *
     * @name Phaser.GameObjects.Components.Animation#currentAnim
     * @type {?Phaser.Animations.Animation}
     * @default null
     * @since 3.0.0
     */
    public var currentAnim:phaser.animations.Animation;
    /**
     * The current AnimationFrame being displayed by this Animation Controller.
     *
     * @name Phaser.GameObjects.Components.Animation#currentFrame
     * @type {?Phaser.Animations.AnimationFrame}
     * @default null
     * @since 3.0.0
     */
    public var currentFrame:phaser.animations.AnimationFrame;
    /**
     * The key of the next Animation to be loaded into this Animation Controller when the current animation completes.
     *
     * @name Phaser.GameObjects.Components.Animation#nextAnim
     * @type {?string}
     * @default null
     * @since 3.16.0
     */
    public var nextAnim:String;
    /**
     * The frame rate of playback in frames per second.
     * The default is 24 if the `duration` property is `null`.
     *
     * @name Phaser.GameObjects.Components.Animation#frameRate
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var frameRate:Float;
    /**
     * How long the animation should play for, in milliseconds.
     * If the `frameRate` property has been set then it overrides this value,
     * otherwise the `frameRate` is derived from `duration`.
     *
     * @name Phaser.GameObjects.Components.Animation#duration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var duration:Float;
    /**
     * ms per frame, not including frame specific modifiers that may be present in the Animation data.
     *
     * @name Phaser.GameObjects.Components.Animation#msPerFrame
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var msPerFrame:Float;
    /**
     * Skip frames if the time lags, or always advanced anyway?
     *
     * @name Phaser.GameObjects.Components.Animation#skipMissedFrames
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var skipMissedFrames:Bool;
    /**
     * Will the playhead move forwards (`true`) or in reverse (`false`).
     *
     * @name Phaser.GameObjects.Components.Animation#forward
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var forward:Bool;
    /**
     * Internal time overflow accumulator.
     *
     * @name Phaser.GameObjects.Components.Animation#accumulator
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var accumulator:Float;
    /**
     * The time point at which the next animation frame will change.
     *
     * @name Phaser.GameObjects.Components.Animation#nextTick
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var nextTick:Float;
    /**
     * An internal counter keeping track of how many repeats are left to play.
     *
     * @name Phaser.GameObjects.Components.Animation#repeatCounter
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var repeatCounter:Float;
    /**
     * An internal flag keeping track of pending repeats.
     *
     * @name Phaser.GameObjects.Components.Animation#pendingRepeat
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var pendingRepeat:Bool;
    /**
     * `true` if the current animation is paused, otherwise `false`.
     *
     * @name Phaser.GameObjects.Components.Animation#isPaused
     * @readonly
     * @type {boolean}
     * @since 3.4.0
     */
    public var isPaused:Bool;
    /**
     * Sets an animation to be played immediately after the current one completes.
     *
     * The current animation must enter a 'completed' state for this to happen, i.e. finish all of its repeats, delays, etc, or have the `stop` method called directly on it.
     *
     * An animation set to repeat forever will never enter a completed state.
     *
     * You can chain a new animation at any point, including before the current one starts playing, during it, or when it ends (via its `animationcomplete` callback).
     * Chained animations are specific to a Game Object, meaning different Game Objects can have different chained animations without impacting the global animation they're playing.
     *
     * Call this method with no arguments to reset the chained animation.
     *
     * @method Phaser.GameObjects.Components.Animation#chain
     * @since 3.16.0
     *
     * @param {(string|Phaser.Animations.Animation)} [key] - The string-based key of the animation to play next, as defined previously in the Animation Manager. Or an Animation instance.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function chain(?key:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Sets the amount of time, in milliseconds, that the animation will be delayed before starting playback.
     *
     * @method Phaser.GameObjects.Components.Animation#setDelay
     * @since 3.4.0
     *
     * @param {integer} [value=0] - The amount of time, in milliseconds, to wait before starting playback.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function setDelay(?value:Int):phaser.gameobjects.GameObject;
    /**
     * Gets the amount of time, in milliseconds that the animation will be delayed before starting playback.
     *
     * @method Phaser.GameObjects.Components.Animation#getDelay
     * @since 3.4.0
     *
     * @return {integer} The amount of time, in milliseconds, the Animation will wait before starting playback.
     */
    public function getDelay():Int;
    /**
     * Waits for the specified delay, in milliseconds, then starts playback of the requested animation.
     *
     * @method Phaser.GameObjects.Components.Animation#delayedPlay
     * @since 3.0.0
     *
     * @param {integer} delay - The delay, in milliseconds, to wait before starting the animation playing.
     * @param {string} key - The key of the animation to play.
     * @param {integer} [startFrame=0] - The frame of the animation to start from.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function delayedPlay(delay:Int, key:String, ?startFrame:Int):phaser.gameobjects.GameObject;
    /**
     * Returns the key of the animation currently loaded into this component.
     *
     * @method Phaser.GameObjects.Components.Animation#getCurrentKey
     * @since 3.0.0
     *
     * @return {string} The key of the Animation loaded into this component.
     */
    public function getCurrentKey():String;
    /**
     * Internal method used to load an animation into this component.
     *
     * @method Phaser.GameObjects.Components.Animation#load
     * @protected
     * @since 3.0.0
     *
     * @param {string} key - The key of the animation to load.
     * @param {integer} [startFrame=0] - The start frame of the animation to load.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function load(key:String, ?startFrame:Int):phaser.gameobjects.GameObject;
    /**
     * Pause the current animation and set the `isPlaying` property to `false`.
     * You can optionally pause it at a specific frame.
     *
     * @method Phaser.GameObjects.Components.Animation#pause
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationFrame} [atFrame] - An optional frame to set after pausing the animation.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function pause(?atFrame:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    /**
     * Resumes playback of a paused animation and sets the `isPlaying` property to `true`.
     * You can optionally tell it to start playback from a specific frame.
     *
     * @method Phaser.GameObjects.Components.Animation#resume
     * @since 3.0.0
     *
     * @param {Phaser.Animations.AnimationFrame} [fromFrame] - An optional frame to set before restarting playback.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function resume(?fromFrame:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    /**
     * Plays an Animation on a Game Object that has the Animation component, such as a Sprite.
     *
     * Animations are stored in the global Animation Manager and are referenced by a unique string-based key.
     *
     * @method Phaser.GameObjects.Components.Animation#play
     * @fires Phaser.GameObjects.Components.Animation#onStartEvent
     * @since 3.0.0
     *
     * @param {(string|Phaser.Animations.Animation)} key - The string-based key of the animation to play, as defined previously in the Animation Manager. Or an Animation instance.
     * @param {boolean} [ignoreIfPlaying=false] - If this animation is already playing then ignore this call.
     * @param {integer} [startFrame=0] - Optionally start the animation playing from this frame index.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function play(key:Dynamic, ?ignoreIfPlaying:Bool, ?startFrame:Int):phaser.gameobjects.GameObject;
    /**
     * Plays an Animation (in reverse mode) on the Game Object that owns this Animation Component.
     *
     * @method Phaser.GameObjects.Components.Animation#playReverse
     * @fires Phaser.GameObjects.Components.Animation#onStartEvent
     * @since 3.12.0
     *
     * @param {(string|Phaser.Animations.Animation)} key - The string-based key of the animation to play, as defined previously in the Animation Manager. Or an Animation instance.
     * @param {boolean} [ignoreIfPlaying=false] - If an animation is already playing then ignore this call.
     * @param {integer} [startFrame=0] - Optionally start the animation playing from this frame index.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function playReverse(key:Dynamic, ?ignoreIfPlaying:Bool, ?startFrame:Int):phaser.gameobjects.GameObject;
    /**
     * Load an Animation and fires 'onStartEvent' event, extracted from 'play' method.
     *
     * @method Phaser.GameObjects.Components.Animation#_startAnimation
     * @fires Phaser.Animations.Events#START_ANIMATION_EVENT
     * @fires Phaser.Animations.Events#SPRITE_START_ANIMATION_EVENT
     * @fires Phaser.Animations.Events#SPRITE_START_KEY_ANIMATION_EVENT
     * @since 3.12.0
     *
     * @param {string} key - The string-based key of the animation to play, as defined previously in the Animation Manager.
     * @param {integer} [startFrame=0] - Optionally start the animation playing from this frame index.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function _startAnimation(key:String, ?startFrame:Int):phaser.gameobjects.GameObject;
    /**
     * Reverse the Animation that is already playing on the Game Object.
     *
     * @method Phaser.GameObjects.Components.Animation#reverse
     * @since 3.12.0
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function reverse():phaser.gameobjects.GameObject;
    /**
     * Returns a value between 0 and 1 indicating how far this animation is through, ignoring repeats and yoyos.
     * If the animation has a non-zero repeat defined, `getProgress` and `getTotalProgress` will be different
     * because `getProgress` doesn't include any repeats or repeat delays, whereas `getTotalProgress` does.
     *
     * @method Phaser.GameObjects.Components.Animation#getProgress
     * @since 3.4.0
     *
     * @return {number} The progress of the current animation, between 0 and 1.
     */
    public function getProgress():Float;
    /**
     * Takes a value between 0 and 1 and uses it to set how far this animation is through playback.
     * Does not factor in repeats or yoyos, but does handle playing forwards or backwards.
     *
     * @method Phaser.GameObjects.Components.Animation#setProgress
     * @since 3.4.0
     *
     * @param {number} [value=0] - The progress value, between 0 and 1.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function setProgress(?value:Float):phaser.gameobjects.GameObject;
    /**
     * Handle the removal of an animation from the Animation Manager.
     *
     * @method Phaser.GameObjects.Components.Animation#remove
     * @since 3.0.0
     *
     * @param {string} [key] - The key of the removed Animation.
     * @param {Phaser.Animations.Animation} [animation] - The removed Animation.
     */
    public function remove(?key:String, ?animation:phaser.animations.Animation):Void;
    /**
     * Gets the number of times that the animation will repeat
     * after its first iteration. For example, if returns 1, the animation will
     * play a total of twice (the initial play plus 1 repeat).
     * A value of -1 means the animation will repeat indefinitely.
     *
     * @method Phaser.GameObjects.Components.Animation#getRepeat
     * @since 3.4.0
     *
     * @return {integer} The number of times that the animation will repeat.
     */
    public function getRepeat():Int;
    /**
     * Sets the number of times that the animation should repeat
     * after its first iteration. For example, if repeat is 1, the animation will
     * play a total of twice (the initial play plus 1 repeat).
     * To repeat indefinitely, use -1. repeat should always be an integer.
     *
     * @method Phaser.GameObjects.Components.Animation#setRepeat
     * @since 3.4.0
     *
     * @param {integer} value - The number of times that the animation should repeat.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function setRepeat(value:Int):phaser.gameobjects.GameObject;
    /**
     * Gets the amount of delay between repeats, if any.
     *
     * @method Phaser.GameObjects.Components.Animation#getRepeatDelay
     * @since 3.4.0
     *
     * @return {number} The delay between repeats.
     */
    public function getRepeatDelay():Float;
    /**
     * Sets the amount of time in seconds between repeats.
     * For example, if `repeat` is 2 and `repeatDelay` is 10, the animation will play initially,
     * then wait for 10 seconds before repeating, then play again, then wait another 10 seconds
     * before doing its final repeat.
     *
     * @method Phaser.GameObjects.Components.Animation#setRepeatDelay
     * @since 3.4.0
     *
     * @param {number} value - The delay to wait between repeats, in seconds.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function setRepeatDelay(value:Float):phaser.gameobjects.GameObject;
    /**
     * Restarts the current animation from its beginning, optionally including its delay value.
     *
     * @method Phaser.GameObjects.Components.Animation#restart
     * @fires Phaser.Animations.Events#RESTART_ANIMATION_EVENT
     * @fires Phaser.Animations.Events#SPRITE_RESTART_ANIMATION_EVENT
     * @fires Phaser.Animations.Events#SPRITE_RESTART_KEY_ANIMATION_EVENT
     * @since 3.0.0
     *
     * @param {boolean} [includeDelay=false] - Whether to include the delay value of the animation when restarting.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function restart(?includeDelay:Bool):phaser.gameobjects.GameObject;
    /**
     * Immediately stops the current animation from playing and dispatches the `animationcomplete` event.
     *
     * If no animation is set, no event will be dispatched.
     *
     * If there is another animation queued (via the `chain` method) then it will start playing immediately.
     *
     * @method Phaser.GameObjects.Components.Animation#stop
     * @fires Phaser.GameObjects.Components.Animation#onCompleteEvent
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function stop():phaser.gameobjects.GameObject;
    /**
     * Stops the current animation from playing after the specified time delay, given in milliseconds.
     *
     * @method Phaser.GameObjects.Components.Animation#stopAfterDelay
     * @fires Phaser.GameObjects.Components.Animation#onCompleteEvent
     * @since 3.4.0
     *
     * @param {integer} delay - The number of milliseconds to wait before stopping this animation.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function stopAfterDelay(delay:Int):phaser.gameobjects.GameObject;
    /**
     * Stops the current animation from playing when it next repeats.
     *
     * @method Phaser.GameObjects.Components.Animation#stopOnRepeat
     * @fires Phaser.GameObjects.Components.Animation#onCompleteEvent
     * @since 3.4.0
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function stopOnRepeat():phaser.gameobjects.GameObject;
    /**
     * Stops the current animation from playing when it next sets the given frame.
     * If this frame doesn't exist within the animation it will not stop it from playing.
     *
     * @method Phaser.GameObjects.Components.Animation#stopOnFrame
     * @fires Phaser.GameObjects.Components.Animation#onCompleteEvent
     * @since 3.4.0
     *
     * @param {Phaser.Animations.AnimationFrame} frame - The frame to check before stopping this animation.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function stopOnFrame(frame:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    /**
     * Sets the Time Scale factor, allowing you to make the animation go go faster or slower than default.
     * Where 1 = normal speed (the default), 0.5 = half speed, 2 = double speed, etc.
     *
     * @method Phaser.GameObjects.Components.Animation#setTimeScale
     * @since 3.4.0
     *
     * @param {number} [value=1] - The time scale factor, where 1 is no change, 0.5 is half speed, etc.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that owns this Animation Component.
     */
    public function setTimeScale(?value:Float):phaser.gameobjects.GameObject;
    /**
     * Gets the Time Scale factor.
     *
     * @method Phaser.GameObjects.Components.Animation#getTimeScale
     * @since 3.4.0
     *
     * @return {number} The Time Scale value.
     */
    public function getTimeScale():Float;
    /**
     * Returns the total number of frames in this animation.
     *
     * @method Phaser.GameObjects.Components.Animation#getTotalFrames
     * @since 3.4.0
     *
     * @return {integer} The total number of frames in this animation.
     */
    public function getTotalFrames():Int;
    /**
     * The internal update loop for the Animation Component.
     *
     * @method Phaser.GameObjects.Components.Animation#update
     * @since 3.0.0
     *
     * @param {number} time - The current timestamp.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function update(time:Float, delta:Float):Void;
    /**
     * Sets the given Animation Frame as being the current frame
     * and applies it to the parent Game Object, adjusting its size and origin as needed.
     *
     * @method Phaser.GameObjects.Components.Animation#setCurrentFrame
     * @since 3.4.0
     *
     * @param {Phaser.Animations.AnimationFrame} animationFrame - The Animation Frame to set as being current.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object this Animation Component belongs to.
     */
    public function setCurrentFrame(animationFrame:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    /**
     * Advances the animation to the next frame, regardless of the time or animation state.
     * If the animation is set to repeat, or yoyo, this will still take effect.
     *
     * Calling this does not change the direction of the animation. I.e. if it was currently
     * playing in reverse, calling this method doesn't then change the direction to forwards.
     *
     * @method Phaser.GameObjects.Components.Animation#nextFrame
     * @since 3.16.0
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object this Animation Component belongs to.
     */
    public function nextFrame():phaser.gameobjects.GameObject;
    /**
     * Advances the animation to the previous frame, regardless of the time or animation state.
     * If the animation is set to repeat, or yoyo, this will still take effect.
     *
     * Calling this does not change the direction of the animation. I.e. if it was currently
     * playing in forwards, calling this method doesn't then change the direction to backwards.
     *
     * @method Phaser.GameObjects.Components.Animation#previousFrame
     * @since 3.16.0
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object this Animation Component belongs to.
     */
    public function previousFrame():phaser.gameobjects.GameObject;
    /**
     * Sets if the current Animation will yoyo when it reaches the end.
     * A yoyo'ing animation will play through consecutively, and then reverse-play back to the start again.
     *
     * @method Phaser.GameObjects.Components.Animation#setYoyo
     * @since 3.4.0
     *
     * @param {boolean} [value=false] - `true` if the animation should yoyo, `false` to not.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object this Animation Component belongs to.
     */
    public function setYoyo(?value:Bool):phaser.gameobjects.GameObject;
    /**
     * Gets if the current Animation will yoyo when it reaches the end.
     * A yoyo'ing animation will play through consecutively, and then reverse-play back to the start again.
     *
     * @method Phaser.GameObjects.Components.Animation#getYoyo
     * @since 3.4.0
     *
     * @return {boolean} `true` if the animation is set to yoyo, `false` if not.
     */
    public function getYoyo():Bool;
    /**
     * Destroy this Animation component.
     *
     * Unregisters event listeners and cleans up its references.
     *
     * @method Phaser.GameObjects.Components.Animation#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
