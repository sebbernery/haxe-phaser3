package phaser.physics.arcade;

/**
 * @classdesc
 * An Arcade Physics Image is an Image with an Arcade Physics body and related components.
 * The body can be dynamic or static.
 *
 * The main difference between an Arcade Image and an Arcade Sprite is that you cannot animate an Arcade Image.
 *
 * @class Image
 * @extends Phaser.GameObjects.Image
 * @memberof Phaser.Physics.Arcade
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.Physics.Arcade.Components.Acceleration
 * @extends Phaser.Physics.Arcade.Components.Angular
 * @extends Phaser.Physics.Arcade.Components.Bounce
 * @extends Phaser.Physics.Arcade.Components.Debug
 * @extends Phaser.Physics.Arcade.Components.Drag
 * @extends Phaser.Physics.Arcade.Components.Enable
 * @extends Phaser.Physics.Arcade.Components.Friction
 * @extends Phaser.Physics.Arcade.Components.Gravity
 * @extends Phaser.Physics.Arcade.Components.Immovable
 * @extends Phaser.Physics.Arcade.Components.Mass
 * @extends Phaser.Physics.Arcade.Components.Size
 * @extends Phaser.Physics.Arcade.Components.Velocity
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
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} x - The horizontal position of this Game Object in the world.
 * @param {number} y - The vertical position of this Game Object in the world.
 * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
 * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
 */
