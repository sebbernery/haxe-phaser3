package phaser.gameobjects.components;

/**
 * Provides methods used for managing a Game Object following a Path.
 * Should be applied as a mixin and not used directly.
 *
 * @namespace Phaser.GameObjects.Components.PathFollower
 * @since 3.17.0
 */
@:native("Phaser.GameObjects.Components.PathFollower")
extern class PathFollower {
    public function new();
    /**
     * The Path this PathFollower is following. It can only follow one Path at a time.
     *
     * @name Phaser.GameObjects.Components.PathFollower#path
     * @type {Phaser.Curves.Path}
     * @since 3.0.0
     */
    public var path:phaser.curves.Path;
    /**
     * Should the PathFollower automatically rotate to point in the direction of the Path?
     *
     * @name Phaser.GameObjects.Components.PathFollower#rotateToPath
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var rotateToPath:Bool;
    /**
     * Set the Path that this PathFollower should follow.
     *
     * Optionally accepts {@link Phaser.Types.GameObjects.PathFollower.PathConfig} settings.
     *
     * @method Phaser.GameObjects.Components.PathFollower#setPath
     * @since 3.0.0
     *
     * @param {Phaser.Curves.Path} path - The Path this PathFollower is following. It can only follow one Path at a time.
     * @param {(number|Phaser.Types.GameObjects.PathFollower.PathConfig|Phaser.Types.Tweens.NumberTweenBuilderConfig)} [config] - Settings for the PathFollower.
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function setPath(path:phaser.curves.Path, ?config:Dynamic):phaser.gameobjects.PathFollower;
    /**
     * Set whether the PathFollower should automatically rotate to point in the direction of the Path.
     *
     * @method Phaser.GameObjects.Components.PathFollower#setRotateToPath
     * @since 3.0.0
     *
     * @param {boolean} value - Whether the PathFollower should automatically rotate to point in the direction of the Path.
     * @param {number} [offset=0] - Rotation offset in degrees.
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function setRotateToPath(value:Bool, ?offset:Float):phaser.gameobjects.PathFollower;
    /**
     * Is this PathFollower actively following a Path or not?
     *
     * To be considered as `isFollowing` it must be currently moving on a Path, and not paused.
     *
     * @method Phaser.GameObjects.Components.PathFollower#isFollowing
     * @since 3.0.0
     *
     * @return {boolean} `true` is this PathFollower is actively following a Path, otherwise `false`.
     */
    public function isFollowing():Bool;
    /**
     * Starts this PathFollower following its given Path.
     *
     * @method Phaser.GameObjects.Components.PathFollower#startFollow
     * @since 3.3.0
     *
     * @param {(number|Phaser.Types.GameObjects.PathFollower.PathConfig|Phaser.Types.Tweens.NumberTweenBuilderConfig)} [config={}] - The duration of the follow, or a PathFollower config object.
     * @param {number} [startAt=0] - Optional start position of the follow, between 0 and 1.
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function startFollow(?config:Dynamic, ?startAt:Float):phaser.gameobjects.PathFollower;
    /**
     * Pauses this PathFollower. It will still continue to render, but it will remain motionless at the
     * point on the Path at which you paused it.
     *
     * @method Phaser.GameObjects.Components.PathFollower#pauseFollow
     * @since 3.3.0
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function pauseFollow():phaser.gameobjects.PathFollower;
    /**
     * Resumes a previously paused PathFollower.
     *
     * If the PathFollower was not paused this has no effect.
     *
     * @method Phaser.GameObjects.Components.PathFollower#resumeFollow
     * @since 3.3.0
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function resumeFollow():phaser.gameobjects.PathFollower;
    /**
     * Stops this PathFollower from following the path any longer.
     *
     * This will invoke any 'stop' conditions that may exist on the Path, or for the follower.
     *
     * @method Phaser.GameObjects.Components.PathFollower#stopFollow
     * @since 3.3.0
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function stopFollow():phaser.gameobjects.PathFollower;
    /**
     * Internal update handler that advances this PathFollower along the path.
     *
     * Called automatically by the Scene step, should not typically be called directly.
     *
     * @method Phaser.GameObjects.Components.PathFollower#pathUpdate
     * @since 3.17.0
     */
    public function pathUpdate():Void;
}
