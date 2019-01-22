package phaser.gameobjects;

/**
 * @classdesc
 * A PathFollower Game Object.
 *
 * A PathFollower is a Sprite Game Object with some extra helpers to allow it to follow a Path automatically.
 *
 * Anything you can do with a standard Sprite can be done with this PathFollower, such as animate it, tint it,
 * scale it and so on.
 *
 * PathFollowers are bound to a single Path at any one time and can traverse the length of the Path, from start
 * to finish, forwards or backwards, or from any given point on the Path to its end. They can optionally rotate
 * to face the direction of the path, be offset from the path coordinates or rotate independently of the Path.
 *
 * @class PathFollower
 * @extends Phaser.GameObjects.Sprite
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this PathFollower belongs.
 * @param {Phaser.Curves.Path} path - The Path this PathFollower is following. It can only follow one Path at a time.
 * @param {number} x - The horizontal position of this Game Object in the world.
 * @param {number} y - The vertical position of this Game Object in the world.
 * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 */
@:native("Phaser.GameObjects.PathFollower")
extern class PathFollower extends phaser.gameobjects.Sprite {
    public function new(scene:phaser.Scene, path:phaser.curves.Path, x:Float, y:Float, texture:String, ?frame:Dynamic);
    /**
     * The Path this PathFollower is following. It can only follow one Path at a time.
     *
     * @name Phaser.GameObjects.PathFollower#path
     * @type {Phaser.Curves.Path}
     * @since 3.0.0
     */
    public var path:phaser.curves.Path;
    /**
     * Should the PathFollower automatically rotate to point in the direction of the Path?
     *
     * @name Phaser.GameObjects.PathFollower#rotateToPath
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var rotateToPath:Bool;
    /**
     * [description]
     *
     * @name Phaser.GameObjects.PathFollower#pathRotationVerticalAdjust
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var pathRotationVerticalAdjust:Bool;
    /**
     * If the PathFollower is rotating to match the Path (@see Phaser.GameObjects.PathFollower#rotateToPath)
     * this value is added to the rotation value. This allows you to rotate objects to a path but control
     * the angle of the rotation as well.
     *
     * @name Phaser.GameObjects.PathFollower#pathRotationOffset
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var pathRotationOffset:Float;
    /**
     * An additional vector to add to the PathFollowers position, allowing you to offset it from the
     * Path coordinates.
     *
     * @name Phaser.GameObjects.PathFollower#pathOffset
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var pathOffset:phaser.math.Vector2;
    /**
     * [description]
     *
     * @name Phaser.GameObjects.PathFollower#pathVector
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var pathVector:phaser.math.Vector2;
    /**
     * The Tween used for following the Path.
     *
     * @name Phaser.GameObjects.PathFollower#pathTween
     * @type {Phaser.Tweens.Tween}
     * @since 3.0.0
     */
    public var pathTween:phaser.tweens.Tween;
    /**
     * Settings for the PathFollower.
     *
     * @name Phaser.GameObjects.PathFollower#pathConfig
     * @type {?PathConfig}
     * @default null
     * @since 3.0.0
     */
    public var pathConfig:PathConfig;
    /**
     * Set the Path that this PathFollower should follow.
     *
     * Optionally accepts {@link PathConfig} settings.
     *
     * @method Phaser.GameObjects.PathFollower#setPath
     * @since 3.0.0
     *
     * @param {Phaser.Curves.Path} path - The Path this PathFollower is following. It can only follow one Path at a time.
     * @param {PathConfig} [config] - Settings for the PathFollower.
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function setPath(path:phaser.curves.Path, ?config:PathConfig):phaser.gameobjects.PathFollower;
    /**
     * Set whether the PathFollower should automatically rotate to point in the direction of the Path.
     *
     * @method Phaser.GameObjects.PathFollower#setRotateToPath
     * @since 3.0.0
     *
     * @param {boolean} value - Whether the PathFollower should automatically rotate to point in the direction of the Path.
     * @param {number} [offset=0] - Rotation offset in degrees.
     * @param {boolean} [verticalAdjust=false] - [description]
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function setRotateToPath(value:Bool, ?offset:Float, ?verticalAdjust:Bool):phaser.gameobjects.PathFollower;
    /**
     * Is this PathFollower actively following a Path or not?
     *
     * To be considered as `isFollowing` it must be currently moving on a Path, and not paused.
     *
     * @method Phaser.GameObjects.PathFollower#isFollowing
     * @since 3.0.0
     *
     * @return {boolean} `true` is this PathFollower is actively following a Path, otherwise `false`.
     */
    public function isFollowing():Bool;
    /**
     * Starts this PathFollower following its given Path.
     *
     * @method Phaser.GameObjects.PathFollower#startFollow
     * @since 3.3.0
     *
     * @param {(number|PathConfig)} [config={}] - The duration of the follow, or a PathFollower config object.
     * @param {number} [startAt=0] - Optional start position of the follow, between 0 and 1.
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function startFollow(?config:Dynamic, ?startAt:Float):phaser.gameobjects.PathFollower;
    /**
     * Pauses this PathFollower. It will still continue to render, but it will remain motionless at the
     * point on the Path at which you paused it.
     *
     * @method Phaser.GameObjects.PathFollower#pauseFollow
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
     * @method Phaser.GameObjects.PathFollower#resumeFollow
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
     * @method Phaser.GameObjects.PathFollower#stopFollow
     * @since 3.3.0
     *
     * @return {Phaser.GameObjects.PathFollower} This Game Object.
     */
    public function stopFollow():phaser.gameobjects.PathFollower;
}
