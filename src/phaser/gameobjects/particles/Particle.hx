package phaser.gameobjects.particles;

/**
 * @classdesc
 * A Particle is a simple Game Object controlled by a Particle Emitter and Manager, and rendered by the Manager.
 * It uses its own lightweight physics system, and can interact only with its Emitter's bounds and zones.
 *
 * @class Particle
 * @memberof Phaser.GameObjects.Particles
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.GameObjects.Particles.ParticleEmitter} emitter - The Emitter to which this Particle belongs.
 */
@:native("Phaser.GameObjects.Particles.Particle")
extern class Particle {
    public function new(emitter:phaser.gameobjects.particles.ParticleEmitter);
    /**
     * The Emitter to which this Particle belongs.
     *
     * A Particle can only belong to a single Emitter and is created, updated and destroyed via it.
     *
     * @name Phaser.GameObjects.Particles.Particle#emitter
     * @type {Phaser.GameObjects.Particles.ParticleEmitter}
     * @since 3.0.0
     */
    public var emitter:phaser.gameobjects.particles.ParticleEmitter;
    /**
     * The texture frame used to render this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#frame
     * @type {Phaser.Textures.Frame}
     * @default null
     * @since 3.0.0
     */
    public var frame:phaser.textures.Frame;
    /**
     * The position of this Particle within its Emitter's particle pool.
     *
     * @name Phaser.GameObjects.Particles.Particle#index
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var index:Float;
    /**
     * The x coordinate of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y coordinate of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The x velocity of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#velocityX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var velocityX:Float;
    /**
     * The y velocity of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#velocityY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var velocityY:Float;
    /**
     * The x acceleration of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#accelerationX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var accelerationX:Float;
    /**
     * The y acceleration of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#accelerationY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var accelerationY:Float;
    /**
     * The maximum horizontal velocity this Particle can travel at.
     *
     * @name Phaser.GameObjects.Particles.Particle#maxVelocityX
     * @type {number}
     * @default 10000
     * @since 3.0.0
     */
    public var maxVelocityX:Float;
    /**
     * The maximum vertical velocity this Particle can travel at.
     *
     * @name Phaser.GameObjects.Particles.Particle#maxVelocityY
     * @type {number}
     * @default 10000
     * @since 3.0.0
     */
    public var maxVelocityY:Float;
    /**
     * The bounciness, or restitution, of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#bounce
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var bounce:Float;
    /**
     * The horizontal scale of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#scaleX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleX:Float;
    /**
     * The vertical scale of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#scaleY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleY:Float;
    /**
     * The alpha value of this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#alpha
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * The angle of this Particle in degrees.
     *
     * @name Phaser.GameObjects.Particles.Particle#angle
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Float;
    /**
     * The angle of this Particle in radians.
     *
     * @name Phaser.GameObjects.Particles.Particle#rotation
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * The tint applied to this Particle.
     *
     * @name Phaser.GameObjects.Particles.Particle#tint
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tint:Int;
    /**
     * The lifespan of this Particle in ms.
     *
     * @name Phaser.GameObjects.Particles.Particle#life
     * @type {number}
     * @default 1000
     * @since 3.0.0
     */
    public var life:Float;
    /**
     * The current life of this Particle in ms.
     *
     * @name Phaser.GameObjects.Particles.Particle#lifeCurrent
     * @type {number}
     * @default 1000
     * @since 3.0.0
     */
    public var lifeCurrent:Float;
    /**
     * The delay applied to this Particle upon emission, in ms.
     *
     * @name Phaser.GameObjects.Particles.Particle#delayCurrent
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var delayCurrent:Float;
    /**
     * The normalized lifespan T value, where 0 is the start and 1 is the end.
     *
     * @name Phaser.GameObjects.Particles.Particle#lifeT
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var lifeT:Float;
    /**
     * The data used by the ease equation.
     *
     * @name Phaser.GameObjects.Particles.Particle#data
     * @type {object}
     * @since 3.0.0
     */
    public var data:Dynamic;
    /**
     * Checks to see if this Particle is alive and updating.
     *
     * @method Phaser.GameObjects.Particles.Particle#isAlive
     * @since 3.0.0
     *
     * @return {boolean} `true` if this Particle is alive and updating, otherwise `false`.
     */
    public function isAlive():Bool;
    /**
     * Starts this Particle from the given coordinates.
     *
     * @method Phaser.GameObjects.Particles.Particle#fire
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to launch this Particle from.
     * @param {number} y - The y coordinate to launch this Particle from.
     */
    public function fire(x:Float, y:Float):Void;
    /**
     * An internal method that calculates the velocity of the Particle.
     *
     * @method Phaser.GameObjects.Particles.Particle#computeVelocity
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.ParticleEmitter} emitter - The Emitter that is updating this Particle.
     * @param {number} delta - The delta time in ms.
     * @param {number} step - The delta value divided by 1000.
     * @param {array} processors - Particle processors (gravity wells).
     */
    public function computeVelocity(emitter:phaser.gameobjects.particles.ParticleEmitter, delta:Float, step:Float, processors:Array<Dynamic>):Void;
    /**
     * Checks if this Particle is still within the bounds defined by the given Emitter.
     *
     * If not, and depending on the Emitter collision flags, the Particle may either stop or rebound.
     *
     * @method Phaser.GameObjects.Particles.Particle#checkBounds
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.ParticleEmitter} emitter - The Emitter to check the bounds against.
     */
    public function checkBounds(emitter:phaser.gameobjects.particles.ParticleEmitter):Void;
    /**
     * The main update method for this Particle.
     *
     * Updates its life values, computes the velocity and repositions the Particle.
     *
     * @method Phaser.GameObjects.Particles.Particle#update
     * @since 3.0.0
     *
     * @param {number} delta - The delta time in ms.
     * @param {number} step - The delta value divided by 1000.
     * @param {array} processors - An optional array of update processors.
     *
     * @return {boolean} Returns `true` if this Particle has now expired and should be removed, otherwise `false` if still active.
     */
    public function update(delta:Float, step:Float, processors:Array<Dynamic>):Bool;
}
