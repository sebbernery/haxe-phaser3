package phaser.physics.matter;

/**
 * @classdesc
 * A wrapper around a Tile that provides access to a corresponding Matter body. A tile can only
 * have one Matter body associated with it. You can either pass in an existing Matter body for
 * the tile or allow the constructor to create the corresponding body for you. If the Tile has a
 * collision group (defined in Tiled), those shapes will be used to create the body. If not, the
 * tile's rectangle bounding box will be used.
 *
 * The corresponding body will be accessible on the Tile itself via Tile.physics.matterBody.
 *
 * Note: not all Tiled collision shapes are supported. See
 * Phaser.Physics.Matter.TileBody#setFromTileCollision for more information.
 *
 * @class TileBody
 * @memberof Phaser.Physics.Matter
 * @extends Phaser.Events.EventEmitter
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.Physics.Matter.Components.Bounce
 * @extends Phaser.Physics.Matter.Components.Collision
 * @extends Phaser.Physics.Matter.Components.Friction
 * @extends Phaser.Physics.Matter.Components.Gravity
 * @extends Phaser.Physics.Matter.Components.Mass
 * @extends Phaser.Physics.Matter.Components.Sensor
 * @extends Phaser.Physics.Matter.Components.Sleep
 * @extends Phaser.Physics.Matter.Components.Static
 *
 * @param {Phaser.Physics.Matter.World} world - The Matter world instance this body belongs to.
 * @param {Phaser.Tilemaps.Tile} tile - The target tile that should have a Matter body.
 * @param {Phaser.Types.Physics.Matter.MatterTileOptions} [options] - Options to be used when creating the Matter body.
 */
