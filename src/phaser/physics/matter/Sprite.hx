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
 * @param {Phaser.Physics.Matter.World} world - A reference to the Matter.World instance that this body belongs to.
 * @param {number} x - The horizontal position of this Game Object in the world.
 * @param {number} y - The vertical position of this Game Object in the world.
 * @param {(string|Phaser.Textures.Texture)} texture - The key, or instance of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @param {(string|number)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
 */
@:native("Phaser.Physics.Matter.Sprite")
extern class Sprite extends phaser.gameobjects.Sprite {
    public function new(world:phaser.physics.matter.World, x:Float, y:Float, texture:Dynamic, ?frame:Dynamic, ?options:phaser.types.physics.matter.MatterBodyConfig);
    /**
     * A reference to the Matter.World instance that this body belongs to.
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
     * Use very small values, such as 0.1, depending on the mass and required speed.
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
     * Use very small values, such as 0.1, depending on the mass and required speed.
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
     * Use very small values, such as 0.1, depending on the mass and required speed.
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
     * Use very small values, such as 0.1, depending on the mass and required speed.
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
     * Set the body on a Game Object to a rectangle.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setRectangle
     * @since 3.0.0
     *
     * @param {number} width - Width of the rectangle.
     * @param {number} height - Height of the rectangle.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setRectangle(width:Float, height:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set the body on a Game Object to a circle.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setCircle
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the circle.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setCircle(radius:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set the body on the Game Object to a polygon shape.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setPolygon
     * @since 3.0.0
     *
     * @param {number} sides - The number of sides the polygon will have.
     * @param {number} radius - The "radius" of the polygon, i.e. the distance from its center to any vertex. This is also the radius of its circumcircle.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setPolygon(sides:Float, radius:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set the body on the Game Object to a trapezoid shape.
     *
     * Calling this methods resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setTrapezoid
     * @since 3.0.0
     *
     * @param {number} width - The width of the trapezoid Body.
     * @param {number} height - The height of the trapezoid Body.
     * @param {number} slope - The slope of the trapezoid. 0 creates a rectangle, while 1 creates a triangle. Positive values make the top side shorter, while negative values make the bottom side shorter.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setTrapezoid(width:Float, height:Float, slope:Float, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
    /**
     * Set this Game Object to use the given existing Matter Body.
     *
     * The body is first removed from the world before being added to this Game Object.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setExistingBody
     * @since 3.0.0
     *
     * @param {MatterJS.BodyType} body - The Body this Game Object should use.
     * @param {boolean} [addToWorld=true] - Should the body be immediately added to the World?
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setExistingBody(body:Dynamic, ?addToWorld:Bool):phaser.gameobjects.GameObject;
    /**
     * Set this Game Object to create and use a new Body based on the configuration object given.
     *
     * Calling this method resets previous properties you may have set on the body, including
     * plugins, mass, friction, etc. So be sure to re-apply these in the options object if needed.
     *
     * @method Phaser.Physics.Matter.Components.SetBody#setBody
     * @since 3.0.0
     *
     * @param {(string|Phaser.Types.Physics.Matter.MatterSetBodyConfig)} config - Either a string, such as `circle`, or a Matter Set Body Configuration object.
     * @param {Phaser.Types.Physics.Matter.MatterBodyConfig} [options] - An optional Body configuration object that is used to set initial Body properties on creation.
     *
     * @return {Phaser.GameObjects.GameObject} This Game Object.
     */
    public function setBody(config:Dynamic, ?options:phaser.types.physics.matter.MatterBodyConfig):phaser.gameobjects.GameObject;
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
    /**
     * Setting fixed rotation sets the Body inertia to Infinity, which stops it
     * from being able to rotate when forces are applied to it.
     *
     * @method Phaser.Physics.Matter.Components.Transform#setFixedRotation
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function setFixedRotation():Dynamic;
    /**
     * Sets the angular velocity of the body instantly.
     * Position, angle, force etc. are unchanged.
     *
     * @method Phaser.Physics.Matter.Components.Velocity#setAngularVelocity
     * @since 3.0.0
     *
     * @param {number} value - The angular velocity.
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