@:native("Phaser.Physics.Arcade.Image")
extern class Image extends phaser.gameobjects.Image {
    public function new(scene:phaser.Scene, x:Float, y:Float, texture:String, ?frame:Dynamic);
    /**
     * Sets the body's horizontal and vertical acceleration. If the vertical acceleration value is not provided, the vertical acceleration is set to the same value as the horizontal acceleration.
     *
     * @method Phaser.Physics.Arcade.Components.Acceleration#setAcceleration
     * @since 3.0.0
     *
     * @param {number} x - The horizontal acceleration
     * @param {number} [y=x] - The vertical acceleration
     *
     * @return {this} This Game Object.
     */
    public function setAcceleration(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the body's horizontal acceleration.
     *
     * @method Phaser.Physics.Arcade.Components.Acceleration#setAccelerationX
     * @since 3.0.0
     *
     * @param {number} value - The horizontal acceleration
     *
     * @return {this} This Game Object.
     */
    public function setAccelerationX(value:Float):Dynamic;
    /**
     * Sets the body's vertical acceleration.
     *
     * @method Phaser.Physics.Arcade.Components.Acceleration#setAccelerationY
     * @since 3.0.0
     *
     * @param {number} value - The vertical acceleration
     *
     * @return {this} This Game Object.
     */
    public function setAccelerationY(value:Float):Dynamic;
    /**
     * Sets the angular velocity of the body.
     *
     * In Arcade Physics, bodies cannot rotate. They are always axis-aligned.
     * However, they can have angular motion, which is passed on to the Game Object bound to the body,
     * causing them to visually rotate, even though the body remains axis-aligned.
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularVelocity
     * @since 3.0.0
     *
     * @param {number} value - The amount of angular velocity.
     *
     * @return {this} This Game Object.
     */
    public function setAngularVelocity(value:Float):Dynamic;
    /**
     * Sets the angular acceleration of the body.
     *
     * In Arcade Physics, bodies cannot rotate. They are always axis-aligned.
     * However, they can have angular motion, which is passed on to the Game Object bound to the body,
     * causing them to visually rotate, even though the body remains axis-aligned.
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularAcceleration
     * @since 3.0.0
     *
     * @param {number} value - The amount of angular acceleration.
     *
     * @return {this} This Game Object.
     */
    public function setAngularAcceleration(value:Float):Dynamic;
    /**
     * Sets the angular drag of the body. Drag is applied to the current velocity, providing a form of deceleration.
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularDrag
     * @since 3.0.0
     *
     * @param {number} value - The amount of drag.
     *
     * @return {this} This Game Object.
     */
    public function setAngularDrag(value:Float):Dynamic;
    /**
     * Sets the bounce values of this body.
     *
     * Bounce is the amount of restitution, or elasticity, the body has when it collides with another object.
     * A value of 1 means that it will retain its full velocity after the rebound. A value of 0 means it will not rebound at all.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounce
     * @since 3.0.0
     *
     * @param {number} x - The amount of horizontal bounce to apply on collision. A float, typically between 0 and 1.
     * @param {number} [y=x] - The amount of vertical bounce to apply on collision. A float, typically between 0 and 1.
     *
     * @return {this} This Game Object.
     */
    public function setBounce(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the horizontal bounce value for this body.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceX
     * @since 3.0.0
     *
     * @param {number} value - The amount of horizontal bounce to apply on collision. A float, typically between 0 and 1.
     *
     * @return {this} This Game Object.
     */
    public function setBounceX(value:Float):Dynamic;
    /**
     * Sets the vertical bounce value for this body.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceY
     * @since 3.0.0
     *
     * @param {number} value - The amount of vertical bounce to apply on collision. A float, typically between 0 and 1.
     *
     * @return {this} This Game Object.
     */
    public function setBounceY(value:Float):Dynamic;
    /**
     * Sets whether this Body collides with the world boundary.
     *
     * Optionally also sets the World Bounce values. If the `Body.worldBounce` is null, it's set to a new Phaser.Math.Vector2 first.
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setCollideWorldBounds
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - `true` if this body should collide with the world bounds, otherwise `false`.
     * @param {number} [bounceX] - If given this will be replace the `worldBounce.x` value.
     * @param {number} [bounceY] - If given this will be replace the `worldBounce.y` value.
     *
     * @return {this} This Game Object.
     */
    public function setCollideWorldBounds(?value:Bool, ?bounceX:Float, ?bounceY:Float):Dynamic;
    /**
     * Set to `true` to have this body render its outline to the debug display.
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowBody
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowBody:Bool;
    /**
     * Set to `true` to have this body render a velocity marker to the debug display.
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowVelocity
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowVelocity:Bool;
    /**
     * The color of the body outline when it renders to the debug display.
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugBodyColor
     * @type {number}
     * @since 3.0.0
     */
    public var debugBodyColor:Float;
    /**
     * Sets the debug values of this body.
     *
     * Bodies will only draw their debug if debug has been enabled for Arcade Physics as a whole.
     * Note that there is a performance cost in drawing debug displays. It should never be used in production.
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebug
     * @since 3.0.0
     *
     * @param {boolean} showBody - Set to `true` to have this body render its outline to the debug display.
     * @param {boolean} showVelocity - Set to `true` to have this body render a velocity marker to the debug display.
     * @param {number} bodyColor - The color of the body outline when rendered to the debug display.
     *
     * @return {this} This Game Object.
     */
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):Dynamic;
    /**
     * Sets the color of the body outline when it renders to the debug display.
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebugBodyColor
     * @since 3.0.0
     *
     * @param {number} value - The color of the body outline when rendered to the debug display.
     *
     * @return {this} This Game Object.
     */
    public function setDebugBodyColor(value:Float):Dynamic;
    /**
     * Sets the body's horizontal and vertical drag. If the vertical drag value is not provided, the vertical drag is set to the same value as the horizontal drag.
     *
     * Drag can be considered as a form of deceleration that will return the velocity of a body back to zero over time.
     * It is the absolute loss of velocity due to movement, in pixels per second squared.
     * The x and y components are applied separately.
     *
     * When `useDamping` is true, this is 1 minus the damping factor.
     * A value of 1 means the Body loses no velocity.
     * A value of 0.95 means the Body loses 5% of its velocity per step.
     * A value of 0.5 means the Body loses 50% of its velocity per step.
     *
     * Drag is applied only when `acceleration` is zero.
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDrag
     * @since 3.0.0
     *
     * @param {number} x - The amount of horizontal drag to apply.
     * @param {number} [y=x] - The amount of vertical drag to apply.
     *
     * @return {this} This Game Object.
     */
    public function setDrag(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the body's horizontal drag.
     *
     * Drag can be considered as a form of deceleration that will return the velocity of a body back to zero over time.
     * It is the absolute loss of velocity due to movement, in pixels per second squared.
     * The x and y components are applied separately.
     *
     * When `useDamping` is true, this is 1 minus the damping factor.
     * A value of 1 means the Body loses no velocity.
     * A value of 0.95 means the Body loses 5% of its velocity per step.
     * A value of 0.5 means the Body loses 50% of its velocity per step.
     *
     * Drag is applied only when `acceleration` is zero.
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDragX
     * @since 3.0.0
     *
     * @param {number} value - The amount of horizontal drag to apply.
     *
     * @return {this} This Game Object.
     */
    public function setDragX(value:Float):Dynamic;
    /**
     * Sets the body's vertical drag.
     *
     * Drag can be considered as a form of deceleration that will return the velocity of a body back to zero over time.
     * It is the absolute loss of velocity due to movement, in pixels per second squared.
     * The x and y components are applied separately.
     *
     * When `useDamping` is true, this is 1 minus the damping factor.
     * A value of 1 means the Body loses no velocity.
     * A value of 0.95 means the Body loses 5% of its velocity per step.
     * A value of 0.5 means the Body loses 50% of its velocity per step.
     *
     * Drag is applied only when `acceleration` is zero.
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDragY
     * @since 3.0.0
     *
     * @param {number} value - The amount of vertical drag to apply.
     *
     * @return {this} This Game Object.
     */
    public function setDragY(value:Float):Dynamic;
    /**
     * If this Body is using `drag` for deceleration this function controls how the drag is applied.
     * If set to `true` drag will use a damping effect rather than a linear approach. If you are
     * creating a game where the Body moves freely at any angle (i.e. like the way the ship moves in
     * the game Asteroids) then you will get a far smoother and more visually correct deceleration
     * by using damping, avoiding the axis-drift that is prone with linear deceleration.
     *
     * If you enable this property then you should use far smaller `drag` values than with linear, as
     * they are used as a multiplier on the velocity. Values such as 0.95 will give a nice slow
     * deceleration, where-as smaller values, such as 0.5 will stop an object almost immediately.
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDamping
     * @since 3.10.0
     *
     * @param {boolean} value - `true` to use damping for deceleration, or `false` to use linear deceleration.
     *
     * @return {this} This Game Object.
     */
    public function setDamping(value:Bool):Dynamic;
    /**
     * Enables this Game Object's Body.
     *
     * @method Phaser.Physics.Arcade.Components.Enable#enableBody
     * @since 3.0.0
     *
     * @param {boolean} reset - Also reset the Body and place it at (x, y).
     * @param {number} x - The horizontal position to place the Game Object and Body.
     * @param {number} y - The horizontal position to place the Game Object and Body.
     * @param {boolean} enableGameObject - Also activate this Game Object.
     * @param {boolean} showGameObject - Also show this Game Object.
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.Body#enable
     * @see Phaser.Physics.Arcade.StaticBody#enable
     * @see Phaser.Physics.Arcade.Body#reset
     * @see Phaser.Physics.Arcade.StaticBody#reset
     * @see Phaser.GameObjects.GameObject#active
     * @see Phaser.GameObjects.GameObject#visible
     */
    public function enableBody(reset:Bool, x:Float, y:Float, enableGameObject:Bool, showGameObject:Bool):Dynamic;
    /**
     * Stops and disables this Game Object's Body.
     *
     * @method Phaser.Physics.Arcade.Components.Enable#disableBody
     * @since 3.0.0
     *
     * @param {boolean} [disableGameObject=false] - Also deactivate this Game Object.
     * @param {boolean} [hideGameObject=false] - Also hide this Game Object.
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.Body#enable
     * @see Phaser.Physics.Arcade.StaticBody#enable
     * @see Phaser.GameObjects.GameObject#active
     * @see Phaser.GameObjects.GameObject#visible
     */
    public function disableBody(?disableGameObject:Bool, ?hideGameObject:Bool):Dynamic;
    /**
     * Syncs the Body's position and size with its parent Game Object.
     * You don't need to call this for Dynamic Bodies, as it happens automatically.
     * But for Static bodies it's a useful way of modifying the position of a Static Body
     * in the Physics World, based on its Game Object.
     *
     * @method Phaser.Physics.Arcade.Components.Enable#refreshBody
     * @since 3.1.0
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.StaticBody#updateFromGameObject
     */
    public function refreshBody():Dynamic;
    /**
     * Sets the friction of this game object's physics body.
     * In Arcade Physics, friction is a special case of motion transfer from an "immovable" body to a riding body.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFriction
     * @since 3.0.0
     *
     * @param {number} x - The amount of horizontal friction to apply, [0, 1].
     * @param {number} [y=x] - The amount of vertical friction to apply, [0, 1].
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.Body#friction
     */
    public function setFriction(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the horizontal friction of this game object's physics body.
     * This can move a riding body horizontally when it collides with this one on the vertical axis.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFrictionX
     * @since 3.0.0
     *
     * @param {number} x - The amount of friction to apply, [0, 1].
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.Body#friction
     */
    public function setFrictionX(x:Float):Dynamic;
    /**
     * Sets the vertical friction of this game object's physics body.
     * This can move a riding body vertically when it collides with this one on the horizontal axis.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFrictionY
     * @since 3.0.0
     *
     * @param {number} y - The amount of friction to apply, [0, 1].
     *
     * @return {this} This Game Object.
     *
     * @see Phaser.Physics.Arcade.Body#friction
     */
    public function setFrictionY(y:Float):Dynamic;
    /**
     * Set the X and Y values of the gravitational pull to act upon this Arcade Physics Game Object. Values can be positive or negative. Larger values result in a stronger effect.
     *
     * If only one value is provided, this value will be used for both the X and Y axis.
     *
     * @method Phaser.Physics.Arcade.Components.Gravity#setGravity
     * @since 3.0.0
     *
     * @param {number} x - The gravitational force to be applied to the X-axis.
     * @param {number} [y=x] - The gravitational force to be applied to the Y-axis. If this is not specified, the X value will be used.
     *
     * @return {this} This Game Object.
     */
    public function setGravity(x:Float, ?y:Float):Dynamic;
    /**
     * Set the gravitational force to be applied to the X axis. Value can be positive or negative. Larger values result in a stronger effect.
     *
     * @method Phaser.Physics.Arcade.Components.Gravity#setGravityX
     * @since 3.0.0
     *
     * @param {number} x - The gravitational force to be applied to the X-axis.
     *
     * @return {this} This Game Object.
     */
    public function setGravityX(x:Float):Dynamic;
    /**
     * Set the gravitational force to be applied to the Y axis. Value can be positive or negative. Larger values result in a stronger effect.
     *
     * @method Phaser.Physics.Arcade.Components.Gravity#setGravityY
     * @since 3.0.0
     *
     * @param {number} y - The gravitational force to be applied to the Y-axis.
     *
     * @return {this} This Game Object.
     */
    public function setGravityY(y:Float):Dynamic;
    /**
     * Sets Whether this Body can be moved by collisions with another Body.
     *
     * @method Phaser.Physics.Arcade.Components.Immovable#setImmovable
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - Sets if this body can be moved by collisions with another Body.
     *
     * @return {this} This Game Object.
     */
    public function setImmovable(?value:Bool):Dynamic;
    /**
     * Sets the mass of the physics body
     *
     * @method Phaser.Physics.Arcade.Components.Mass#setMass
     * @since 3.0.0
     *
     * @param {number} value - New value for the mass of the body.
     *
     * @return {this} This Game Object.
     */
    public function setMass(value:Float):Dynamic;
    /**
     * Sets the body offset. This allows you to adjust the difference between the center of the body
     * and the x and y coordinates of the parent Game Object.
     *
     * @method Phaser.Physics.Arcade.Components.Size#setOffset
     * @since 3.0.0
     *
     * @param {number} x - The amount to offset the body from the parent Game Object along the x-axis.
     * @param {number} [y=x] - The amount to offset the body from the parent Game Object along the y-axis. Defaults to the value given for the x-axis.
     *
     * @return {this} This Game Object.
     */
    public function setOffset(x:Float, ?y:Float):Dynamic;
    /**
     * Sets this physics body to use a circle for collision instead of a rectangle.
     *
     * @method Phaser.Physics.Arcade.Components.Size#setCircle
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the physics body, in pixels.
     * @param {number} [offsetX] - The amount to offset the body from the parent Game Object along the x-axis.
     * @param {number} [offsetY] - The amount to offset the body from the parent Game Object along the y-axis.
     *
     * @return {this} This Game Object.
     */
    public function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
    /**
     * Sets the velocity of the Body.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - The horizontal velocity of the body. Positive values move the body to the right, while negative values move it to the left.
     * @param {number} [y=x] - The vertical velocity of the body. Positive values move the body down, while negative values move it up.
     *
     * @return {this} This Game Object.
     */
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the horizontal component of the body's velocity.
     *
     * Positive values move the body to the right, while negative values move it to the left.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityX
     * @since 3.0.0
     *
     * @param {number} x - The new horizontal velocity.
     *
     * @return {this} This Game Object.
     */
    public function setVelocityX(x:Float):Dynamic;
    /**
     * Sets the vertical component of the body's velocity.
     *
     * Positive values move the body down, while negative values move it up.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityY
     * @since 3.0.0
     *
     * @param {number} y - The new vertical velocity of the body.
     *
     * @return {this} This Game Object.
     */
    public function setVelocityY(y:Float):Dynamic;
    /**
     * Sets the maximum velocity of the body.
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setMaxVelocity
     * @since 3.0.0
     *
     * @param {number} x - The new maximum horizontal velocity.
     * @param {number} [y=x] - The new maximum vertical velocity.
     *
     * @return {this} This Game Object.
     */
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
