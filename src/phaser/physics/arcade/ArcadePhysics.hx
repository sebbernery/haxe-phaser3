package phaser.physics.arcade;

/**
 * @classdesc
 * The Arcade Physics Plugin belongs to a Scene and sets up and manages the Scene's physics simulation.
 * It also holds some useful methods for moving and rotating Arcade Physics Bodies.
 *
 * You can access it from within a Scene using `this.physics`.
 *
 * Arcade Physics uses the Projection Method of collision resolution and separation. While it's fast and suitable
 * for 'arcade' style games it lacks stability when multiple objects are in close proximity or resting upon each other.
 * The separation that stops two objects penetrating may create a new penetration against a different object. If you
 * require a high level of stability please consider using an alternative physics system, such as Matter.js.
 *
 * @class ArcadePhysics
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene that this Plugin belongs to.
 */
@:native("Phaser.Physics.Arcade.ArcadePhysics")
extern class ArcadePhysics {
    public function new(scene:phaser.Scene);
    /**
     * The Scene that this Plugin belongs to.
     *
     * @name Phaser.Physics.Arcade.ArcadePhysics#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * The Scene's Systems.
     *
     * @name Phaser.Physics.Arcade.ArcadePhysics#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * A configuration object. Union of the `physics.arcade.*` properties of the GameConfig and SceneConfig objects.
     *
     * @name Phaser.Physics.Arcade.ArcadePhysics#config
     * @type {object}
     * @since 3.0.0
     */
    public var config:Dynamic;
    /**
     * The physics simulation.
     *
     * @name Phaser.Physics.Arcade.ArcadePhysics#world
     * @type {Phaser.Physics.Arcade.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.arcade.World;
    /**
     * An object holding the Arcade Physics factory methods.
     *
     * @name Phaser.Physics.Arcade.ArcadePhysics#add
     * @type {Phaser.Physics.Arcade.Factory}
     * @since 3.0.0
     */
    public var add:phaser.physics.arcade.Factory;
    /**
     * Creates the physics configuration for the current Scene.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#getConfig
     * @since 3.0.0
     *
     * @return {object} The physics configuration.
     */
    public function getConfig():Dynamic;
    /**
     * Tests if Game Objects overlap. See {@link Phaser.Physics.Arcade.World#overlap}
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#overlap
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object1 - The first object or array of objects to check.
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} [object2] - The second object or array of objects to check, or `undefined`.
     * @param {ArcadePhysicsCallback} [collideCallback] - An optional callback function that is called if the objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two objects if they overlap. If this is set then `collideCallback` will only be called if this callback returns `true`.
     * @param {*} [callbackContext] - The context in which to run the callbacks.
     *
     * @return {boolean} True if at least one Game Object overlaps another.
     *
     * @see Phaser.Physics.Arcade.World#overlap
     */
    public function overlap(object1:phaser.types.physics.arcade.ArcadeColliderType, ?object2:phaser.types.physics.arcade.ArcadeColliderType, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
    /**
     * Performs a collision check and separation between the two physics enabled objects given, which can be single
     * Game Objects, arrays of Game Objects, Physics Groups, arrays of Physics Groups or normal Groups.
     *
     * If you don't require separation then use {@link #overlap} instead.
     *
     * If two Groups or arrays are passed, each member of one will be tested against each member of the other.
     *
     * If **only** one Group is passed (as `object1`), each member of the Group will be collided against the other members.
     *
     * If **only** one Array is passed, the array is iterated and every element in it is tested against the others.
     *
     * Two callbacks can be provided. The `collideCallback` is invoked if a collision occurs and the two colliding
     * objects are passed to it.
     *
     * Arcade Physics uses the Projection Method of collision resolution and separation. While it's fast and suitable
     * for 'arcade' style games it lacks stability when multiple objects are in close proximity or resting upon each other.
     * The separation that stops two objects penetrating may create a new penetration against a different object. If you
     * require a high level of stability please consider using an alternative physics system, such as Matter.js.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#collide
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object1 - The first object or array of objects to check.
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} [object2] - The second object or array of objects to check, or `undefined`.
     * @param {ArcadePhysicsCallback} [collideCallback] - An optional callback function that is called if the objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two objects if they collide. If this is set then `collideCallback` will only be called if this callback returns `true`.
     * @param {*} [callbackContext] - The context in which to run the callbacks.
     *
     * @return {boolean} True if any overlapping Game Objects were separated, otherwise false.
     *
     * @see Phaser.Physics.Arcade.World#collide
     */
    public function collide(object1:phaser.types.physics.arcade.ArcadeColliderType, ?object2:phaser.types.physics.arcade.ArcadeColliderType, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
    /**
     * This advanced method is specifically for testing for collision between a single Sprite and an array of Tile objects.
     *
     * You should generally use the `collide` method instead, with a Sprite vs. a Tilemap Layer, as that will perform
     * tile filtering and culling for you, as well as handle the interesting face collision automatically.
     *
     * This method is offered for those who would like to check for collision with specific Tiles in a layer, without
     * having to set any collision attributes on the tiles in question. This allows you to perform quick dynamic collisions
     * on small sets of Tiles. As such, no culling or checks are made to the array of Tiles given to this method,
     * you should filter them before passing them to this method.
     *
     * Important: Use of this method skips the `interesting faces` system that Tilemap Layers use. This means if you have
     * say a row or column of tiles, and you jump into, or walk over them, it's possible to get stuck on the edges of the
     * tiles as the interesting face calculations are skipped. However, for quick-fire small collision set tests on
     * dynamic maps, this method can prove very useful.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#collideTiles
     * @fires Phaser.Physics.Arcade.Events#TILE_COLLIDE
     * @since 3.17.0
     *
     * @param {Phaser.GameObjects.GameObject} sprite - The first object to check for collision.
     * @param {Phaser.Tilemaps.Tile[]} tiles - An array of Tiles to check for collision against.
     * @param {ArcadePhysicsCallback} [collideCallback] - An optional callback function that is called if the objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two objects if they collide. If this is set then `collideCallback` will only be called if this callback returns `true`.
     * @param {any} [callbackContext] - The context in which to run the callbacks.
     *
     * @return {boolean} True if any objects overlap (with `overlapOnly`); or true if any overlapping objects were separated.
     */
    public function collideTiles(sprite:phaser.gameobjects.GameObject, tiles:Array<phaser.tilemaps.Tile>, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
    /**
     * This advanced method is specifically for testing for overlaps between a single Sprite and an array of Tile objects.
     *
     * You should generally use the `overlap` method instead, with a Sprite vs. a Tilemap Layer, as that will perform
     * tile filtering and culling for you, as well as handle the interesting face collision automatically.
     *
     * This method is offered for those who would like to check for overlaps with specific Tiles in a layer, without
     * having to set any collision attributes on the tiles in question. This allows you to perform quick dynamic overlap
     * tests on small sets of Tiles. As such, no culling or checks are made to the array of Tiles given to this method,
     * you should filter them before passing them to this method.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#overlapTiles
     * @fires Phaser.Physics.Arcade.Events#TILE_OVERLAP
     * @since 3.17.0
     *
     * @param {Phaser.GameObjects.GameObject} sprite - The first object to check for collision.
     * @param {Phaser.Tilemaps.Tile[]} tiles - An array of Tiles to check for collision against.
     * @param {ArcadePhysicsCallback} [collideCallback] - An optional callback function that is called if the objects overlap.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two objects if they collide. If this is set then `collideCallback` will only be called if this callback returns `true`.
     * @param {any} [callbackContext] - The context in which to run the callbacks.
     *
     * @return {boolean} True if any objects overlap (with `overlapOnly`); or true if any overlapping objects were separated.
     */
    public function overlapTiles(sprite:phaser.gameobjects.GameObject, tiles:Array<phaser.tilemaps.Tile>, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
    /**
     * Pauses the simulation.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#pause
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Arcade.World} The simulation.
     */
    public function pause():phaser.physics.arcade.World;
    /**
     * Resumes the simulation (if paused).
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#resume
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Arcade.World} The simulation.
     */
    public function resume():phaser.physics.arcade.World;
    /**
     * Sets the acceleration.x/y property on the game object so it will move towards the x/y coordinates at the given rate (in pixels per second squared)
     *
     * You must give a maximum speed value, beyond which the game object won't go any faster.
     *
     * Note: The game object does not continuously track the target. If the target changes location during transit the game object will not modify its course.
     * Note: The game object doesn't stop moving once it reaches the destination coordinates.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#accelerateTo
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - Any Game Object with an Arcade Physics body.
     * @param {number} x - The x coordinate to accelerate towards.
     * @param {number} y - The y coordinate to accelerate towards.
     * @param {number} [speed=60] - The acceleration (change in speed) in pixels per second squared.
     * @param {number} [xSpeedMax=500] - The maximum x velocity the game object can reach.
     * @param {number} [ySpeedMax=500] - The maximum y velocity the game object can reach.
     *
     * @return {number} The angle (in radians) that the object should be visually set to in order to match its new velocity.
     */
    public function accelerateTo(gameObject:phaser.gameobjects.GameObject, x:Float, y:Float, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
    /**
     * Sets the acceleration.x/y property on the game object so it will move towards the x/y coordinates at the given rate (in pixels per second squared)
     *
     * You must give a maximum speed value, beyond which the game object won't go any faster.
     *
     * Note: The game object does not continuously track the target. If the target changes location during transit the game object will not modify its course.
     * Note: The game object doesn't stop moving once it reaches the destination coordinates.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#accelerateToObject
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - Any Game Object with an Arcade Physics body.
     * @param {Phaser.GameObjects.GameObject} destination - The Game Object to move towards. Can be any object but must have visible x/y properties.
     * @param {number} [speed=60] - The acceleration (change in speed) in pixels per second squared.
     * @param {number} [xSpeedMax=500] - The maximum x velocity the game object can reach.
     * @param {number} [ySpeedMax=500] - The maximum y velocity the game object can reach.
     *
     * @return {number} The angle (in radians) that the object should be visually set to in order to match its new velocity.
     */
    public function accelerateToObject(gameObject:phaser.gameobjects.GameObject, destination:phaser.gameobjects.GameObject, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
    /**
     * Finds the Dynamic Body closest to a source point or object.
     *
     * If two or more bodies are the exact same distance from the source point, only the first body
     * is returned.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#closest
     * @since 3.0.0
     *
     * @param {any} source - Any object with public `x` and `y` properties, such as a Game Object or Geometry object.
     *
     * @return {Phaser.Physics.Arcade.Body} The closest Dynamic Body to the given source point.
     */
    public function closest(source:Dynamic):phaser.physics.arcade.Body;
    /**
     * Finds the Dynamic Body farthest from a source point or object.
     *
     * If two or more bodies are the exact same distance from the source point, only the first body
     * is returned.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#furthest
     * @since 3.0.0
     *
     * @param {any} source - Any object with public `x` and `y` properties, such as a Game Object or Geometry object.
     *
     * @return {Phaser.Physics.Arcade.Body} The Dynamic Body furthest away from the given source point.
     */
    public function furthest(source:Dynamic):phaser.physics.arcade.Body;
    /**
     * Move the given display object towards the x/y coordinates at a steady velocity.
     * If you specify a maxTime then it will adjust the speed (over-writing what you set) so it arrives at the destination in that number of seconds.
     * Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
     * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
     * Note: The display object doesn't stop moving once it reaches the destination coordinates.
     * Note: Doesn't take into account acceleration, maxVelocity or drag (if you've set drag or acceleration too high this object may not move at all)
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#moveTo
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - Any Game Object with an Arcade Physics body.
     * @param {number} x - The x coordinate to move towards.
     * @param {number} y - The y coordinate to move towards.
     * @param {number} [speed=60] - The speed it will move, in pixels per second (default is 60 pixels/sec)
     * @param {number} [maxTime=0] - Time given in milliseconds (1000 = 1 sec). If set the speed is adjusted so the object will arrive at destination in the given number of ms.
     *
     * @return {number} The angle (in radians) that the object should be visually set to in order to match its new velocity.
     */
    public function moveTo(gameObject:phaser.gameobjects.GameObject, x:Float, y:Float, ?speed:Float, ?maxTime:Float):Float;
    /**
     * Move the given display object towards the destination object at a steady velocity.
     * If you specify a maxTime then it will adjust the speed (overwriting what you set) so it arrives at the destination in that number of seconds.
     * Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
     * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
     * Note: The display object doesn't stop moving once it reaches the destination coordinates.
     * Note: Doesn't take into account acceleration, maxVelocity or drag (if you've set drag or acceleration too high this object may not move at all)
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#moveToObject
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - Any Game Object with an Arcade Physics body.
     * @param {object} destination - Any object with public `x` and `y` properties, such as a Game Object or Geometry object.
     * @param {number} [speed=60] - The speed it will move, in pixels per second (default is 60 pixels/sec)
     * @param {number} [maxTime=0] - Time given in milliseconds (1000 = 1 sec). If set the speed is adjusted so the object will arrive at destination in the given number of ms.
     *
     * @return {number} The angle (in radians) that the object should be visually set to in order to match its new velocity.
     */
    public function moveToObject(gameObject:phaser.gameobjects.GameObject, destination:Dynamic, ?speed:Float, ?maxTime:Float):Float;
    /**
     * Given the angle (in degrees) and speed calculate the velocity and return it as a vector, or set it to the given vector object.
     * One way to use this is: velocityFromAngle(angle, 200, sprite.body.velocity) which will set the values directly to the sprite's velocity and not create a new vector object.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#velocityFromAngle
     * @since 3.0.0
     *
     * @param {number} angle - The angle in degrees calculated in clockwise positive direction (down = 90 degrees positive, right = 0 degrees positive, up = 90 degrees negative)
     * @param {number} [speed=60] - The speed it will move, in pixels per second squared.
     * @param {Phaser.Math.Vector2} [vec2] - The Vector2 in which the x and y properties will be set to the calculated velocity.
     *
     * @return {Phaser.Math.Vector2} The Vector2 that stores the velocity.
     */
    public function velocityFromAngle(angle:Float, ?speed:Float, ?vec2:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Given the rotation (in radians) and speed calculate the velocity and return it as a vector, or set it to the given vector object.
     * One way to use this is: velocityFromRotation(rotation, 200, sprite.body.velocity) which will set the values directly to the sprite's velocity and not create a new vector object.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#velocityFromRotation
     * @since 3.0.0
     *
     * @param {number} rotation - The angle in radians.
     * @param {number} [speed=60] - The speed it will move, in pixels per second squared
     * @param {Phaser.Math.Vector2} [vec2] - The Vector2 in which the x and y properties will be set to the calculated velocity.
     *
     * @return {Phaser.Math.Vector2} The Vector2 that stores the velocity.
     */
    public function velocityFromRotation(rotation:Float, ?speed:Float, ?vec2:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * This method will search the given rectangular area and return an array of all physics bodies that
     * overlap with it. It can return either Dynamic, Static bodies or a mixture of both.
     *
     * A body only has to intersect with the search area to be considered, it doesn't have to be fully
     * contained within it.
     *
     * If Arcade Physics is set to use the RTree (which it is by default) then the search for is extremely fast,
     * otherwise the search is O(N) for Dynamic Bodies.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#overlapRect
     * @since 3.17.0
     *
     * @param {number} x - The top-left x coordinate of the area to search within.
     * @param {number} y - The top-left y coordinate of the area to search within.
     * @param {number} width - The width of the area to search within.
     * @param {number} height - The height of the area to search within.
     * @param {boolean} [includeDynamic=true] - Should the search include Dynamic Bodies?
     * @param {boolean} [includeStatic=false] - Should the search include Static Bodies?
     *
     * @return {(Phaser.Physics.Arcade.Body[]|Phaser.Physics.Arcade.StaticBody[])} An array of bodies that overlap with the given area.
     */
    public function overlapRect(x:Float, y:Float, width:Float, height:Float, ?includeDynamic:Bool, ?includeStatic:Bool):Array<phaser.physics.arcade.Body>;
    /**
     * The Scene that owns this plugin is shutting down.
     * We need to kill and reset all internal properties as well as stop listening to Scene events.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#shutdown
     * @since 3.0.0
     */
    public function shutdown():Void;
    /**
     * The Scene that owns this plugin is being destroyed.
     * We need to shutdown and then kill off all external references.
     *
     * @method Phaser.Physics.Arcade.ArcadePhysics#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
