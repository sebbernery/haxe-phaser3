package phaser.physics.impact;

/**
 * @classdesc
 * An Impact.js compatible physics body.
 * This re-creates the properties you'd get on an Entity and the math needed to update them.
 *
 * @class Body
 * @memberof Phaser.Physics.Impact
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Physics.Impact.World} world - [description]
 * @param {number} x - [description]
 * @param {number} y - [description]
 * @param {number} [sx=16] - [description]
 * @param {number} [sy=16] - [description]
 */
@:native("Phaser.Physics.Impact.Body")
extern class Body {
    public function new(world:phaser.physics.impact.World, x:Float, y:Float, ?sx:Float, ?sy:Float);
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#world
     * @type {Phaser.Physics.Impact.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.impact.World;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#gameObject
     * @type {Phaser.GameObjects.GameObject}
     * @default null
     * @since 3.0.0
     */
    public var gameObject:phaser.gameobjects.GameObject;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#enabled
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var enabled:Bool;
    /**
     * The ImpactBody, ImpactSprite or ImpactImage object that owns this Body, if any.
     *
     * @name Phaser.Physics.Impact.Body#parent
     * @type {?(Phaser.Physics.Impact.ImpactBody|Phaser.Physics.Impact.ImpactImage|Phaser.Physics.Impact.ImpactSprite)}
     * @since 3.0.0
     */
    public var parent:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#id
     * @type {integer}
     * @since 3.0.0
     */
    public var id:Int;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#name
     * @type {string}
     * @default ''
     * @since 3.0.0
     */
    public var name:String;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#size
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var size:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#offset
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var offset:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#pos
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var pos:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#last
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var last:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#vel
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var vel:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#accel
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var accel:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#friction
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var friction:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#maxVel
     * @type {{x: number, y: number}}
     * @since 3.0.0
     */
    public var maxVel:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#standing
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var standing:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#gravityFactor
     * @type {number}
     * @since 3.0.0
     */
    public var gravityFactor:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#bounciness
     * @type {number}
     * @since 3.0.0
     */
    public var bounciness:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#minBounceVelocity
     * @type {number}
     * @since 3.0.0
     */
    public var minBounceVelocity:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#accelGround
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var accelGround:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#accelAir
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var accelAir:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#jumpSpeed
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var jumpSpeed:Float;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#type
     * @type {Phaser.Physics.Impact.TYPE}
     * @since 3.0.0
     */
    public var type:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#checkAgainst
     * @type {Phaser.Physics.Impact.TYPE}
     * @since 3.0.0
     */
    public var checkAgainst:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#collides
     * @type {Phaser.Physics.Impact.COLLIDES}
     * @since 3.0.0
     */
    public var collides:Dynamic;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#debugShowBody
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowBody:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#debugShowVelocity
     * @type {boolean}
     * @since 3.0.0
     */
    public var debugShowVelocity:Bool;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#debugBodyColor
     * @type {integer}
     * @since 3.0.0
     */
    public var debugBodyColor:Int;
    /**
     * [description]
     *
     * @name Phaser.Physics.Impact.Body#updateCallback
     * @type {?BodyUpdateCallback}
     * @since 3.0.0
     */
    public var updateCallback:BodyUpdateCallback;
    /**
     * min 44 deg, max 136 deg
     *
     * @name Phaser.Physics.Impact.Body#slopeStanding
     * @type {{ min: number, max: number }}
     * @since 3.0.0
     */
    public var slopeStanding:Dynamic;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Body#reset
     * @since 3.0.0
     *
     * @param {number} x - [description]
     * @param {number} y - [description]
     */
    public function reset(x:Float, y:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Body#update
     * @since 3.0.0
     *
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(delta:Float):Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Body#drawDebug
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Graphics} graphic - [description]
     */
    public function drawDebug(graphic:phaser.gameobjects.Graphics):Void;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Body#willDrawDebug
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function willDrawDebug():Bool;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Body#skipHash
     * @since 3.0.0
     *
     * @return {boolean} [description]
     */
    public function skipHash():Bool;
    /**
     * Determines whether the body collides with the `other` one or not.
     *
     * @method Phaser.Physics.Impact.Body#touches
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Impact.Body} other - [description]
     *
     * @return {boolean} [description]
     */
    public function touches(other:phaser.physics.impact.Body):Bool;
    /**
     * Reset the size and position of the physics body.
     *
     * @method Phaser.Physics.Impact.Body#resetSize
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to position the body.
     * @param {number} y - The y coordinate to position the body.
     * @param {number} width - The width of the body.
     * @param {number} height - The height of the body.
     *
     * @return {Phaser.Physics.Impact.Body} This Body object.
     */
    public function resetSize(x:Float, y:Float, width:Float, height:Float):phaser.physics.impact.Body;
    /**
     * Export this body object to JSON.
     *
     * @method Phaser.Physics.Impact.Body#toJSON
     * @since 3.0.0
     *
     * @return {JSONImpactBody} JSON representation of this body object.
     */
    public function toJSON():JSONImpactBody;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Body#fromJSON
     * @todo Code it!
     * @since 3.0.0
     *
     * @param {object} config - [description]
     */
    public function fromJSON(config:Dynamic):Void;
    /**
     * Can be overridden by user code
     *
     * @method Phaser.Physics.Impact.Body#check
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Impact.Body} other - [description]
     */
    public function check(other:phaser.physics.impact.Body):Void;
    /**
     * Can be overridden by user code
     *
     * @method Phaser.Physics.Impact.Body#collideWith
     * @since 3.0.0
     *
     * @param {Phaser.Physics.Impact.Body} other - [description]
     * @param {string} axis - [description]
     */
    public function collideWith(other:phaser.physics.impact.Body, axis:String):Void;
    /**
     * Can be overridden by user code but must return a boolean.
     *
     * @method Phaser.Physics.Impact.Body#handleMovementTrace
     * @since 3.0.0
     *
     * @param {number} res - [description]
     *
     * @return {boolean} [description]
     */
    public function handleMovementTrace(res:Float):Bool;
    /**
     * [description]
     *
     * @method Phaser.Physics.Impact.Body#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
