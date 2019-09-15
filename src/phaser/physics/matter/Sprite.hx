package phaser.physics.matter;

/**
 * @classdesc
 * A Matter Physics Sprite Game Object.
 *
 * A Sprite Game Object is used for the display of both static and animated images in your game.
 * Sprites can have input events and physics bodies. They can also be tweened, tinted, scrolled
 * and animated.
 *
 * The main difference between a Sprite and an Image Game Object is that you cannot animate Images.
 * As such, Sprites take a fraction longer to process and have a larger API footprint due to the Animation
 * Component. If you do not require animation then you can safely use Images to replace Sprites in all cases.
 *
 * @class Sprite
 * @extends Phaser.GameObjects.Sprite
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.Physics.Matter.Components.Bounce
 * @extends Phaser.Physics.Matter.Components.Collision
 * @extends Phaser.Physics.Matter.Components.Force
 * @extends Phaser.Physics.Matter.Components.Friction
 * @extends Phaser.Physics.Matter.Components.Gravity
 * @extends Phaser.Physics.Matter.Components.Mass
 * @extends Phaser.Physics.Matter.Components.Sensor
 * @extends Phaser.Physics.Matter.Components.SetBody
 * @extends Phaser.Physics.Matter.Components.Sleep
 * @extends Phaser.Physics.Matter.Components.Static
 * @extends Phaser.Physics.Matter.Components.Transform
 * @extends Phaser.Physics.Matter.Components.Velocity
 * @extends Phaser.GameObjects.Components.Alpha
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.GetBounds
 * @extends Phaser.GameObjects.Components.Origin
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Size
 * @extends Phaser.GameObjects.Components.Texture
 * @extends Phaser.GameObjects.Components.Tint
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Physics.Matter.World} world - [description]
 * @param {number} x - The horizontal position of this Game Object in the world.
 * @param {number} y - The vertical position of this Game Object in the world.
 * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 * @param {object} [options={}] - Matter.js configuration object.
 */
@:native("Phaser.Physics.Matter.Sprite")
extern class Sprite extends phaser.gameobjects.Sprite {
    public function new(world:phaser.physics.matter.World, x:Float, y:Float, texture:String, ?frame:Dynamic, ?options:Dynamic);
    /**
     * [description]
     *
     * @name Phaser.Physics.Matter.Sprite#world
     * @type {Phaser.Physics.Matter.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.matter.World;
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
     * Applies a force to a body.
     *
     * @method Phaser.Physics.Matter.Components.Force#applyForce
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector2} force - A Vector that specifies the force to apply.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function applyForce(force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    /**
     * Applies a force to a body from a given position.
     *
     * @method Phaser.Physics.Matter.Components.Force#applyForceFrom
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector2} position - The position in which the force comes from.
     * @param {Phaser.Math.Vector2} force - A Vector that specifies the force to apply.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function applyForceFrom(position:phaser.math.Vector2, force:phaser.math.Vector2):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the forward position of the body.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrust
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrust(speed:Float):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the left position of the body.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrustLeft
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrustLeft(speed:Float):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the right position of the body.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrustRight
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrustRight(speed:Float):phaser.gameobjects.GameObject;
    /**
     * Apply thrust to the back position of the body.
     *
     * @method Phaser.Physics.Matter.Components.Force#thrustBack
     * @since 3.0.0
     *
     * @param {number} speed - A speed value to be applied to a directional force.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function thrustBack(speed:Float):phaser.gameobjects.GameObject;
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
     * Set the body on a Game Object to a rectangle.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setRectangle
     * @since 3.0.0
     *
     * @param {number} width - Width of the rectangle.
     * @param {number} height - Height of the rectangle.
     * @param {object} options - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setRectangle(width:Float, height:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setCircle
     * @since 3.0.0
     *
     * @param {number} radius - [description]
     * @param {object} options - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCircle(radius:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Set the body on the Game Object to a polygon shape.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setPolygon
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the polygon.
     * @param {number} sides - The amount of sides creating the polygon.
     * @param {object} options - A matterjs config object.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setPolygon(radius:Float, sides:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Creates a new matterjs trapezoid body.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setTrapezoid
     * @since 3.0.0
     *
     * @param {number} width - The width of the trapezoid.
     * @param {number} height - The height of the trapezoid.
     * @param {number} slope - The angle of slope for the trapezoid.
     * @param {object} options - A matterjs config object for the body.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setTrapezoid(width:Float, height:Float, slope:Float, options:Dynamic):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setExistingBody
     * @since 3.0.0
     *
     * @param {MatterJS.Body} body - [description]
     * @param {boolean} [addToWorld=true] - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setExistingBody(body:matterjs.Body, ?addToWorld:Bool):phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setBody
     * @since 3.0.0
     *
     * @param {object} config - [description]
     * @param {object} options - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBody(config:Dynamic, options:Dynamic):phaser.gameobjects.GameObject;
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
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Transform#setFixedRotation
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function setFixedRotation():Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setAngularVelocity
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setAngularVelocity(value:Float):phaser.gameobjects.GameObject;
    /**
     * Sets the horizontal velocity of the physics body.
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setVelocityX
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity value.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setVelocityX(x:Float):phaser.gameobjects.GameObject;
    /**
     * Sets vertical velocity of the physics body.
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setVelocityY
     * @since 3.0.0
     *
     * @param {number} y - The vertical velocity value.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setVelocityY(y:Float):phaser.gameobjects.GameObject;
    /**
     * Sets both the horizontal and vertical velocity of the physics body.
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity value.
     * @param {number} [y=x] - The vertical velocity value, it can be either positive or negative. If not given, it will be the same as the `x` value.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setVelocity(x:Float, ?y:Float):phaser.gameobjects.GameObject;
}
