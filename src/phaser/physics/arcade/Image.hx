package phaser.physics.arcade;

/**
 * @classdesc
 * An Arcade Physics Image Game Object.
 *
 * An Image is a light-weight Game Object useful for the display of static images in your game,
 * such as logos, backgrounds, scenery or other non-animated elements. Images can have input
 * events and physics bodies, or be tweened, tinted or scrolled. The main difference between an
 * Image and a Sprite is that you cannot animate an Image as they do not have the Animation component.
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
 * @extends Phaser.GameObjects.Components.ScaleMode
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
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularVelocity
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setAngularVelocity(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularAcceleration
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setAngularAcceleration(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Angular#setAngularDrag
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setAngularDrag(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounce
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setBounce(x:Float, ?y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceX
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setBounceX(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setBounceY
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setBounceY(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Bounce#setCollideWorldBounds
     * @since 3.0.0
     *
     * @param {boolean} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setCollideWorldBounds(value:Bool):Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowBody
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowBody:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugShowVelocity
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowVelocity:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Arcade.Components.Debug#debugBodyColor
     * @type {number}
     * @since 3.0.0
     */
    public var debugBodyColor:Float;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebug
     * @since 3.0.0
     *
     * @param {boolean} showBody - [description]
     * @param {boolean} showVelocity - [description]
     * @param {number} bodyColor - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Debug#setDebugBodyColor
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDebugBodyColor(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDrag
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDrag(x:Float, ?y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDragX
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDragX(value:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Drag#setDragY
     * @since 3.0.0
     *
     * @param {number} value - [description]
     *
     * @return {this} This Game Object.
     */
    public function setDragY(value:Float):Dynamic;
    /**
     * [description]
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
     * Sets the friction (e.g. the amount of velocity reduced over time) of the physics body when moving.
     * The higher than friction, the faster the body will slow down once force stops being applied to it.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFriction
     * @since 3.0.0
     *
     * @param {number} x - The amount of horizontal friction to apply.
     * @param {number} [y=x] - The amount of vertical friction to apply.
     *
     * @return {this} This Game Object.
     */
    public function setFriction(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the friction (e.g. the amount of velocity reduced over time) of the physics body when moving horizontally in the X axis.
     * The higher than friction, the faster the body will slow down once force stops being applied to it.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFrictionX
     * @since 3.0.0
     *
     * @param {number} x - The amount of friction to apply.
     *
     * @return {this} This Game Object.
     */
    public function setFrictionX(x:Float):Dynamic;
    /**
     * Sets the friction (e.g. the amount of velocity reduced over time) of the physics body when moving vertically in the Y axis.
     * The higher than friction, the faster the body will slow down once force stops being applied to it.
     *
     * @method Phaser.Physics.Arcade.Components.Friction#setFrictionY
     * @since 3.0.0
     *
     * @param {number} x - The amount of friction to apply.
     *
     * @return {this} This Game Object.
     */
    public function setFrictionY(x:Float):Dynamic;
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
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Immovable#setImmovable
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setImmovable(?value:Bool):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Mass#setMass
     * @since 3.0.0
     *
     * @param {number} value - [description]
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
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocity
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setVelocity(x:Float, ?y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityX
     * @since 3.0.0
     *
     * @param {number} x - [description]
     *
     * @return {this} This Game Object.
     */
    public function setVelocityX(x:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setVelocityY
     * @since 3.0.0
     *
     * @param {number} y - [description]
     *
     * @return {this} This Game Object.
     */
    public function setVelocityY(y:Float):Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Arcade.Components.Velocity#setMaxVelocity
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} [y=x] - [description]
     *
     * @return {this} This Game Object.
     */
    public function setMaxVelocity(x:Float, ?y:Float):Dynamic;
}