@:native("Phaser.Physics.Matter.TileBody")
extern class TileBody extends phaser.events.EventEmitter {
    public function new(world:phaser.physics.matter.World, tile:phaser.tilemaps.Tile, ?options:phaser.types.physics.matter.MatterTileOptions);
    /**
     * The tile object the body is associated with.
     *
     * @name Phaser.Physics.Matter.TileBody#tile
     * @type {Phaser.Tilemaps.Tile}
     * @since 3.0.0
     */
    public var tile:phaser.tilemaps.Tile;
    /**
     * The Matter world the body exists within.
     *
     * @name Phaser.Physics.Matter.TileBody#world
     * @type {Phaser.Physics.Matter.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.matter.World;
    /**
     * Sets the current body to a rectangle that matches the bounds of the tile.
     *
     * @method Phaser.Physics.Matter.TileBody#setFromTileRectangle
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBodyTileOptions} [options] - Options to be used when creating the Matter body. See MatterJS.Body for a list of what Matter accepts.
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function setFromTileRectangle(?options:phaser.types.physics.matter.MatterBodyTileOptions):phaser.physics.matter.TileBody;
    /**
     * Sets the current body from the collision group associated with the Tile. This is typically
     * set up in Tiled's collision editor.
     *
     * Note: Matter doesn't support all shapes from Tiled. Rectangles and polygons are directly
     * supported. Ellipses are converted into circle bodies. Polylines are treated as if they are
     * closed polygons. If a tile has multiple shapes, a multi-part body will be created. Concave
     * shapes are supported if poly-decomp library is included. Decomposition is not guaranteed to
     * work for complex shapes (e.g. holes), so it's often best to manually decompose a concave
     * polygon into multiple convex polygons yourself.
     *
     * @method Phaser.Physics.Matter.TileBody#setFromTileCollision
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBodyTileOptions} [options] - Options to be used when creating the Matter body. See MatterJS.Body for a list of what Matter accepts.
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function setFromTileCollision(?options:phaser.types.physics.matter.MatterBodyTileOptions):phaser.physics.matter.TileBody;
    /**
     * Sets the current body to the given body. This will remove the previous body, if one already
     * exists.
     *
     * @method Phaser.Physics.Matter.TileBody#setBody
     * @since 3.0.0
     *
     * @param {MatterJS.BodyType} body - The new Matter body to use.
     * @param {boolean} [addToWorld=true] - Whether or not to add the body to the Matter world.
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function setBody(body:Dynamic, ?addToWorld:Bool):phaser.physics.matter.TileBody;
    /**
     * Removes the current body from the TileBody and from the Matter world
     *
     * @method Phaser.Physics.Matter.TileBody#removeBody
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function removeBody():phaser.physics.matter.TileBody;
    /**
     * Sets the restitution on the physics object.
     *
     * @method Phaser.Physics.Matter.Components.Bounce#setBounce
     * @since 3.0.0
     *
     * @param {number} value - A Number that defines the restitution (elasticity) of the body. The value is always positive and is in the range (0, 1). A value of 0 means collisions may be perfectly inelastic and no bouncing may occur. A value of 0.8 means the body may bounce back with approximately 80% of its kinetic energy. Note that collision response is based on pairs of bodies, and that restitution values are combined with the following formula: `Math.max(bodyA.restitution, bodyB.restitution)`
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBounce(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets the collision category of this Game Object's Matter Body. This number must be a power of two between 2^0 (= 1) and 2^31.
     * Two bodies with different collision groups (see {@link #setCollisionGroup}) will only collide if their collision
     * categories are included in their collision masks (see {@link #setCollidesWith}).
     *
     * @method Phaser.Physics.Matter.Components.Collision#setCollisionCategory
     * @since 3.0.0
     *
     * @param {number} value - Unique category bitfield.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCollisionCategory(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets the collision group of this Game Object's Matter Body. If this is zero or two Matter Bodies have different values,
     * they will collide according to the usual rules (see {@link #setCollisionCategory} and {@link #setCollisionGroup}).
     * If two Matter Bodies have the same positive value, they will always collide; if they have the same negative value,
     * they will never collide.
     *
     * @method Phaser.Physics.Matter.Components.Collision#setCollisionGroup
     * @since 3.0.0
     *
     * @param {number} value - Unique group index.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCollisionGroup(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets the collision mask for this Game Object's Matter Body. Two Matter Bodies with different collision groups will only
     * collide if each one includes the other's category in its mask based on a bitwise AND, i.e. `(categoryA & maskB) !== 0`
     * and `(categoryB & maskA) !== 0` are both true.
     *
     * @method Phaser.Physics.Matter.Components.Collision#setCollidesWith
     * @since 3.0.0
     *
     * @param {(number|number[])} categories - A unique category bitfield, or an array of them.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCollidesWith(categories:Dynamic):phaser.gameobjects.GameObject;
    /**
     * The callback is sent a `Phaser.Types.Physics.Matter.MatterCollisionData` object.
     *
     * This does not change the bodies collision category, group or filter. Those must be set in addition
     * to the callback.
     *
     * @method Phaser.Physics.Matter.Components.Collision#setOnCollide
     * @since 3.22.0
     *
     * @param {function} callback - The callback to invoke when this body starts colliding with another.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setOnCollide(callback:Dynamic):phaser.gameobjects.GameObject;
    /**
     * The callback is sent a `Phaser.Types.Physics.Matter.MatterCollisionData` object.
     *
     * This does not change the bodies collision category, group or filter. Those must be set in addition
     * to the callback.
     *
     * @method Phaser.Physics.Matter.Components.Collision#setOnCollideEnd
     * @since 3.22.0
     *
     * @param {function} callback - The callback to invoke when this body stops colliding with another.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setOnCollideEnd(callback:Dynamic):phaser.gameobjects.GameObject;
    /**
     * The callback is sent a `Phaser.Types.Physics.Matter.MatterCollisionData` object.
     *
     * This does not change the bodies collision category, group or filter. Those must be set in addition
     * to the callback.
     *
     * @method Phaser.Physics.Matter.Components.Collision#setOnCollideActive
     * @since 3.22.0
     *
     * @param {function} callback - The callback to invoke for the duration of this body colliding with another.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setOnCollideActive(callback:Dynamic):phaser.gameobjects.GameObject;
    /**
     * The callback is sent a reference to the other body, along with a `Phaser.Types.Physics.Matter.MatterCollisionData` object.
     *
     * This does not change the bodies collision category, group or filter. Those must be set in addition
     * to the callback.
     *
     * @method Phaser.Physics.Matter.Components.Collision#setOnCollideWith
     * @since 3.22.0
     *
     * @param {(MatterJS.Body|MatterJS.Body[])} body - The body, or an array of bodies, to test for collisions with.
     * @param {function} callback - The callback to invoke when this body collides with the given body or bodies.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setOnCollideWith(body:Dynamic, callback:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Sets new friction values for this Game Object's Matter Body.
     *
     * @method Phaser.Physics.Matter.Components.Friction#setFriction
     * @since 3.0.0
     *
     * @param {number} value - The new friction of the body, between 0 and 1, where 0 allows the Body to slide indefinitely, while 1 allows it to stop almost immediately after a force is applied.
     * @param {number} [air] - If provided, the new air resistance of the Body. The higher the value, the faster the Body will slow as it moves through space. 0 means the body has no air resistance.
     * @param {number} [fstatic] - If provided, the new static friction of the Body. The higher the value (e.g. 10), the more force it will take to initially get the Body moving when it is nearly stationary. 0 means the body will never "stick" when it is nearly stationary.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFriction(value:Float, ?air:Float, ?fstatic:Float):phaser.gameobjects.GameObject;
    /**
     * Sets a new air resistance for this Game Object's Matter Body.
     * A value of 0 means the Body will never slow as it moves through space.
     * The higher the value, the faster a Body slows when moving through space.
     *
     * @method Phaser.Physics.Matter.Components.Friction#setFrictionAir
     * @since 3.0.0
     *
     * @param {number} value - The new air resistance for the Body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFrictionAir(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets a new static friction for this Game Object's Matter Body.
     * A value of 0 means the Body will never "stick" when it is nearly stationary.
     * The higher the value (e.g. 10), the more force it will take to initially get the Body moving when it is nearly stationary.
     *
     * @method Phaser.Physics.Matter.Components.Friction#setFrictionStatic
     * @since 3.0.0
     *
     * @param {number} value - The new static friction for the Body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setFrictionStatic(value:Float):phaser.gameobjects.GameObject;
    /**
     * A togglable function for ignoring world gravity in real-time on the current body.
     *
     * @method Phaser.Physics.Matter.Components.Gravity#setIgnoreGravity
     * @since 3.0.0
     *
     * @param {boolean} value - Set to true to ignore the effect of world gravity, or false to not ignore it.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setIgnoreGravity(value:Bool):phaser.gameobjects.GameObject;
    /**
     * The body's center of mass.
     *
     * Calling this creates a new `Vector2 each time to avoid mutation.
     *
     * If you only need to read the value and won't change it, you can get it from `GameObject.body.centerOfMass`.
     *
     * @name Phaser.Physics.Matter.Components.Mass#centerOfMass
     * @type {Phaser.Math.Vector2}
     * @readonly
     * @since 3.10.0
     *
     * @return {Phaser.Math.Vector2} The center of mass.
     */
    public var centerOfMass:phaser.math.Vector2;
    /**
     * Sets the mass of the Game Object's Matter Body.
     *
     * @method Phaser.Physics.Matter.Components.Mass#setMass
     * @since 3.0.0
     *
     * @param {number} value - The new mass of the body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setMass(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets density of the body.
     *
     * @method Phaser.Physics.Matter.Components.Mass#setDensity
     * @since 3.0.0
     *
     * @param {number} value - The new density of the body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setDensity(value:Float):phaser.gameobjects.GameObject;
    /**
     * Set the body belonging to this Game Object to be a sensor.
     * Sensors trigger collision events, but don't react with colliding body physically.
     *
     * @method Phaser.Physics.Matter.Components.Sensor#setSensor
     * @since 3.0.0
     *
     * @param {boolean} value - `true` to set the body as a sensor, or `false` to disable it.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSensor(value:Bool):phaser.gameobjects.GameObject;
    /**
     * Is the body belonging to this Game Object a sensor or not?
     *
     * @method Phaser.Physics.Matter.Components.Sensor#isSensor
     * @since 3.0.0
     *
     * @return {boolean} `true` if the body is a sensor, otherwise `false`.
     */
    public function isSensor():Bool;
    /**
     * Sets this Body to sleep.
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setToSleep
     * @since 3.22.0
     *
     * @return {this} This Game Object.
     */
    public function setToSleep():Dynamic;
    /**
     * Wakes this Body if asleep.
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setAwake
     * @since 3.22.0
     *
     * @return {this} This Game Object.
     */
    public function setAwake():Dynamic;
    /**
     * Sets the number of updates in which this body must have near-zero velocity before it is set as sleeping (if sleeping is enabled by the engine).
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepThreshold
     * @since 3.0.0
     *
     * @param {number} [value=60] - A `Number` that defines the number of updates in which this body must have near-zero velocity before it is set as sleeping.
     *
     * @return {this} This Game Object.
     */
    public function setSleepThreshold(?value:Float):Dynamic;
    /**
     * Enable sleep and wake events for this body.
     *
     * By default when a body goes to sleep, or wakes up, it will not emit any events.
     *
     * The events are emitted by the Matter World instance and can be listened to via
     * the `SLEEP_START` and `SLEEP_END` events.
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepEvents
     * @since 3.0.0
     *
     * @param {boolean} start - `true` if you want the sleep start event to be emitted for this body.
     * @param {boolean} end - `true` if you want the sleep end event to be emitted for this body.
     *
     * @return {this} This Game Object.
     */
    public function setSleepEvents(start:Bool, end:Bool):Dynamic;
    /**
     * Enables or disables the Sleep Start event for this body.
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepStartEvent
     * @since 3.0.0
     *
     * @param {boolean} value - `true` to enable the sleep event, or `false` to disable it.
     *
     * @return {this} This Game Object.
     */
    public function setSleepStartEvent(value:Bool):Dynamic;
    /**
     * Enables or disables the Sleep End event for this body.
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepEndEvent
     * @since 3.0.0
     *
     * @param {boolean} value - `true` to enable the sleep event, or `false` to disable it.
     *
     * @return {this} This Game Object.
     */
    public function setSleepEndEvent(value:Bool):Dynamic;
    /**
     * Changes the physics body to be either static `true` or dynamic `false`.
     *
     * @method Phaser.Physics.Matter.Components.Static#setStatic
     * @since 3.0.0
     *
     * @param {boolean} value - `true` to set the body as being static, or `false` to make it dynamic.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setStatic(value:Bool):phaser.gameobjects.GameObject;
    /**
     * Returns `true` if the body is static, otherwise `false` for a dynamic body.
     *
     * @method Phaser.Physics.Matter.Components.Static#isStatic
     * @since 3.0.0
     *
     * @return {boolean} `true` if the body is static, otherwise `false`.
     */
    public function isStatic():Bool;
}
