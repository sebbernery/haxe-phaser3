package phaser.physics.arcade;

/**
 * @classdesc
 * An Arcade Physics Group object.
 *
 * All Game Objects created by this Group will automatically be given dynamic Arcade Physics bodies.
 *
 * Its static counterpart is {@link Phaser.Physics.Arcade.StaticGroup}.
 *
 * @class Group
 * @extends Phaser.GameObjects.Group
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Arcade.World} world - The physics simulation.
 * @param {Phaser.Scene} scene - The scene this group belongs to.
 * @param {(Phaser.GameObjects.GameObject[]|PhysicsGroupConfig|GroupCreateConfig)} [children] - Game Objects to add to this group; or the `config` argument.
 * @param {PhysicsGroupConfig|GroupCreateConfig} [config] - Settings for this group.
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
     * @type {integer}
     * @default Phaser.Physics.Arcade.DYNAMIC_BODY
     * @since 3.0.0
     */
    public var physicsType:Int;
    /**
     * Default physics properties applied to Game Objects added to the Group or created by the Group. Derived from the `config` argument.
     *
     * @name Phaser.Physics.Arcade.Group#defaults
     * @type {PhysicsGroupDefaults}
     * @since 3.0.0
     */
    public var defaults:PhysicsGroupDefaults;
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
