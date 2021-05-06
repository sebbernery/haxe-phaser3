package phaser.physics.arcade;

/**
 * @classdesc
 * An Arcade Physics Group object.
 *
 * The primary use of a Physics Group is a way to collect together physics enable objects
 * that share the same intrinsic structure into a single pool. They can they be easily
 * compared against other Groups, or Game Objects.
 *
 * All Game Objects created by, or added to this Group will automatically be given **dynamic**
 * Arcade Physics bodies (if they have no body already) and the bodies will receive the
 * Groups {@link Phaser.Physics.Arcade.Group#defaults default values}.
 *
 * You should not pass objects into this Group that should not receive a body. For example,
 * do not add basic Geometry or Tilemap Layers into a Group, as they will not behave in the
 * way you may expect. Groups should all ideally have objects of the same type in them.
 *
 * If you wish to create a Group filled with Static Bodies, please see {@link Phaser.Physics.Arcade.StaticGroup}.
 *
 * @class Group
 * @extends Phaser.GameObjects.Group
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Arcade.World} world - The physics simulation.
 * @param {Phaser.Scene} scene - The scene this group belongs to.
 * @param {(Phaser.GameObjects.GameObject[]|Phaser.Types.Physics.Arcade.PhysicsGroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig)} [children] - Game Objects to add to this group; or the `config` argument.
 * @param {Phaser.Types.Physics.Arcade.PhysicsGroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig} [config] - Settings for this group.
 */
@:native("Phaser.Physics.Arcade.Group")
extern class Group extends phaser.gameobjects.Group {
    public function new(world:phaser.physics.arcade.World, scene:phaser.Scene, ?children:Dynamic, ?config:Dynamic);
    /**
     * The physics simulation.
     *
     * @name Phaser.Physics.Arcade.Group#world
     * @type {Phaser.Physics.Arcade.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.arcade.World;
    /**
     * The physics type of the Group's members.
     *
     * @name Phaser.Physics.Arcade.Group#physicsType
     * @type {number}
     * @default Phaser.Physics.Arcade.DYNAMIC_BODY
     * @since 3.0.0
     */
    public var physicsType:Float;
    /**
     * Default physics properties applied to Game Objects added to the Group or created by the Group. Derived from the `config` argument.
     *
     * You can remove the default values by setting this property to `{}`.
     *
     * @name Phaser.Physics.Arcade.Group#defaults
     * @type {Phaser.Types.Physics.Arcade.PhysicsGroupDefaults}
     * @since 3.0.0
     */
    public var defaults:phaser.types.physics.arcade.PhysicsGroupDefaults;
    /**
     * Enables a Game Object's Body and assigns `defaults`. Called when a Group member is added or created.
     *
     * @method Phaser.Physics.Arcade.Group#createCallbackHandler
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object being added.
     */
    public function createCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    /**
     * Disables a Game Object's Body. Called when a Group member is removed.
     *
     * @method Phaser.Physics.Arcade.Group#removeCallbackHandler
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The Game Object being removed.
     */
    public function removeCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    /**
     * Sets the velocity of each Group member.
     *
     * @method Phaser.Physics.Arcade.Group#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity.
     * @param {number} y - The vertical velocity.
     * @param {number} [step=0] - The velocity increment. When set, the first member receives velocity (x, y), the second (x + step, y + step), and so on.
     *
     * @return {Phaser.Physics.Arcade.Group} This Physics Group object.
     */
    public function setVelocity(x:Float, y:Float, ?step:Float):phaser.physics.arcade.Group;
    /**
     * Sets the horizontal velocity of each Group member.
     *
     * @method Phaser.Physics.Arcade.Group#setVelocityX
     * @since 3.0.0
     *
     * @param {number} value - The velocity value.
     * @param {number} [step=0] - The velocity increment. When set, the first member receives velocity (x), the second (x + step), and so on.
     *
     * @return {Phaser.Physics.Arcade.Group} This Physics Group object.
     */
    public function setVelocityX(value:Float, ?step:Float):phaser.physics.arcade.Group;
    /**
     * Sets the vertical velocity of each Group member.
     *
     * @method Phaser.Physics.Arcade.Group#setVelocityY
     * @since 3.0.0
     *
     * @param {number} value - The velocity value.
     * @param {number} [step=0] - The velocity increment. When set, the first member receives velocity (y), the second (y + step), and so on.
     *
     * @return {Phaser.Physics.Arcade.Group} This Physics Group object.
     */
    public function setVelocityY(value:Float, ?step:Float):phaser.physics.arcade.Group;
}
