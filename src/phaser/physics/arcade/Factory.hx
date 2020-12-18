package phaser.physics.arcade;

/**
 * @classdesc
 * The Arcade Physics Factory allows you to easily create Arcade Physics enabled Game Objects.
 * Objects that are created by this Factory are automatically added to the physics world.
 *
 * @class Factory
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Arcade.World} world - The Arcade Physics World instance.
 */
@:native("Phaser.Physics.Arcade.Factory")
extern class Factory {
    public function new(world:phaser.physics.arcade.World);
    /**
     * A reference to the Arcade Physics World.
     *
     * @name Phaser.Physics.Arcade.Factory#world
     * @type {Phaser.Physics.Arcade.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.arcade.World;
    /**
     * A reference to the Scene this Arcade Physics instance belongs to.
     *
     * @name Phaser.Physics.Arcade.Factory#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene.Systems this Arcade Physics instance belongs to.
     *
     * @name Phaser.Physics.Arcade.Factory#sys
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var sys:phaser.scenes.Systems;
    /**
     * Creates a new Arcade Physics Collider object.
     *
     * @method Phaser.Physics.Arcade.Factory#collider
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]|Phaser.GameObjects.Group|Phaser.GameObjects.Group[])} object1 - The first object to check for collision.
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]|Phaser.GameObjects.Group|Phaser.GameObjects.Group[])} object2 - The second object to check for collision.
     * @param {ArcadePhysicsCallback} [collideCallback] - The callback to invoke when the two objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - The callback to invoke when the two objects collide. Must return a boolean.
     * @param {*} [callbackContext] - The scope in which to call the callbacks.
     *
     * @return {Phaser.Physics.Arcade.Collider} The Collider that was created.
     */
    public function collider(object1:Dynamic, object2:Dynamic, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):phaser.physics.arcade.Collider;
    /**
     * Creates a new Arcade Physics Collider Overlap object.
     *
     * @method Phaser.Physics.Arcade.Factory#overlap
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]|Phaser.GameObjects.Group|Phaser.GameObjects.Group[])} object1 - The first object to check for overlap.
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]|Phaser.GameObjects.Group|Phaser.GameObjects.Group[])} object2 - The second object to check for overlap.
     * @param {ArcadePhysicsCallback} [collideCallback] - The callback to invoke when the two objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - The callback to invoke when the two objects collide. Must return a boolean.
     * @param {*} [callbackContext] - The scope in which to call the callbacks.
     *
     * @return {Phaser.Physics.Arcade.Collider} The Collider that was created.
     */
    public function overlap(object1:Dynamic, object2:Dynamic, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):phaser.physics.arcade.Collider;
    /**
     * Adds an Arcade Physics Body to the given Game Object.
     *
     * @method Phaser.Physics.Arcade.Factory#existing
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - A Game Object.
     * @param {boolean} [isStatic=false] - Create a Static body (true) or Dynamic body (false).
     *
     * @return {Phaser.Types.Physics.Arcade.GameObjectWithBody} The Game Object.
     */
    public function existing(gameObject:phaser.gameobjects.GameObject, ?isStatic:Bool):phaser.types.physics.arcade.GameObjectWithBody;
    /**
     * Creates a new Arcade Image object with a Static body.
     *
     * @method Phaser.Physics.Arcade.Factory#staticImage
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {(string|Phaser.Textures.Texture)} texture - The key, or instance of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.Types.Physics.Arcade.ImageWithStaticBody} The Image object that was created.
     */
    public function staticImage(x:Float, y:Float, texture:Dynamic, ?frame:Dynamic):phaser.types.physics.arcade.ImageWithStaticBody;
    /**
     * Creates a new Arcade Image object with a Dynamic body.
     *
     * @method Phaser.Physics.Arcade.Factory#image
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {(string|Phaser.Textures.Texture)} texture - The key, or instance of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.Types.Physics.Arcade.ImageWithDynamicBody} The Image object that was created.
     */
    public function image(x:Float, y:Float, texture:Dynamic, ?frame:Dynamic):phaser.types.physics.arcade.ImageWithDynamicBody;
    /**
     * Creates a new Arcade Sprite object with a Static body.
     *
     * @method Phaser.Physics.Arcade.Factory#staticSprite
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {(string|Phaser.Textures.Texture)} texture - The key, or instance of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.Types.Physics.Arcade.SpriteWithStaticBody} The Sprite object that was created.
     */
    public function staticSprite(x:Float, y:Float, texture:Dynamic, ?frame:Dynamic):phaser.types.physics.arcade.SpriteWithStaticBody;
    /**
     * Creates a new Arcade Sprite object with a Dynamic body.
     *
     * @method Phaser.Physics.Arcade.Factory#sprite
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} key - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.Types.Physics.Arcade.SpriteWithDynamicBody} The Sprite object that was created.
     */
    public function sprite(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.types.physics.arcade.SpriteWithDynamicBody;
    /**
     * Creates a Static Physics Group object.
     * All Game Objects created by this Group will automatically be static Arcade Physics objects.
     *
     * @method Phaser.Physics.Arcade.Factory#staticGroup
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject[]|Phaser.Types.GameObjects.Group.GroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig)} [children] - Game Objects to add to this group; or the `config` argument.
     * @param {Phaser.Types.GameObjects.Group.GroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig} [config] - Settings for this group.
     *
     * @return {Phaser.Physics.Arcade.StaticGroup} The Static Group object that was created.
     */
    public function staticGroup(?children:Dynamic, ?config:Dynamic):phaser.physics.arcade.StaticGroup;
    /**
     * Creates a Physics Group object.
     * All Game Objects created by this Group will automatically be dynamic Arcade Physics objects.
     *
     * @method Phaser.Physics.Arcade.Factory#group
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject[]|Phaser.Types.Physics.Arcade.PhysicsGroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig)} [children] - Game Objects to add to this group; or the `config` argument.
     * @param {Phaser.Types.Physics.Arcade.PhysicsGroupConfig|Phaser.Types.GameObjects.Group.GroupCreateConfig} [config] - Settings for this group.
     *
     * @return {Phaser.Physics.Arcade.Group} The Group object that was created.
     */
    public function group(?children:Dynamic, ?config:Dynamic):phaser.physics.arcade.Group;
    /**
     * Destroys this Factory.
     *
     * @method Phaser.Physics.Arcade.Factory#destroy
     * @since 3.5.0
     */
    public function destroy():Void;
}
