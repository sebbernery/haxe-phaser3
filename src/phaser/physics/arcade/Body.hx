package phaser.physics.arcade;

/**
 * @classdesc
 * A Dynamic Arcade Body.
 *
 * Its static counterpart is {@link Phaser.Physics.Arcade.StaticBody}.
 *
 * @class Body
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Arcade.World} world - The Arcade Physics simulation this Body belongs to.
 * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object this Body belongs to.
 */
@:native("Phaser.Physics.Arcade.Body")
extern class Body {
    public function new(world:phaser.physics.arcade.World, gameObject:phaser.gameobjects.GameObject);
    /**
     * The Arcade Physics simulation this Body belongs to.
     *
     * @name Phaser.Physics.Arcade.Body#world
     * @type {Phaser.Physics.Arcade.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.arcade.World;
    /**
     * The Game Object this Body belongs to.
     *
     * @name Phaser.Physics.Arcade.Body#gameObject
     * @type {Phaser.GameObjects.GameObject}
     * @since 3.0.0
     */
    public var gameObject:phaser.gameobjects.GameObject;
    /**
     * Transformations applied to this Body.
     *
     * @name Phaser.Physics.Arcade.Body#transform
     * @type {object}
     * @since 3.4.0
     */
    public var transform:Dynamic;
    /**
     * Whether the Body's boundary is drawn to the debug display.
     *
     * @name Phaser.Physics.Arcade.Body#debugShowBody
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowBody:Bool;
    /**
     * Whether the Body's velocity is drawn to the debug display.
     *
     * @name Phaser.Physics.Arcade.Body#debugShowVelocity
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowVelocity:Bool;
    /**
     * The color of this Body on the debug display.
     *
     * @name Phaser.Physics.Arcade.Body#debugBodyColor
     * @type {integer}
     * @since 3.0.0
     */
    public var debugBodyColor:Int;
    /**
     * Whether this Body is updated by the physics simulation.
     *
     * @name Phaser.Physics.Arcade.Body#enable
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var enable:Bool;
    /**
     * Whether this Body's boundary is circular (true) or rectangular (false).
     *
     * @name Phaser.Physics.Arcade.Body#isCircle
     * @type {boolean}
     * @default false
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#setCircle
     */
    public var isCircle:Bool;
    /**
     * If this Body is circular, this is the unscaled radius of the Body's boundary, as set by setCircle(), in source pixels.
     * The true radius is equal to `halfWidth`.
     *
     * @name Phaser.Physics.Arcade.Body#radius
     * @type {number}
     * @default 0
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#setCircle
     */
    public var radius:Float;
    /**
     * The offset of this Body's position from its Game Object's position, in source pixels.
     *
     * @name Phaser.Physics.Arcade.Body#offset
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#setOffset
     */
    public var offset:phaser.math.Vector2;
    /**
     * The position of this Body within the simulation.
     *
     * @name Phaser.Physics.Arcade.Body#position
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var position:phaser.math.Vector2;
    /**
     * The position of this Body during the previous step.
     *
     * @name Phaser.Physics.Arcade.Body#prev
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var prev:phaser.math.Vector2;
    /**
     * Whether this Body's `rotation` is affected by its angular acceleration and angular velocity.
     *
     * @name Phaser.Physics.Arcade.Body#allowRotation
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var allowRotation:Bool;
    /**
     * This body's rotation, in degrees, based on its angular acceleration and angular velocity.
     * The Body's rotation controls the `angle` of its Game Object.
     * It doesn't rotate the Body's boundary, which is always an axis-aligned rectangle or a circle.
     *
     * @name Phaser.Physics.Arcade.Body#rotation
     * @type {number}
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * The Body's rotation, in degrees, during the previous step.
     *
     * @name Phaser.Physics.Arcade.Body#preRotation
     * @type {number}
     * @since 3.0.0
     */
    public var preRotation:Float;
    /**
     * The width of the Body's boundary, in pixels.
     * If the Body is circular, this is also the Body's diameter.
     *
     * @name Phaser.Physics.Arcade.Body#width
     * @type {number}
     * @default 64
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the Body's boundary, in pixels.
     * If the Body is circular, this is also the Body's diameter.
     *
     * @name Phaser.Physics.Arcade.Body#height
     * @type {number}
     * @default 64
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The unscaled width of the Body, in source pixels, as set by setSize().
     * The default is the width of the Body's Game Object's texture frame.
     *
     * @name Phaser.Physics.Arcade.Body#sourceWidth
     * @type {number}
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#setSize
     */
    public var sourceWidth:Float;
    /**
     * The unscaled height of the Body, in source pixels, as set by setSize().
     * The default is the height of the Body's Game Object's texture frame.
     *
     * @name Phaser.Physics.Arcade.Body#sourceHeight
     * @type {number}
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#setSize
     */
    public var sourceHeight:Float;
    /**
     * Half the Body's width, in pixels.
     *
     * @name Phaser.Physics.Arcade.Body#halfWidth
     * @type {number}
     * @since 3.0.0
     */
    public var halfWidth:Float;
    /**
     * Half the Body's height, in pixels.
     *
     * @name Phaser.Physics.Arcade.Body#halfHeight
     * @type {number}
     * @since 3.0.0
     */
    public var halfHeight:Float;
    /**
     * The center of the Body's boundary.
     * The midpoint of its `position` (top-left corner) and its bottom-right corner.
     *
     * @name Phaser.Physics.Arcade.Body#center
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var center:phaser.math.Vector2;
    /**
     * The Body's velocity, in pixels per second.
     *
     * @name Phaser.Physics.Arcade.Body#velocity
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var velocity:phaser.math.Vector2;
    /**
     * The Body's calculated velocity, in pixels per second, at the last step.
     *
     * @name Phaser.Physics.Arcade.Body#newVelocity
     * @type {Phaser.Math.Vector2}
     * @readonly
     * @since 3.0.0
     */
    public var newVelocity:phaser.math.Vector2;
    /**
     * The Body's absolute maximum change in position, in pixels per step.
     *
     * @name Phaser.Physics.Arcade.Body#deltaMax
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var deltaMax:phaser.math.Vector2;
    /**
     * The Body's change in velocity, in pixels per second squared.
     *
     * @name Phaser.Physics.Arcade.Body#acceleration
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var acceleration:phaser.math.Vector2;
    /**
     * Whether this Body's velocity is affected by its `drag`.
     *
     * @name Phaser.Physics.Arcade.Body#allowDrag
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var allowDrag:Bool;
    /**
     * Absolute loss of velocity due to movement, in pixels per second squared.
     * The x and y components are applied separately.
     *
     * When `useDamping` is true, this is 1 minus the damping factor.
     * A value of 1 means the Body loses no velocity.
     * A value of 0.95 means the Body loses 5% of its velocity per step.
     * A value of 0.5 means the Body loses 50% of its velocity per step.
     *
     * Drag is applied only when `acceleration` is zero.
     *
     * @name Phaser.Physics.Arcade.Body#drag
     * @type {(Phaser.Math.Vector2|number)}
     * @since 3.0.0
     */
    public var drag:Dynamic;
    /**
     * Whether this Body's position is affected by gravity (local or world).
     *
     * @name Phaser.Physics.Arcade.Body#allowGravity
     * @type {boolean}
     * @default true
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#gravity
     * @see Phaser.Physics.Arcade.World#gravity
     */
    public var allowGravity:Bool;
    /**
     * Acceleration due to gravity (specific to this Body), in pixels per second squared.
     * Total gravity is the sum of this vector and the simulation's `gravity`.
     *
     * @name Phaser.Physics.Arcade.Body#gravity
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.World#gravity
     */
    public var gravity:phaser.math.Vector2;
    /**
     * Rebound following a collision, relative to 1.
     *
     * @name Phaser.Physics.Arcade.Body#bounce
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var bounce:phaser.math.Vector2;
    /**
     * Rebound following a collision with the world boundary, relative to 1.
     * If null, `bounce` is used instead.
     *
     * @name Phaser.Physics.Arcade.Body#worldBounce
     * @type {?Phaser.Math.Vector2}
     * @default null
     * @since 3.0.0
     */
    public var worldBounce:phaser.math.Vector2;
    /**
     * Whether the simulation emits a `worldbounds` event when this Body collides with the world boundary (and `collideWorldBounds` is also true).
     *
     * @name Phaser.Physics.Arcade.Body#onWorldBounds
     * @type {boolean}
     * @default false
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.World#worldboundsEvent
     */
    public var onWorldBounds:Bool;
    /**
     * Whether the simulation emits a `collide` event when this Body collides with another.
     *
     * @name Phaser.Physics.Arcade.Body#onCollide
     * @type {boolean}
     * @default false
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.World#collideEvent
     */
    public var onCollide:Bool;
    /**
     * Whether the simulation emits an `overlap` event when this Body overlaps with another.
     *
     * @name Phaser.Physics.Arcade.Body#onOverlap
     * @type {boolean}
     * @default false
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.World#overlapEvent
     */
    public var onOverlap:Bool;
    /**
     * The Body's absolute maximum velocity, in pixels per second.
     * The horizontal and vertical components are applied separately.
     *
     * @name Phaser.Physics.Arcade.Body#maxVelocity
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var maxVelocity:phaser.math.Vector2;
    /**
     * The maximum speed this Body is allowed to reach.
     *
     * If not negative it limits the scalar value of speed.
     *
     * Any negative value means no maximum is being applied.
     *
     * @name Phaser.Physics.Arcade.Body#maxSpeed
     * @type {number}
     * @since 3.16.0
     */
    public var maxSpeed:Float;
    /**
     * If this Body is `immovable` and in motion, `friction` is the proportion of this Body's motion received by the riding Body on each axis, relative to 1.
     * The default value (1, 0) moves the riding Body horizontally in equal proportion to this Body and vertically not at all.
     * The horizontal component (x) is applied only when two colliding Bodies are separated vertically.
     * The vertical component (y) is applied only when two colliding Bodies are separated horizontally.
     *
     * @name Phaser.Physics.Arcade.Body#friction
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var friction:phaser.math.Vector2;
    /**
     * If this Body is using `drag` for deceleration this property controls how the drag is applied.
     * If set to `true` drag will use a damping effect rather than a linear approach. If you are
     * creating a game where the Body moves freely at any angle (i.e. like the way the ship moves in
     * the game Asteroids) then you will get a far smoother and more visually correct deceleration
     * by using damping, avoiding the axis-drift that is prone with linear deceleration.
     *
     * If you enable this property then you should use far smaller `drag` values than with linear, as
     * they are used as a multiplier on the velocity. Values such as 0.95 will give a nice slow
     * deceleration, where-as smaller values, such as 0.5 will stop an object almost immediately.
     *
     * @name Phaser.Physics.Arcade.Body#useDamping
     * @type {boolean}
     * @default false
     * @since 3.10.0
     */
    public var useDamping:Bool;
    /**
     * The rate of change of this Body's `rotation`, in degrees per second.
     *
     * @name Phaser.Physics.Arcade.Body#angularVelocity
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angularVelocity:Float;
    /**
     * The Body's angular acceleration (change in angular velocity), in degrees per second squared.
     *
     * @name Phaser.Physics.Arcade.Body#angularAcceleration
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angularAcceleration:Float;
    /**
     * Loss of angular velocity due to angular movement, in degrees per second.
     *
     * Angular drag is applied only when angular acceleration is zero.
     *
     * @name Phaser.Physics.Arcade.Body#angularDrag
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angularDrag:Float;
    /**
     * The Body's maximum angular velocity, in degrees per second.
     *
     * @name Phaser.Physics.Arcade.Body#maxAngular
     * @type {number}
     * @default 1000
     * @since 3.0.0
     */
    public var maxAngular:Float;
    /**
     * The Body's inertia, relative to a default unit (1).
     * With `bounce`, this affects the exchange of momentum (velocities) during collisions.
     *
     * @name Phaser.Physics.Arcade.Body#mass
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var mass:Float;
    /**
     * The calculated angle of this Body's velocity vector, in radians, during the last step.
     *
     * @name Phaser.Physics.Arcade.Body#angle
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Float;
    /**
     * The calculated magnitude of the Body's velocity, in pixels per second, during the last step.
     *
     * @name Phaser.Physics.Arcade.Body#speed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var speed:Float;
    /**
     * The direction of the Body's velocity, as calculated during the last step.
     * If the Body is moving on both axes (diagonally), this describes motion on the vertical axis only.
     *
     * @name Phaser.Physics.Arcade.Body#facing
     * @type {integer}
     * @since 3.0.0
     */
    public var facing:Int;
    /**
     * Whether this Body can be moved by collisions with another Body.
     *
     * @name Phaser.Physics.Arcade.Body#immovable
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var immovable:Bool;
    /**
     * Whether the Body's position and rotation are affected by its velocity, acceleration, drag, and gravity.
     *
     * @name Phaser.Physics.Arcade.Body#moves
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var moves:Bool;
    /**
     * A flag disabling the default horizontal separation of colliding bodies.
     * Pass your own `collideCallback` to the collider.
     *
     * @name Phaser.Physics.Arcade.Body#customSeparateX
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var customSeparateX:Bool;
    /**
     * A flag disabling the default vertical separation of colliding bodies.
     * Pass your own `collideCallback` to the collider.
     *
     * @name Phaser.Physics.Arcade.Body#customSeparateY
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var customSeparateY:Bool;
    /**
     * The amount of horizontal overlap (before separation), if this Body is colliding with another.
     *
     * @name Phaser.Physics.Arcade.Body#overlapX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var overlapX:Float;
    /**
     * The amount of vertical overlap (before separation), if this Body is colliding with another.
     *
     * @name Phaser.Physics.Arcade.Body#overlapY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var overlapY:Float;
    /**
     * The amount of overlap (before separation), if this Body is circular and colliding with another circular body.
     *
     * @name Phaser.Physics.Arcade.Body#overlapR
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var overlapR:Float;
    /**
     * Whether this Body is overlapped with another and both are not moving.
     *
     * @name Phaser.Physics.Arcade.Body#embedded
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var embedded:Bool;
    /**
     * Whether this Body interacts with the world boundary.
     *
     * @name Phaser.Physics.Arcade.Body#collideWorldBounds
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var collideWorldBounds:Bool;
    /**
     * Whether this Body is checked for collisions and for which directions.
     * You can set `checkCollision.none = true` to disable collision checks.
     *
     * @name Phaser.Physics.Arcade.Body#checkCollision
     * @type {Phaser.Types.Physics.Arcade.ArcadeBodyCollision}
     * @since 3.0.0
     */
    public var checkCollision:phaser.types.physics.arcade.ArcadeBodyCollision;
    /**
     * Whether this Body is colliding with another and in which direction.
     *
     * @name Phaser.Physics.Arcade.Body#touching
     * @type {Phaser.Types.Physics.Arcade.ArcadeBodyCollision}
     * @since 3.0.0
     */
    public var touching:phaser.types.physics.arcade.ArcadeBodyCollision;
    /**
     * Whether this Body was colliding with another during the last step, and in which direction.
     *
     * @name Phaser.Physics.Arcade.Body#wasTouching
     * @type {Phaser.Types.Physics.Arcade.ArcadeBodyCollision}
     * @since 3.0.0
     */
    public var wasTouching:phaser.types.physics.arcade.ArcadeBodyCollision;
    /**
     * Whether this Body is colliding with a tile or the world boundary.
     *
     * @name Phaser.Physics.Arcade.Body#blocked
     * @type {Phaser.Types.Physics.Arcade.ArcadeBodyCollision}
     * @since 3.0.0
     */
    public var blocked:phaser.types.physics.arcade.ArcadeBodyCollision;
    /**
     * Whether to automatically synchronize this Body's dimensions to the dimensions of its Game Object's visual bounds.
     *
     * @name Phaser.Physics.Arcade.Body#syncBounds
     * @type {boolean}
     * @default false
     * @since 3.0.0
     * @see Phaser.GameObjects.Components.GetBounds#getBounds
     */
    public var syncBounds:Bool;
    /**
     * The Body's physics type (dynamic or static).
     *
     * @name Phaser.Physics.Arcade.Body#physicsType
     * @type {integer}
     * @readonly
     * @default Phaser.Physics.Arcade.DYNAMIC_BODY
     * @since 3.0.0
     */
    public var physicsType:Int;
    /**
     * The Body's horizontal position (left edge).
     *
     * @name Phaser.Physics.Arcade.Body#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The Body's vertical position (top edge).
     *
     * @name Phaser.Physics.Arcade.Body#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The left edge of the Body's boundary. Identical to x.
     *
     * @name Phaser.Physics.Arcade.Body#left
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var left:Float;
    /**
     * The right edge of the Body's boundary.
     *
     * @name Phaser.Physics.Arcade.Body#right
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var right:Float;
    /**
     * The top edge of the Body's boundary. Identical to y.
     *
     * @name Phaser.Physics.Arcade.Body#top
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var top:Float;
    /**
     * The bottom edge of this Body's boundary.
     *
     * @name Phaser.Physics.Arcade.Body#bottom
     * @type {number}
     * @readonly
     * @since 3.0.0
     */
    public var bottom:Float;
    /**
     * Updates the Body's `transform`, `width`, `height`, and `center` from its Game Object.
     * The Body's `position` isn't changed.
     *
     * @method Phaser.Physics.Arcade.Body#updateBounds
     * @since 3.0.0
     */
    public function updateBounds():Void;
    /**
     * Updates the Body's `center` from its `position`, `width`, and `height`.
     *
     * @method Phaser.Physics.Arcade.Body#updateCenter
     * @since 3.0.0
     */
    public function updateCenter():Void;
    /**
     * Prepares the Body for a physics step by resetting the `wasTouching`, `touching` and `blocked` states.
     *
     * This method is only called if the physics world is going to run a step this frame.
     *
     * @method Phaser.Physics.Arcade.Body#resetFlags
     * @since 3.18.0
     */
    public function resetFlags():Void;
    /**
     * Syncs the position body position with the parent Game Object.
     *
     * This method is called every game frame, regardless if the world steps or not.
     *
     * @method Phaser.Physics.Arcade.Body#preUpdate
     * @since 3.17.0
     *
     * @param {boolean} willStep - Will this Body run an update as well?
     * @param {number} delta - The delta time, in seconds, elapsed since the last frame.
     */
    public function preUpdate(willStep:Bool, delta:Float):Void;
    /**
     * Performs a single physics step and updates the body velocity, angle, speed and other properties.
     *
     * This method can be called multiple times per game frame, depending on the physics step rate.
     *
     * The results are synced back to the Game Object in `postUpdate`.
     *
     * @method Phaser.Physics.Arcade.Body#update
     * @fires Phaser.Physics.Arcade.Events#WORLD_BOUNDS
     * @since 3.0.0
     *
     * @param {number} delta - The delta time, in seconds, elapsed since the last frame.
     */
    public function update(delta:Float):Void;
    /**
     * Feeds the Body results back into the parent Game Object.
     *
     * This method is called every game frame, regardless if the world steps or not.
     *
     * @method Phaser.Physics.Arcade.Body#postUpdate
     * @since 3.0.0
     */
    public function postUpdate():Void;
    /**
     * Checks for collisions between this Body and the world boundary and separates them.
     *
     * @method Phaser.Physics.Arcade.Body#checkWorldBounds
     * @since 3.0.0
     *
     * @return {boolean} True if this Body is colliding with the world boundary.
     */
    public function checkWorldBounds():Bool;
    /**
     * Sets the offset of the Body's position from its Game Object's position.
     *
     * @method Phaser.Physics.Arcade.Body#setOffset
     * @since 3.0.0
     *
     * @param {number} x - The horizontal offset, in source pixels.
     * @param {number} [y=x] - The vertical offset, in source pixels.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setOffset(x:Float, ?y:Float):phaser.physics.arcade.Body;
    /**
     * Sizes and positions this Body's boundary, as a rectangle.
     * Modifies the Body `offset` if `center` is true (the default).
     * Resets the width and height to match current frame, if no width and height provided and a frame is found.
     *
     * @method Phaser.Physics.Arcade.Body#setSize
     * @since 3.0.0
     *
     * @param {integer} [width] - The width of the Body in pixels. Cannot be zero. If not given, and the parent Game Object has a frame, it will use the frame width.
     * @param {integer} [height] - The height of the Body in pixels. Cannot be zero. If not given, and the parent Game Object has a frame, it will use the frame height.
     * @param {boolean} [center=true] - Modify the Body's `offset`, placing the Body's center on its Game Object's center. Only works if the Game Object has the `getCenter` method.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setSize(?width:Int, ?height:Int, ?center:Bool):phaser.physics.arcade.Body;
    /**
     * Sizes and positions this Body's boundary, as a circle.
     *
     * @method Phaser.Physics.Arcade.Body#setCircle
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the Body, in source pixels.
     * @param {number} [offsetX] - The horizontal offset of the Body from its Game Object, in source pixels.
     * @param {number} [offsetY] - The vertical offset of the Body from its Game Object, in source pixels.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):phaser.physics.arcade.Body;
    /**
     * Resets this Body to the given coordinates. Also positions its parent Game Object to the same coordinates.
     * If the Body had any velocity or acceleration it is lost as a result of calling this.
     *
     * @method Phaser.Physics.Arcade.Body#reset
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position to place the Game Object and Body.
     * @param {number} y - The vertical position to place the Game Object and Body.
     */
    public function reset(x:Float, y:Float):Void;
    /**
     * Sets acceleration, velocity, and speed to zero.
     *
     * @method Phaser.Physics.Arcade.Body#stop
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function stop():phaser.physics.arcade.Body;
    /**
     * Copies the coordinates of this Body's edges into an object.
     *
     * @method Phaser.Physics.Arcade.Body#getBounds
     * @since 3.0.0
     *
     * @param {Phaser.Types.Physics.Arcade.ArcadeBodyBounds} obj - An object to copy the values into.
     *
     * @return {Phaser.Types.Physics.Arcade.ArcadeBodyBounds} - An object with {x, y, right, bottom}.
     */
    public function getBounds(obj:phaser.types.physics.arcade.ArcadeBodyBounds):phaser.types.physics.arcade.ArcadeBodyBounds;
    /**
     * Tests if the coordinates are within this Body's boundary.
     *
     * @method Phaser.Physics.Arcade.Body#hitTest
     * @since 3.0.0
     *
     * @param {number} x - The horizontal coordinate.
     * @param {number} y - The vertical coordinate.
     *
     * @return {boolean} True if (x, y) is within this Body.
     */
    public function hitTest(x:Float, y:Float):Bool;
    /**
     * Whether this Body is touching a tile or the world boundary while moving down.
     *
     * @method Phaser.Physics.Arcade.Body#onFloor
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#blocked
     *
     * @return {boolean} True if touching.
     */
    public function onFloor():Bool;
    /**
     * Whether this Body is touching a tile or the world boundary while moving up.
     *
     * @method Phaser.Physics.Arcade.Body#onCeiling
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#blocked
     *
     * @return {boolean} True if touching.
     */
    public function onCeiling():Bool;
    /**
     * Whether this Body is touching a tile or the world boundary while moving left or right.
     *
     * @method Phaser.Physics.Arcade.Body#onWall
     * @since 3.0.0
     * @see Phaser.Physics.Arcade.Body#blocked
     *
     * @return {boolean} True if touching.
     */
    public function onWall():Bool;
    /**
     * The absolute (non-negative) change in this Body's horizontal position from the previous step.
     *
     * @method Phaser.Physics.Arcade.Body#deltaAbsX
     * @since 3.0.0
     *
     * @return {number} The delta value.
     */
    public function deltaAbsX():Float;
    /**
     * The absolute (non-negative) change in this Body's vertical position from the previous step.
     *
     * @method Phaser.Physics.Arcade.Body#deltaAbsY
     * @since 3.0.0
     *
     * @return {number} The delta value.
     */
    public function deltaAbsY():Float;
    /**
     * The change in this Body's horizontal position from the previous step.
     * This value is set during the Body's update phase.
     *
     * @method Phaser.Physics.Arcade.Body#deltaX
     * @since 3.0.0
     *
     * @return {number} The delta value.
     */
    public function deltaX():Float;
    /**
     * The change in this Body's vertical position from the previous step.
     * This value is set during the Body's update phase.
     *
     * @method Phaser.Physics.Arcade.Body#deltaY
     * @since 3.0.0
     *
     * @return {number} The delta value.
     */
    public function deltaY():Float;
    /**
     * The change in this Body's rotation from the previous step, in degrees.
     *
     * @method Phaser.Physics.Arcade.Body#deltaZ
     * @since 3.0.0
     *
     * @return {number} The delta value.
     */
    public function deltaZ():Float;
    /**
     * Disables this Body and marks it for deletion by the simulation.
     *
     * @method Phaser.Physics.Arcade.Body#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
    /**
     * Draws this Body's boundary and velocity, if enabled.
     *
     * @method Phaser.Physics.Arcade.Body#drawDebug
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Graphics} graphic - The Graphics object to draw on.
     */
    public function drawDebug(graphic:phaser.gameobjects.Graphics):Void;
    /**
     * Whether this Body will be drawn to the debug display.
     *
     * @method Phaser.Physics.Arcade.Body#willDrawDebug
     * @since 3.0.0
     *
     * @return {boolean} True if either `debugShowBody` or `debugShowVelocity` are enabled.
     */
    public function willDrawDebug():Bool;
    /**
     * Sets whether this Body collides with the world boundary.
     *
     * Optionally also sets the World Bounce values. If the `Body.worldBounce` is null, it's set to a new Vec2 first.
     *
     * @method Phaser.Physics.Arcade.Body#setCollideWorldBounds
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - `true` if this body should collide with the world bounds, otherwise `false`.
     * @param {number} [bounceX] - If given this will be replace the `worldBounce.x` value.
     * @param {number} [bounceY] - If given this will be replace the `worldBounce.y` value.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setCollideWorldBounds(?value:Bool, ?bounceX:Float, ?bounceY:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's velocity.
     *
     * @method Phaser.Physics.Arcade.Body#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity, in pixels per second.
     * @param {number} [y=x] - The vertical velocity, in pixels per second.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setVelocity(x:Float, ?y:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's horizontal velocity.
     *
     * @method Phaser.Physics.Arcade.Body#setVelocityX
     * @since 3.0.0
     *
     * @param {number} value - The velocity, in pixels per second.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setVelocityX(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's vertical velocity.
     *
     * @method Phaser.Physics.Arcade.Body#setVelocityY
     * @since 3.0.0
     *
     * @param {number} value - The velocity, in pixels per second.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setVelocityY(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's maximum velocity.
     *
     * @method Phaser.Physics.Arcade.Body#setMaxVelocity
     * @since 3.10.0
     *
     * @param {number} x - The horizontal velocity, in pixels per second.
     * @param {number} [y=x] - The vertical velocity, in pixels per second.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setMaxVelocity(x:Float, ?y:Float):phaser.physics.arcade.Body;
    /**
     * Sets the maximum speed the Body can move.
     *
     * @method Phaser.Physics.Arcade.Body#setMaxSpeed
     * @since 3.16.0
     *
     * @param {number} value - The maximum speed value, in pixels per second. Set to a negative value to disable.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setMaxSpeed(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's bounce.
     *
     * @method Phaser.Physics.Arcade.Body#setBounce
     * @since 3.0.0
     *
     * @param {number} x - The horizontal bounce, relative to 1.
     * @param {number} y - The vertical bounce, relative to 1.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setBounce(x:Float, y:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's horizontal bounce.
     *
     * @method Phaser.Physics.Arcade.Body#setBounceX
     * @since 3.0.0
     *
     * @param {number} value - The bounce, relative to 1.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setBounceX(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's vertical bounce.
     *
     * @method Phaser.Physics.Arcade.Body#setBounceY
     * @since 3.0.0
     *
     * @param {number} value - The bounce, relative to 1.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setBounceY(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's acceleration.
     *
     * @method Phaser.Physics.Arcade.Body#setAcceleration
     * @since 3.0.0
     *
     * @param {number} x - The horizontal component, in pixels per second squared.
     * @param {number} y - The vertical component, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAcceleration(x:Float, y:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's horizontal acceleration.
     *
     * @method Phaser.Physics.Arcade.Body#setAccelerationX
     * @since 3.0.0
     *
     * @param {number} value - The acceleration, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAccelerationX(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's vertical acceleration.
     *
     * @method Phaser.Physics.Arcade.Body#setAccelerationY
     * @since 3.0.0
     *
     * @param {number} value - The acceleration, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAccelerationY(value:Float):phaser.physics.arcade.Body;
    /**
     * Enables or disables drag.
     *
     * @method Phaser.Physics.Arcade.Body#setAllowDrag
     * @since 3.9.0
     * @see Phaser.Physics.Arcade.Body#allowDrag
     *
     * @param {boolean} [value=true] - `true` to allow drag on this body, or `false` to disable it.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAllowDrag(?value:Bool):phaser.physics.arcade.Body;
    /**
     * Enables or disables gravity's effect on this Body.
     *
     * @method Phaser.Physics.Arcade.Body#setAllowGravity
     * @since 3.9.0
     * @see Phaser.Physics.Arcade.Body#allowGravity
     *
     * @param {boolean} [value=true] - `true` to allow gravity on this body, or `false` to disable it.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAllowGravity(?value:Bool):phaser.physics.arcade.Body;
    /**
     * Enables or disables rotation.
     *
     * @method Phaser.Physics.Arcade.Body#setAllowRotation
     * @since 3.9.0
     * @see Phaser.Physics.Arcade.Body#allowRotation
     *
     * @param {boolean} [value=true] - `true` to allow rotation on this body, or `false` to disable it.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAllowRotation(?value:Bool):phaser.physics.arcade.Body;
    /**
     * Sets the Body's drag.
     *
     * @method Phaser.Physics.Arcade.Body#setDrag
     * @since 3.0.0
     *
     * @param {number} x - The horizontal component, in pixels per second squared.
     * @param {number} y - The vertical component, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setDrag(x:Float, y:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's horizontal drag.
     *
     * @method Phaser.Physics.Arcade.Body#setDragX
     * @since 3.0.0
     *
     * @param {number} value - The drag, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setDragX(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's vertical drag.
     *
     * @method Phaser.Physics.Arcade.Body#setDragY
     * @since 3.0.0
     *
     * @param {number} value - The drag, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setDragY(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's gravity.
     *
     * @method Phaser.Physics.Arcade.Body#setGravity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal component, in pixels per second squared.
     * @param {number} y - The vertical component, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setGravity(x:Float, y:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's horizontal gravity.
     *
     * @method Phaser.Physics.Arcade.Body#setGravityX
     * @since 3.0.0
     *
     * @param {number} value - The gravity, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setGravityX(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's vertical gravity.
     *
     * @method Phaser.Physics.Arcade.Body#setGravityY
     * @since 3.0.0
     *
     * @param {number} value - The gravity, in pixels per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setGravityY(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's friction.
     *
     * @method Phaser.Physics.Arcade.Body#setFriction
     * @since 3.0.0
     *
     * @param {number} x - The horizontal component, relative to 1.
     * @param {number} y - The vertical component, relative to 1.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setFriction(x:Float, y:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's horizontal friction.
     *
     * @method Phaser.Physics.Arcade.Body#setFrictionX
     * @since 3.0.0
     *
     * @param {number} value - The friction value, relative to 1.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setFrictionX(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's vertical friction.
     *
     * @method Phaser.Physics.Arcade.Body#setFrictionY
     * @since 3.0.0
     *
     * @param {number} value - The friction value, relative to 1.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setFrictionY(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's angular velocity.
     *
     * @method Phaser.Physics.Arcade.Body#setAngularVelocity
     * @since 3.0.0
     *
     * @param {number} value - The velocity, in degrees per second.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAngularVelocity(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's angular acceleration.
     *
     * @method Phaser.Physics.Arcade.Body#setAngularAcceleration
     * @since 3.0.0
     *
     * @param {number} value - The acceleration, in degrees per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAngularAcceleration(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's angular drag.
     *
     * @method Phaser.Physics.Arcade.Body#setAngularDrag
     * @since 3.0.0
     *
     * @param {number} value - The drag, in degrees per second squared.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setAngularDrag(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's mass.
     *
     * @method Phaser.Physics.Arcade.Body#setMass
     * @since 3.0.0
     *
     * @param {number} value - The mass value, relative to 1.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setMass(value:Float):phaser.physics.arcade.Body;
    /**
     * Sets the Body's `immovable` property.
     *
     * @method Phaser.Physics.Arcade.Body#setImmovable
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - The value to assign to `immovable`.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setImmovable(?value:Bool):phaser.physics.arcade.Body;
    /**
     * Sets the Body's `enable` property.
     *
     * @method Phaser.Physics.Arcade.Body#setEnable
     * @since 3.15.0
     *
     * @param {boolean} [value=true] - The value to assign to `enable`.
     *
     * @return {Phaser.Physics.Arcade.Body} This Body object.
     */
    public function setEnable(?value:Bool):phaser.physics.arcade.Body;
}
