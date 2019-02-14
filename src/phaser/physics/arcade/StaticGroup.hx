package phaser.physics.arcade;

/**
 * @classdesc
 * An Arcade Physics Static Group object.
 *
 * All Game Objects created by this Group will automatically be given static Arcade Physics bodies.
 *
 * Its dynamic counterpart is {@link Phaser.Physics.Arcade.Group}.
 *
 * @class StaticGroup
 * @extends Phaser.GameObjects.Group
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Arcade.World} world - The physics simulation.
 * @param {Phaser.Scene} scene - The scene this group belongs to.
 * @param {(Phaser.GameObjects.GameObject[]|GroupConfig|GroupCreateConfig)} [children] - Game Objects to add to this group; or the `config` argument.
 * @param {GroupConfig|GroupCreateConfig} [config] - Settings for this group.
 */
@:native("Phaser.Physics.Arcade.StaticGroup")
extern class StaticGroup extends phaser.gameobjects.Group {
    public function new(world:phaser.physics.arcade.World, scene:phaser.Scene, ?children:Dynamic, ?config:Dynamic);
    /**
     * The physics simulation.
     *
     * @name Phaser.Physics.Arcade.StaticGroup#world
     * @type {Phaser.Physics.Arcade.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.arcade.World;
    /**
     * The scene this group belongs to.
     *
     * @name Phaser.Physics.Arcade.StaticGroup#physicsType
     * @type {integer}
     * @default Phaser.Physics.Arcade.STATIC_BODY
     * @since 3.0.0
     */
    public var physicsType:Int;
    /**
     * Adds a static physics body to the new group member (if it lacks one) and adds it to the simulation.
     *
     * @method Phaser.Physics.Arcade.StaticGroup#createCallbackHandler
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The new group member.
     *
     * @see Phaser.Physics.Arcade.World#enableBody
     */
    public function createCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    /**
     * Disables the group member's physics body, removing it from the simulation.
     *
     * @method Phaser.Physics.Arcade.StaticGroup#removeCallbackHandler
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The group member being removed.
     *
     * @see Phaser.Physics.Arcade.World#disableBody
     */
    public function removeCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    /**
     * Refreshes the group.
     *
     * @method Phaser.Physics.Arcade.StaticGroup#createMultipleCallbackHandler
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject[]} entries - The newly created group members.
     *
     * @see Phaser.Physics.Arcade.StaticGroup#refresh
     */
    public function createMultipleCallbackHandler(entries:Array<phaser.gameobjects.GameObject>):Void;
    /**
     * Resets each Body to the position of its parent Game Object.
     * Body sizes aren't changed (use {@link Phaser.Physics.Arcade.Components.Enable#refreshBody} for that).
     *
     * @method Phaser.Physics.Arcade.StaticGroup#refresh
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Arcade.StaticGroup} This group.
     *
     * @see Phaser.Physics.Arcade.StaticBody#reset
     */
    public function refresh():phaser.physics.arcade.StaticGroup;
}
