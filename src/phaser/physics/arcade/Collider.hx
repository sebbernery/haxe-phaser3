package phaser.physics.arcade;

/**
 * @classdesc
 * [description]
 *
 * @class Collider
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Arcade.World} world - [description]
 * @param {boolean} overlapOnly - [description]
 * @param {ArcadeColliderType} object1 - The first object to check for collision.
 * @param {ArcadeColliderType} object2 - The second object to check for collision.
 * @param {ArcadePhysicsCallback} collideCallback - The callback to invoke when the two objects collide.
 * @param {ArcadePhysicsCallback} processCallback - The callback to invoke when the two objects collide. Must return a boolean.
 * @param {any} callbackContext - The scope in which to call the callbacks.
 */
@:native("Phaser.Physics.Arcade.Collider")
extern class Collider {
    public function new(world:phaser.physics.arcade.World, overlapOnly:Bool, object1:ArcadeColliderType, object2:ArcadeColliderType, collideCallback:ArcadePhysicsCallback, processCallback:ArcadePhysicsCallback, callbackContext:Dynamic);
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#world
     * @type {Phaser.Physics.Arcade.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.arcade.World;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#name
     * @type {string}
     * @since 3.1.0
     */
    public var name:String;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#active
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#overlapOnly
     * @type {boolean}
     * @since 3.0.0
     */
    public var overlapOnly:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#object1
     * @type {ArcadeColliderType}
     * @since 3.0.0
     */
    public var object1:ArcadeColliderType;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#object2
     * @type {ArcadeColliderType}
     * @since 3.0.0
     */
    public var object2:ArcadeColliderType;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#collideCallback
     * @type {ArcadePhysicsCallback}
     * @since 3.0.0
     */
    public var collideCallback:ArcadePhysicsCallback;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#processCallback
     * @type {ArcadePhysicsCallback}
     * @since 3.0.0
     */
    public var processCallback:ArcadePhysicsCallback;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Collider#callbackContext
     * @type {object}
     * @since 3.0.0
     */
    public var callbackContext:Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Collider#setName
     * @since 3.1.0
     *
     * @param {string} name - [description]
     *
     * @return {Phaser.Physics.Arcade.Collider} [description]
     */
    public function setName(name:String):phaser.physics.arcade.Collider;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Collider#update
     * @since 3.0.0
     */
    public function update():Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Collider#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
