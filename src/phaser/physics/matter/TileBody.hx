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
 * @param {Phaser.Physics.Matter.World} world - [description]
 * @param {Phaser.Tilemaps.Tile} tile - The target tile that should have a Matter body.
 * @param {MatterTileOptions} [options] - Options to be used when creating the Matter body.
 */
@:native("Phaser.Physics.Matter.TileBody")
extern class TileBody extends phaser.physics.matter.components.Bounce {
    public function new(world:phaser.physics.matter.World, tile:phaser.tilemaps.Tile, ?options:MatterTileOptions);
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
     * @param {MatterBodyTileOptions} [options] - Options to be used when creating the Matter body. See MatterJS.Body for a list of what Matter accepts.
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function setFromTileRectangle(?options:MatterBodyTileOptions):phaser.physics.matter.TileBody;
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
     * @param {MatterBodyTileOptions} [options] - Options to be used when creating the Matter body. See MatterJS.Body for a list of what Matter accepts.
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function setFromTileCollision(?options:MatterBodyTileOptions):phaser.physics.matter.TileBody;
    /**
     * Sets the current body to the given body. This will remove the previous body, if one already
     * exists.
     *
     * @method Phaser.Physics.Matter.TileBody#setBody
     * @since 3.0.0
     *
     * @param {MatterJS.Body} body - The new Matter body to use.
     * @param {boolean} [addToWorld=true] - Whether or not to add the body to the Matter world.
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function setBody(body:matterjs.Body, ?addToWorld:Bool):phaser.physics.matter.TileBody;
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
     * Removes the current body from the tile and the world.
     *
     * @method Phaser.Physics.Matter.TileBody#destroy
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.TileBody} This TileBody object.
     */
    public function destroy():phaser.physics.matter.TileBody;
    /**
     * Sets the collision category of this Game Object's Matter Body. This number must be a power of two between 2^0 (= 1) and 2^31. Two bodies with different collision groups (see {@link #setCollisionGroup}) will only collide if their collision categories are included in their collision masks (see {@link #setCollidesWith}).
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
     * Sets the collision group of this Game Object's Matter Body. If this is zero or two Matter Bodies have different values, they will collide according to the usual rules (see {@link #setCollisionCategory} and {@link #setCollisionGroup}). If two Matter Bodies have the same positive value, they will always collide; if they have the same negative value, they will never collide.
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
     * Sets the collision mask for this Game Object's Matter Body. Two Matter Bodies with different collision groups will only collide if each one includes the other's category in its mask based on a bitwise AND, i.e. `(categoryA & maskB) !== 0` and `(categoryB & maskA) !== 0` are both true.
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
     * Sets a new air resistance for this Game Object's Matter Body. A value of 0 means the Body will never slow as it moves through space. The higher the value, the faster a Body slows when moving through space.
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
     * Sets a new static friction for this Game Object's Matter Body. A value of 0 means the Body will never "stick" when it is nearly stationary. The higher the value (e.g. 10), the more force it will take to initially get the Body moving when it is nearly stationary.
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
     * @name Phaser.Physics.Matter.Components.Mass#centerOfMass
     * @readonly
     * @since 3.10.0
     *
     * @return {Phaser.Math.Vector2} The center of mass.
     */
    public var centerOfMass:Dynamic;
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
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sensor#setSensor
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSensor(value:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sensor#isSensor
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function isSensor():Bool;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepThreshold
     * @since 3.0.0
     *
     * @param {number} [value=60] - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepThreshold(?value:Float):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepEvents
     * @since 3.0.0
     *
     * @param {boolean} start - [description]
     * @param {boolean} end - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepEvents(start:Bool, end:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepStartEvent
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepStartEvent(value:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Sleep#setSleepEndEvent
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setSleepEndEvent(value:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Static#setStatic
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setStatic(value:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Static#isStatic
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function isStatic():Bool;
}
