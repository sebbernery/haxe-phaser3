package phaser.physics.arcade;

/**
 * @classdesc
 * An Arcade Physics Collider will automatically check for collision, or overlaps, between two objects
 * every step. If a collision, or overlap, occurs it will invoke the given callbacks.
 *
 * @class Collider
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Arcade.World} world - The Arcade physics World that will manage the collisions.
 * @param {boolean} overlapOnly - Whether to check for collisions or overlap.
 * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object1 - The first object to check for collision.
 * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object2 - The second object to check for collision.
 * @param {ArcadePhysicsCallback} collideCallback - The callback to invoke when the two objects collide.
 * @param {ArcadePhysicsCallback} processCallback - The callback to invoke when the two objects collide. Must return a boolean.
 * @param {any} callbackContext - The scope in which to call the callbacks.
 */
@:native("Phaser.Physics.Arcade.Collider")
extern class Collider {
    public function new(world:phaser.physics.arcade.World, overlapOnly:Bool, object1:phaser.types.physics.arcade.ArcadeColliderType, object2:phaser.types.physics.arcade.ArcadeColliderType, collideCallback:ArcadePhysicsCallback, processCallback:ArcadePhysicsCallback, callbackContext:Dynamic);
    /**
     * The world in which the bodies will collide.
     *
     * @name Phaser.Physics.Arcade.Collider#world
     * @type {Phaser.Physics.Arcade.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.arcade.World;
    /**
     * The name of the collider (unused by Phaser).
     *
     * @name Phaser.Physics.Arcade.Collider#name
     * @type {string}
     * @since 3.1.0
     */
    public var name:String;
    /**
     * Whether the collider is active.
     *
     * @name Phaser.Physics.Arcade.Collider#active
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * Whether to check for collisions or overlaps.
     *
     * @name Phaser.Physics.Arcade.Collider#overlapOnly
     * @type {boolean}
     * @since 3.0.0
     */
    public var overlapOnly:Bool;
    /**
     * The first object to check for collision.
     *
     * @name Phaser.Physics.Arcade.Collider#object1
     * @type {Phaser.Types.Physics.Arcade.ArcadeColliderType}
     * @since 3.0.0
     */
    public var object1:phaser.types.physics.arcade.ArcadeColliderType;
    /**
     * The second object to check for collision.
     *
     * @name Phaser.Physics.Arcade.Collider#object2
     * @type {Phaser.Types.Physics.Arcade.ArcadeColliderType}
     * @since 3.0.0
     */
    public var object2:phaser.types.physics.arcade.ArcadeColliderType;
    /**
     * The callback to invoke when the two objects collide.
     *
     * @name Phaser.Physics.Arcade.Collider#collideCallback
     * @type {ArcadePhysicsCallback}
     * @since 3.0.0
     */
    public var collideCallback:ArcadePhysicsCallback;
    /**
     * If a processCallback exists it must return true or collision checking will be skipped.
     *
     * @name Phaser.Physics.Arcade.Collider#processCallback
     * @type {ArcadePhysicsCallback}
     * @since 3.0.0
     */
    public var processCallback:ArcadePhysicsCallback;
    /**
     * The context the collideCallback and processCallback will run in.
     *
     * @name Phaser.Physics.Arcade.Collider#callbackContext
     * @type {object}
     * @since 3.0.0
     */
    public var callbackContext:Dynamic;
    /**
     * A name for the Collider.
     *
     * Phaser does not use this value, it's for your own reference.
     *
     * @method Phaser.Physics.Arcade.Collider#setName
     * @since 3.1.0
     *
     * @param {string} name - The name to assign to the Collider.
     *
     * @return {Phaser.Physics.Arcade.Collider} This Collider instance.
     */
    public function setName(name:String):phaser.physics.arcade.Collider;
    /**
     * Called by World as part of its step processing, initial operation of collision checking.
     *
     * @method Phaser.Physics.Arcade.Collider#update
     * @since 3.0.0
     */
    public function update():Void;
    /**
     * Removes Collider from World and disposes of its resources.
     *
     * @method Phaser.Physics.Arcade.Collider#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
