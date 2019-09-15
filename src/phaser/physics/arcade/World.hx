package phaser.physics.arcade;

/**
 * @classdesc
 * The Arcade Physics World.
 *
 * The World is responsible for creating, managing, colliding and updating all of the bodies within it.
 *
 * An instance of the World belongs to a Phaser.Scene and is accessed via the property `physics.world`.
 *
 * @class World
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this World instance belongs.
 * @param {Phaser.Types.Physics.Arcade.ArcadeWorldConfig} config - An Arcade Physics Configuration object.
 */
@:native("Phaser.Physics.Arcade.World")
extern class World extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene, config:phaser.types.physics.arcade.ArcadeWorldConfig);
    /**
     * The Scene this simulation belongs to.
     *
     * @name Phaser.Physics.Arcade.World#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * Dynamic Bodies in this simulation.
     *
     * @name Phaser.Physics.Arcade.World#bodies
     * @type {Phaser.Structs.Set.<Phaser.Physics.Arcade.Body>}
     * @since 3.0.0
     */
    public var bodies:Dynamic;
    /**
     * Static Bodies in this simulation.
     *
     * @name Phaser.Physics.Arcade.World#staticBodies
     * @type {Phaser.Structs.Set.<Phaser.Physics.Arcade.StaticBody>}
     * @since 3.0.0
     */
    public var staticBodies:Dynamic;
    /**
     * Static Bodies marked for deletion.
     *
     * @name Phaser.Physics.Arcade.World#pendingDestroy
     * @type {Phaser.Structs.Set.<(Phaser.Physics.Arcade.Body|Phaser.Physics.Arcade.StaticBody)>}
     * @since 3.1.0
     */
    public var pendingDestroy:Dynamic;
    /**
     * This simulation's collision processors.
     *
     * @name Phaser.Physics.Arcade.World#colliders
     * @type {Phaser.Structs.ProcessQueue.<Phaser.Physics.Arcade.Collider>}
     * @since 3.0.0
     */
    public var colliders:Dynamic;
    /**
     * Acceleration of Bodies due to gravity, in pixels per second.
     *
     * @name Phaser.Physics.Arcade.World#gravity
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var gravity:phaser.math.Vector2;
    /**
     * A boundary constraining Bodies.
     *
     * @name Phaser.Physics.Arcade.World#bounds
     * @type {Phaser.Geom.Rectangle}
     * @since 3.0.0
     */
    public var bounds:phaser.geom.Rectangle;
    /**
     * The boundary edges that Bodies can collide with.
     *
     * @name Phaser.Physics.Arcade.World#checkCollision
     * @type {Phaser.Types.Physics.Arcade.CheckCollisionObject}
     * @since 3.0.0
     */
    public var checkCollision:phaser.types.physics.arcade.CheckCollisionObject;
    /**
     * The number of physics steps to be taken per second.
     *
     * This property is read-only. Use the `setFPS` method to modify it at run-time.
     *
     * @name Phaser.Physics.Arcade.World#fps
     * @readonly
     * @type {number}
     * @default 60
     * @since 3.10.0
     */
    public var fps:Float;
    /**
     * The number of steps that took place in the last frame.
     *
     * @name Phaser.Physics.Arcade.World#stepsLastFrame
     * @readonly
     * @type {number}
     * @since 3.10.0
     */
    public var stepsLastFrame:Float;
    /**
     * Scaling factor applied to the frame rate.
     *
     * - 1.0 = normal speed
     * - 2.0 = half speed
     * - 0.5 = double speed
     *
     * @name Phaser.Physics.Arcade.World#timeScale
     * @type {number}
     * @default 1
     * @since 3.10.0
     */
    public var timeScale:Float;
    /**
     * The maximum absolute difference of a Body's per-step velocity and its overlap with another Body that will result in separation on *each axis*.
     * Larger values favor separation.
     * Smaller values favor no separation.
     *
     * @name Phaser.Physics.Arcade.World#OVERLAP_BIAS
     * @type {number}
     * @default 4
     * @since 3.0.0
     */
    public var OVERLAP_BIAS:Float;
    /**
     * The maximum absolute value of a Body's overlap with a tile that will result in separation on *each axis*.
     * Larger values favor separation.
     * Smaller values favor no separation.
     * The optimum value may be similar to the tile size.
     *
     * @name Phaser.Physics.Arcade.World#TILE_BIAS
     * @type {number}
     * @default 16
     * @since 3.0.0
     */
    public var TILE_BIAS:Float;
    /**
     * Always separate overlapping Bodies horizontally before vertically.
     * False (the default) means Bodies are first separated on the axis of greater gravity, or the vertical axis if neither is greater.
     *
     * @name Phaser.Physics.Arcade.World#forceX
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var forceX:Bool;
    /**
     * Whether the simulation advances with the game loop.
     *
     * @name Phaser.Physics.Arcade.World#isPaused
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var isPaused:Bool;
    /**
     * Enables the debug display.
     *
     * @name Phaser.Physics.Arcade.World#drawDebug
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var drawDebug:Bool;
    /**
     * The graphics object drawing the debug display.
     *
     * @name Phaser.Physics.Arcade.World#debugGraphic
     * @type {Phaser.GameObjects.Graphics}
     * @since 3.0.0
     */
    public var debugGraphic:phaser.gameobjects.Graphics;
    /**
     * Default debug display settings for new Bodies.
     *
     * @name Phaser.Physics.Arcade.World#defaults
     * @type {Phaser.Types.Physics.Arcade.ArcadeWorldDefaults}
     * @since 3.0.0
     */
    public var defaults:phaser.types.physics.arcade.ArcadeWorldDefaults;
    /**
     * The maximum number of items per node on the RTree.
     *
     * This is ignored if `useTree` is `false`. If you have a large number of bodies in
     * your world then you may find search performance improves by increasing this value,
     * to allow more items per node and less node division.
     *
     * @name Phaser.Physics.Arcade.World#maxEntries
     * @type {integer}
     * @default 16
     * @since 3.0.0
     */
    public var maxEntries:Int;
    /**
     * Should this Arcade Physics World use an RTree for Dynamic and Static Physics bodies?
     *
     * An RTree is a fast way of spatially sorting of all the bodies in the world.
     * However, at certain limits, the cost of clearing and inserting the bodies into the
     * tree every frame becomes more expensive than the search speed gains it provides.
     *
     * If you have a large number of dynamic bodies in your world then it may be best to
     * disable the use of the RTree by setting this property to `false` in the physics config.
     *
     * The number it can cope with depends on browser and device, but a conservative estimate
     * of around 5,000 bodies should be considered the max before disabling it.
     *
     * This only applies to dynamic bodies. Static bodies are always kept in an RTree,
     * because they don't have to be cleared every frame, so you benefit from the
     * massive search speeds all the time.
     *
     * @name Phaser.Physics.Arcade.World#useTree
     * @type {boolean}
     * @default true
     * @since 3.10.0
     */
    public var useTree:Bool;
    /**
     * The spatial index of Dynamic Bodies.
     *
     * @name Phaser.Physics.Arcade.World#tree
     * @type {Phaser.Structs.RTree}
     * @since 3.0.0
     */
    public var tree:phaser.structs.RTree;
    /**
     * The spatial index of Static Bodies.
     *
     * @name Phaser.Physics.Arcade.World#staticTree
     * @type {Phaser.Structs.RTree}
     * @since 3.0.0
     */
    public var staticTree:phaser.structs.RTree;
    /**
     * Recycled input for tree searches.
     *
     * @name Phaser.Physics.Arcade.World#treeMinMax
     * @type {Phaser.Types.Physics.Arcade.ArcadeWorldTreeMinMax}
     * @since 3.0.0
     */
    public var treeMinMax:phaser.types.physics.arcade.ArcadeWorldTreeMinMax;
    /**
     * Adds an Arcade Physics Body to a Game Object, an array of Game Objects, or the children of a Group.
     *
     * The difference between this and the `enableBody` method is that you can pass arrays or Groups
     * to this method.
     *
     * You can specify if the bodies are to be Dynamic or Static. A dynamic body can move via velocity and
     * acceleration. A static body remains fixed in place and as such is able to use an optimized search
     * tree, making it ideal for static elements such as level objects. You can still collide and overlap
     * with static bodies.
     *
     * Normally, rather than calling this method directly, you'd use the helper methods available in the
     * Arcade Physics Factory, such as:
     *
     * ```javascript
     * this.physics.add.image(x, y, textureKey);
     * this.physics.add.sprite(x, y, textureKey);
     * ```
     *
     * Calling factory methods encapsulates the creation of a Game Object and the creation of its
     * body at the same time. If you are creating custom classes then you can pass them to this
     * method to have their bodies created.
     *
     * @method Phaser.Physics.Arcade.World#enable
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]|Phaser.GameObjects.Group|Phaser.GameObjects.Group[])} object - The object, or objects, on which to create the bodies.
     * @param {integer} [bodyType] - The type of Body to create. Either `DYNAMIC_BODY` or `STATIC_BODY`.
     */
    public function enable(object:Dynamic, ?bodyType:Int):Void;
    /**
     * Creates an Arcade Physics Body on a single Game Object.
     *
     * If the Game Object already has a body, this method will simply add it back into the simulation.
     *
     * You can specify if the body is Dynamic or Static. A dynamic body can move via velocity and
     * acceleration. A static body remains fixed in place and as such is able to use an optimized search
     * tree, making it ideal for static elements such as level objects. You can still collide and overlap
     * with static bodies.
     *
     * Normally, rather than calling this method directly, you'd use the helper methods available in the
     * Arcade Physics Factory, such as:
     *
     * ```javascript
     * this.physics.add.image(x, y, textureKey);
     * this.physics.add.sprite(x, y, textureKey);
     * ```
     *
     * Calling factory methods encapsulates the creation of a Game Object and the creation of its
     * body at the same time. If you are creating custom classes then you can pass them to this
     * method to have their bodies created.
     *
     * @method Phaser.Physics.Arcade.World#enableBody
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} object - The Game Object on which to create the body.
     * @param {integer} [bodyType] - The type of Body to create. Either `DYNAMIC_BODY` or `STATIC_BODY`.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object on which the body was created.
     */
    public function enableBody(object:phaser.gameobjects.GameObject, ?bodyType:Int):phaser.gameobjects.GameObject;
    /**
     * Adds an existing Arcade Physics Body or StaticBody to the simulation.
     *
     * The body is enabled and added to the local search trees.
     *
     * @method Phaser.Physics.Arcade.World#add
     * @since 3.10.0
     *
     * @param {(Phaser.Physics.Arcade.Body|Phaser.Physics.Arcade.StaticBody)} body - The Body to be added to the simulation.
     *
     * @return {(Phaser.Physics.Arcade.Body|Phaser.Physics.Arcade.StaticBody)} The Body that was added to the simulation.
     */
    public function add(body:Dynamic):phaser.physics.arcade.Body;
    /**
     * Disables the Arcade Physics Body of a Game Object, an array of Game Objects, or the children of a Group.
     *
     * The difference between this and the `disableBody` method is that you can pass arrays or Groups
     * to this method.
     *
     * The body itself is not deleted, it just has its `enable` property set to false, which
     * means you can re-enable it again at any point by passing it to enable `World.enable` or `World.add`.
     *
     * @method Phaser.Physics.Arcade.World#disable
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]|Phaser.GameObjects.Group|Phaser.GameObjects.Group[])} object - The object, or objects, on which to disable the bodies.
     */
    public function disable(object:Dynamic):Void;
    /**
     * Disables an existing Arcade Physics Body or StaticBody and removes it from the simulation.
     *
     * The body is disabled and removed from the local search trees.
     *
     * The body itself is not deleted, it just has its `enable` property set to false, which
     * means you can re-enable it again at any point by passing it to enable `World.enable` or `World.add`.
     *
     * @method Phaser.Physics.Arcade.World#disableBody
     * @since 3.0.0
     *
     * @param {(Phaser.Physics.Arcade.Body|Phaser.Physics.Arcade.StaticBody)} body - The Body to be disabled.
     */
    public function disableBody(body:Dynamic):Void;
    /**
     * Removes an existing Arcade Physics Body or StaticBody from the simulation.
     *
     * The body is disabled and removed from the local search trees.
     *
     * The body itself is not deleted, it just has its `enabled` property set to false, which
     * means you can re-enable it again at any point by passing it to enable `enable` or `add`.
     *
     * @method Phaser.Physics.Arcade.World#remove
     * @since 3.0.0
     *
     * @param {(Phaser.Physics.Arcade.Body|Phaser.Physics.Arcade.StaticBody)} body - The body to be removed from the simulation.
     */
    public function remove(body:Dynamic):Void;
    /**
     * Creates a Graphics Game Object that the world will use to render the debug display to.
     *
     * This is called automatically when the World is instantiated if the `debug` config property
     * was set to `true`. However, you can call it at any point should you need to display the
     * debug Graphic from a fixed point.
     *
     * You can control which objects are drawn to the Graphics object, and the colors they use,
     * by setting the debug properties in the physics config.
     *
     * You should not typically use this in a production game. Use it to aid during debugging.
     *
     * @method Phaser.Physics.Arcade.World#createDebugGraphic
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Graphics} The Graphics object that was created for use by the World.
     */
    public function createDebugGraphic():phaser.gameobjects.Graphics;
    /**
     * Sets the position, size and properties of the World boundary.
     *
     * The World boundary is an invisible rectangle that defines the edges of the World.
     * If a Body is set to collide with the world bounds then it will automatically stop
     * when it reaches any of the edges. You can optionally set which edges of the boundary
     * should be checked against.
     *
     * @method Phaser.Physics.Arcade.World#setBounds
     * @since 3.0.0
     *
     * @param {number} x - The top-left x coordinate of the boundary.
     * @param {number} y - The top-left y coordinate of the boundary.
     * @param {number} width - The width of the boundary.
     * @param {number} height - The height of the boundary.
     * @param {boolean} [checkLeft] - Should bodies check against the left edge of the boundary?
     * @param {boolean} [checkRight] - Should bodies check against the right edge of the boundary?
     * @param {boolean} [checkUp] - Should bodies check against the top edge of the boundary?
     * @param {boolean} [checkDown] - Should bodies check against the bottom edge of the boundary?
     *
     * @return {Phaser.Physics.Arcade.World} This World object.
     */
    public function setBounds(x:Float, y:Float, width:Float, height:Float, ?checkLeft:Bool, ?checkRight:Bool, ?checkUp:Bool, ?checkDown:Bool):phaser.physics.arcade.World;
    /**
     * Enables or disables collisions on each edge of the World boundary.
     *
     * @method Phaser.Physics.Arcade.World#setBoundsCollision
     * @since 3.0.0
     *
     * @param {boolean} [left=true] - Should bodies check against the left edge of the boundary?
     * @param {boolean} [right=true] - Should bodies check against the right edge of the boundary?
     * @param {boolean} [up=true] - Should bodies check against the top edge of the boundary?
     * @param {boolean} [down=true] - Should bodies check against the bottom edge of the boundary?
     *
     * @return {Phaser.Physics.Arcade.World} This World object.
     */
    public function setBoundsCollision(?left:Bool, ?right:Bool, ?up:Bool, ?down:Bool):phaser.physics.arcade.World;
    /**
     * Pauses the simulation.
     *
     * A paused simulation does not update any existing bodies, or run any Colliders.
     *
     * However, you can still enable and disable bodies within it, or manually run collide or overlap
     * checks.
     *
     * @method Phaser.Physics.Arcade.World#pause
     * @fires Phaser.Physics.Arcade.Events#PAUSE
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Arcade.World} This World object.
     */
    public function pause():phaser.physics.arcade.World;
    /**
     * Resumes the simulation, if paused.
     *
     * @method Phaser.Physics.Arcade.World#resume
     * @fires Phaser.Physics.Arcade.Events#RESUME
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Arcade.World} This World object.
     */
    public function resume():phaser.physics.arcade.World;
    /**
     * Creates a new Collider object and adds it to the simulation.
     *
     * A Collider is a way to automatically perform collision checks between two objects,
     * calling the collide and process callbacks if they occur.
     *
     * Colliders are run as part of the World update, after all of the Bodies have updated.
     *
     * By creating a Collider you don't need then call `World.collide` in your `update` loop,
     * as it will be handled for you automatically.
     *
     * @method Phaser.Physics.Arcade.World#addCollider
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.World#collide
     *
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object1 - The first object to check for collision.
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object2 - The second object to check for collision.
     * @param {ArcadePhysicsCallback} [collideCallback] - The callback to invoke when the two objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - The callback to invoke when the two objects collide. Must return a boolean.
     * @param {*} [callbackContext] - The scope in which to call the callbacks.
     *
     * @return {Phaser.Physics.Arcade.Collider} The Collider that was created.
     */
    public function addCollider(object1:phaser.types.physics.arcade.ArcadeColliderType, object2:phaser.types.physics.arcade.ArcadeColliderType, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):phaser.physics.arcade.Collider;
    /**
     * Creates a new Overlap Collider object and adds it to the simulation.
     *
     * A Collider is a way to automatically perform overlap checks between two objects,
     * calling the collide and process callbacks if they occur.
     *
     * Colliders are run as part of the World update, after all of the Bodies have updated.
     *
     * By creating a Collider you don't need then call `World.overlap` in your `update` loop,
     * as it will be handled for you automatically.
     *
     * @method Phaser.Physics.Arcade.World#addOverlap
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object1 - The first object to check for overlap.
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object2 - The second object to check for overlap.
     * @param {ArcadePhysicsCallback} [collideCallback] - The callback to invoke when the two objects overlap.
     * @param {ArcadePhysicsCallback} [processCallback] - The callback to invoke when the two objects overlap. Must return a boolean.
     * @param {*} [callbackContext] - The scope in which to call the callbacks.
     *
     * @return {Phaser.Physics.Arcade.Collider} The Collider that was created.
     */
    public function addOverlap(object1:phaser.types.physics.arcade.ArcadeColliderType, object2:phaser.types.physics.arcade.ArcadeColliderType, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):phaser.physics.arcade.Collider;
    /**
     * Removes a Collider from the simulation so it is no longer processed.
     *
     * This method does not destroy the Collider. If you wish to add it back at a later stage you can call
     * `World.colliders.add(Collider)`.
     *
     * If you no longer need the Collider you can call the `Collider.destroy` method instead, which will
     * automatically clear all of its references and then remove it from the World. If you call destroy on
     * a Collider you _don't_ need to pass it to this method too.
     *
     * @method Phaser.Physics.Arcade.World#removeCollider
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Arcade.Collider} collider - The Collider to remove from the simulation.
     *
     * @return {Phaser.Physics.Arcade.World} This World object.
     */
    public function removeCollider(collider:phaser.physics.arcade.Collider):phaser.physics.arcade.World;
    /**
     * Sets the frame rate to run the simulation at.
     *
     * The frame rate value is used to simulate a fixed update time step. This fixed
     * time step allows for a straightforward implementation of a deterministic game state.
     *
     * This frame rate is independent of the frequency at which the game is rendering. The
     * higher you set the fps, the more physics simulation steps will occur per game step.
     * Conversely, the lower you set it, the less will take place.
     *
     * You can optionally advance the simulation directly yourself by calling the `step` method.
     *
     * @method Phaser.Physics.Arcade.World#setFPS
     * @since 3.10.0
     *
     * @param {integer} framerate - The frame rate to advance the simulation at.
     *
     * @return {this} This World object.
     */
    public function setFPS(framerate:Int):Dynamic;
    /**
     * Advances the simulation based on the elapsed time and fps rate.
     *
     * This is called automatically by your Scene and does not need to be invoked directly.
     *
     * @method Phaser.Physics.Arcade.World#update
     * @protected
     * @fires Phaser.Physics.Arcade.Events#WORLD_STEP
     * @since 3.0.0
     *
     * @param {number} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function update(time:Float, delta:Float):Void;
    /**
     * Advances the simulation by a time increment.
     *
     * @method Phaser.Physics.Arcade.World#step
     * @fires Phaser.Physics.Arcade.Events#WORLD_STEP
     * @since 3.10.0
     *
     * @param {number} delta - The delta time amount, in seconds, by which to advance the simulation.
     */
    public function step(delta:Float):Void;
    /**
     * Updates bodies, draws the debug display, and handles pending queue operations.
     *
     * @method Phaser.Physics.Arcade.World#postUpdate
     * @since 3.0.0
     */
    public function postUpdate():Void;
    /**
     * Calculates a Body's velocity and updates its position.
     *
     * @method Phaser.Physics.Arcade.World#updateMotion
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Arcade.Body} body - The Body to be updated.
     * @param {number} delta - The delta value to be used in the motion calculations, in seconds.
     */
    public function updateMotion(body:phaser.physics.arcade.Body, delta:Float):Void;
    /**
     * Calculates a Body's angular velocity.
     *
     * @method Phaser.Physics.Arcade.World#computeAngularVelocity
     * @since 3.10.0
     *
     * @param {Phaser.Physics.Arcade.Body} body - The Body to compute the velocity for.
     * @param {number} delta - The delta value to be used in the calculation, in seconds.
     */
    public function computeAngularVelocity(body:phaser.physics.arcade.Body, delta:Float):Void;
    /**
     * Calculates a Body's per-axis velocity.
     *
     * @method Phaser.Physics.Arcade.World#computeVelocity
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Arcade.Body} body - The Body to compute the velocity for.
     * @param {number} delta - The delta value to be used in the calculation, in seconds.
     */
    public function computeVelocity(body:phaser.physics.arcade.Body, delta:Float):Void;
    /**
     * Separates two Bodies.
     *
     * @method Phaser.Physics.Arcade.World#separate
     * @fires Phaser.Physics.Arcade.Events#COLLIDE
     * @fires Phaser.Physics.Arcade.Events#OVERLAP
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Arcade.Body} body1 - The first Body to be separated.
     * @param {Phaser.Physics.Arcade.Body} body2 - The second Body to be separated.
     * @param {ArcadePhysicsCallback} [processCallback] - The process callback.
     * @param {*} [callbackContext] - The context in which to invoke the callback.
     * @param {boolean} [overlapOnly] - If this a collide or overlap check?
     *
     * @return {boolean} True if separation occurred, otherwise false.
     */
    public function separate(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
    /**
     * Separates two Bodies, when both are circular.
     *
     * @method Phaser.Physics.Arcade.World#separateCircle
     * @fires Phaser.Physics.Arcade.Events#COLLIDE
     * @fires Phaser.Physics.Arcade.Events#OVERLAP
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Arcade.Body} body1 - The first Body to be separated.
     * @param {Phaser.Physics.Arcade.Body} body2 - The second Body to be separated.
     * @param {boolean} [overlapOnly] - If this a collide or overlap check?
     * @param {number} [bias] - A small value added to the calculations.
     *
     * @return {boolean} True if separation occurred, otherwise false.
     */
    public function separateCircle(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, ?overlapOnly:Bool, ?bias:Float):Bool;
    /**
     * Checks to see if two Bodies intersect at all.
     *
     * @method Phaser.Physics.Arcade.World#intersects
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Arcade.Body} body1 - The first body to check.
     * @param {Phaser.Physics.Arcade.Body} body2 - The second body to check.
     *
     * @return {boolean} True if the two bodies intersect, otherwise false.
     */
    public function intersects(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body):Bool;
    /**
     * Tests if a circular Body intersects with another Body.
     *
     * @method Phaser.Physics.Arcade.World#circleBodyIntersects
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Arcade.Body} circle - The circular body to test.
     * @param {Phaser.Physics.Arcade.Body} body - The rectangular body to test.
     *
     * @return {boolean} True if the two bodies intersect, otherwise false.
     */
    public function circleBodyIntersects(circle:phaser.physics.arcade.Body, body:phaser.physics.arcade.Body):Bool;
    /**
     * Tests if Game Objects overlap.
     *
     * @method Phaser.Physics.Arcade.World#overlap
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object1 - The first object or array of objects to check.
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} [object2] - The second object or array of objects to check, or `undefined`.
     * @param {ArcadePhysicsCallback} [overlapCallback] - An optional callback function that is called if the objects overlap.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two objects if they overlap. If this is set then `overlapCallback` will only be called if this callback returns `true`.
     * @param {*} [callbackContext] - The context in which to run the callbacks.
     *
     * @return {boolean} True if at least one Game Object overlaps another.
     */
    public function overlap(object1:phaser.types.physics.arcade.ArcadeColliderType, ?object2:phaser.types.physics.arcade.ArcadeColliderType, ?overlapCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
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
     * @method Phaser.Physics.Arcade.World#collide
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} object1 - The first object or array of objects to check.
     * @param {Phaser.Types.Physics.Arcade.ArcadeColliderType} [object2] - The second object or array of objects to check, or `undefined`.
     * @param {ArcadePhysicsCallback} [collideCallback] - An optional callback function that is called if the objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two objects if they collide. If this is set then `collideCallback` will only be called if this callback returns `true`.
     * @param {any} [callbackContext] - The context in which to run the callbacks.
     *
     * @return {boolean} `true` if any overlapping Game Objects were separated, otherwise `false`.
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
     * @method Phaser.Physics.Arcade.World#collideTiles
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
     * @method Phaser.Physics.Arcade.World#overlapTiles
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
     * Internal handler for Sprite vs. Tilemap collisions.
     * Please use Phaser.Physics.Arcade.World#collide instead.
     *
     * @method Phaser.Physics.Arcade.World#collideSpriteVsTilemapLayer
     * @fires Phaser.Physics.Arcade.Events#TILE_COLLIDE
     * @fires Phaser.Physics.Arcade.Events#TILE_OVERLAP
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} sprite - The first object to check for collision.
     * @param {(Phaser.Tilemaps.DynamicTilemapLayer|Phaser.Tilemaps.StaticTilemapLayer)} tilemapLayer - The second object to check for collision.
     * @param {ArcadePhysicsCallback} [collideCallback] - An optional callback function that is called if the objects collide.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two objects if they collide. If this is set then `collideCallback` will only be called if this callback returns `true`.
     * @param {any} [callbackContext] - The context in which to run the callbacks.
     * @param {boolean} [overlapOnly] - Whether this is a collision or overlap check.
     *
     * @return {boolean} True if any objects overlap (with `overlapOnly`); or true if any overlapping objects were separated.
     */
    public function collideSpriteVsTilemapLayer(sprite:phaser.gameobjects.GameObject, tilemapLayer:Dynamic, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
    /**
     * Wrap an object's coordinates (or several objects' coordinates) within {@link Phaser.Physics.Arcade.World#bounds}.
     *
     * If the object is outside any boundary edge (left, top, right, bottom), it will be moved to the same offset from the opposite edge (the interior).
     *
     * @method Phaser.Physics.Arcade.World#wrap
     * @since 3.3.0
     *
     * @param {*} object - A Game Object, a Group, an object with `x` and `y` coordinates, or an array of such objects.
     * @param {number} [padding=0] - An amount added to each boundary edge during the operation.
     */
    public function wrap(object:Dynamic, ?padding:Float):Void;
    /**
     * Wrap each object's coordinates within {@link Phaser.Physics.Arcade.World#bounds}.
     *
     * @method Phaser.Physics.Arcade.World#wrapArray
     * @since 3.3.0
     *
     * @param {Array.<*>} objects - An array of objects to be wrapped.
     * @param {number} [padding=0] - An amount added to the boundary.
     */
    public function wrapArray(objects:Array<Dynamic>, ?padding:Float):Void;
    /**
     * Wrap an object's coordinates within {@link Phaser.Physics.Arcade.World#bounds}.
     *
     * @method Phaser.Physics.Arcade.World#wrapObject
     * @since 3.3.0
     *
     * @param {*} object - A Game Object, a Physics Body, or any object with `x` and `y` coordinates
     * @param {number} [padding=0] - An amount added to the boundary.
     */
    public function wrapObject(object:Dynamic, ?padding:Float):Void;
}
