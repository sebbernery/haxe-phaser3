package phaser.gameobjects.particles;

/**
 * @classdesc
 * A particle emitter represents a single particle stream.
 * It controls a pool of {@link Phaser.GameObjects.Particles.Particle Particles} and is controlled by a {@link Phaser.GameObjects.Particles.ParticleEmitterManager Particle Emitter Manager}.
 *
 * @class ParticleEmitter
 * @memberof Phaser.GameObjects.Particles
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.GameObjects.Particles.ParticleEmitterManager} manager - The Emitter Manager this Emitter belongs to.
 * @param {Phaser.Types.GameObjects.Particles.ParticleEmitterConfig} config - Settings for this emitter.
 */
@:native("Phaser.GameObjects.Particles.ParticleEmitter")
extern class ParticleEmitter extends phaser.gameobjects.components.BlendMode {
    public function new(manager:phaser.gameobjects.particles.ParticleEmitterManager, config:phaser.types.gameobjects.particles.ParticleEmitterConfig);
    /**
     * The Emitter Manager this Emitter belongs to.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#manager
     * @type {Phaser.GameObjects.Particles.ParticleEmitterManager}
     * @since 3.0.0
     */
    public var manager:phaser.gameobjects.particles.ParticleEmitterManager;
    /**
     * The texture assigned to particles.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#texture
     * @type {Phaser.Textures.Texture}
     * @since 3.0.0
     */
    public var texture:phaser.textures.Texture;
    /**
     * The texture frames assigned to particles.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#frames
     * @type {Phaser.Textures.Frame[]}
     * @since 3.0.0
     */
    public var frames:Array<phaser.textures.Frame>;
    /**
     * The default texture frame assigned to particles.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#defaultFrame
     * @type {Phaser.Textures.Frame}
     * @since 3.0.0
     */
    public var defaultFrame:phaser.textures.Frame;
    /**
     * Names of simple configuration properties.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#configFastMap
     * @type {object}
     * @since 3.0.0
     */
    public var configFastMap:Dynamic;
    /**
     * Names of complex configuration properties.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#configOpMap
     * @type {object}
     * @since 3.0.0
     */
    public var configOpMap:Dynamic;
    /**
     * The name of this Particle Emitter.
     *
     * Empty by default and never populated by Phaser, this is left for developers to use.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#name
     * @type {string}
     * @default ''
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The Particle Class which will be emitted by this Emitter.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#particleClass
     * @type {Phaser.GameObjects.Particles.Particle}
     * @default Phaser.GameObjects.Particles.Particle
     * @since 3.0.0
     */
    public var particleClass:phaser.gameobjects.particles.Particle;
    /**
     * The x-coordinate of the particle origin (where particles will be emitted).
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#x
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setPosition
     */
    public var x:phaser.gameobjects.particles.EmitterOp;
    /**
     * The y-coordinate of the particle origin (where particles will be emitted).
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#y
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setPosition
     */
    public var y:phaser.gameobjects.particles.EmitterOp;
    /**
     * A radial emitter will emit particles in all directions between angle min and max,
     * using {@link Phaser.GameObjects.Particles.ParticleEmitter#speed} as the value. If set to false then this acts as a point Emitter.
     * A point emitter will emit particles only in the direction derived from the speedX and speedY values.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#radial
     * @type {boolean}
     * @default true
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setRadial
     */
    public var radial:Bool;
    /**
     * Horizontal acceleration applied to emitted particles, in pixels per second squared.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#gravityX
     * @type {number}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setGravity
     */
    public var gravityX:Float;
    /**
     * Vertical acceleration applied to emitted particles, in pixels per second squared.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#gravityY
     * @type {number}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setGravity
     */
    public var gravityY:Float;
    /**
     * Whether accelerationX and accelerationY are non-zero. Set automatically during configuration.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#acceleration
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var acceleration:Bool;
    /**
     * Horizontal acceleration applied to emitted particles, in pixels per second squared.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#accelerationX
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     */
    public var accelerationX:phaser.gameobjects.particles.EmitterOp;
    /**
     * Vertical acceleration applied to emitted particles, in pixels per second squared.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#accelerationY
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     */
    public var accelerationY:phaser.gameobjects.particles.EmitterOp;
    /**
     * The maximum horizontal velocity of emitted particles, in pixels per second squared.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#maxVelocityX
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 10000
     * @since 3.0.0
     */
    public var maxVelocityX:phaser.gameobjects.particles.EmitterOp;
    /**
     * The maximum vertical velocity of emitted particles, in pixels per second squared.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#maxVelocityY
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 10000
     * @since 3.0.0
     */
    public var maxVelocityY:phaser.gameobjects.particles.EmitterOp;
    /**
     * The initial horizontal speed of emitted particles, in pixels per second.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#speedX
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setSpeedX
     */
    public var speedX:phaser.gameobjects.particles.EmitterOp;
    /**
     * The initial vertical speed of emitted particles, in pixels per second.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#speedY
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setSpeedY
     */
    public var speedY:phaser.gameobjects.particles.EmitterOp;
    /**
     * Whether moveToX and moveToY are nonzero. Set automatically during configuration.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#moveTo
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var moveTo:Bool;
    /**
     * The x-coordinate emitted particles move toward, when {@link Phaser.GameObjects.Particles.ParticleEmitter#moveTo} is true.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#moveToX
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     */
    public var moveToX:phaser.gameobjects.particles.EmitterOp;
    /**
     * The y-coordinate emitted particles move toward, when {@link Phaser.GameObjects.Particles.ParticleEmitter#moveTo} is true.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#moveToY
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     */
    public var moveToY:phaser.gameobjects.particles.EmitterOp;
    /**
     * Whether particles will rebound when they meet the emitter bounds.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#bounce
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     */
    public var bounce:phaser.gameobjects.particles.EmitterOp;
    /**
     * The horizontal scale of emitted particles.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#scaleX
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 1
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setScale
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setScaleX
     */
    public var scaleX:phaser.gameobjects.particles.EmitterOp;
    /**
     * The vertical scale of emitted particles.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#scaleY
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 1
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setScale
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setScaleY
     */
    public var scaleY:phaser.gameobjects.particles.EmitterOp;
    /**
     * Color tint applied to emitted particles. Any alpha component (0xAA000000) is ignored.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#tint
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0xffffffff
     * @since 3.0.0
     */
    public var tint:phaser.gameobjects.particles.EmitterOp;
    /**
     * The alpha (transparency) of emitted particles.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#alpha
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 1
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setAlpha
     */
    public var alpha:phaser.gameobjects.particles.EmitterOp;
    /**
     * The lifespan of emitted particles, in ms.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#lifespan
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 1000
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setLifespan
     */
    public var lifespan:phaser.gameobjects.particles.EmitterOp;
    /**
     * The angle of the initial velocity of emitted particles, in degrees.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#angle
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default { min: 0, max: 360 }
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setAngle
     */
    public var angle:phaser.gameobjects.particles.EmitterOp;
    /**
     * The rotation of emitted particles, in degrees.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#rotate
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     */
    public var rotate:phaser.gameobjects.particles.EmitterOp;
    /**
     * A function to call when a particle is emitted.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#emitCallback
     * @type {?Phaser.Types.GameObjects.Particles.ParticleEmitterCallback}
     * @default null
     * @since 3.0.0
     */
    public var emitCallback:phaser.types.gameobjects.particles.ParticleEmitterCallback;
    /**
     * The calling context for {@link Phaser.GameObjects.Particles.ParticleEmitter#emitCallback}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#emitCallbackScope
     * @type {?*}
     * @default null
     * @since 3.0.0
     */
    public var emitCallbackScope:Dynamic;
    /**
     * A function to call when a particle dies.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#deathCallback
     * @type {?Phaser.Types.GameObjects.Particles.ParticleDeathCallback}
     * @default null
     * @since 3.0.0
     */
    public var deathCallback:phaser.types.gameobjects.particles.ParticleDeathCallback;
    /**
     * The calling context for {@link Phaser.GameObjects.Particles.ParticleEmitter#deathCallback}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#deathCallbackScope
     * @type {?*}
     * @default null
     * @since 3.0.0
     */
    public var deathCallbackScope:Dynamic;
    /**
     * Set to hard limit the amount of particle objects this emitter is allowed to create.
     * 0 means unlimited.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#maxParticles
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var maxParticles:Int;
    /**
     * How many particles are emitted each time particles are emitted (one explosion or one flow cycle).
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#quantity
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 1
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setFrequency
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setQuantity
     */
    public var quantity:phaser.gameobjects.particles.EmitterOp;
    /**
     * How many ms to wait after emission before the particles start updating.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#delay
     * @type {Phaser.GameObjects.Particles.EmitterOp}
     * @default 0
     * @since 3.0.0
     */
    public var delay:phaser.gameobjects.particles.EmitterOp;
    /**
     * For a flow emitter, the time interval (>= 0) between particle flow cycles in ms.
     * A value of 0 means there is one particle flow cycle for each logic update (the maximum flow frequency). This is the default setting.
     * For an exploding emitter, this value will be -1.
     * Calling {@link Phaser.GameObjects.Particles.ParticleEmitter#flow} also puts the emitter in flow mode (frequency >= 0).
     * Calling {@link Phaser.GameObjects.Particles.ParticleEmitter#explode} also puts the emitter in explode mode (frequency = -1).
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#frequency
     * @type {number}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setFrequency
     */
    public var frequency:Float;
    /**
     * Controls if the emitter is currently emitting a particle flow (when frequency >= 0).
     * Already alive particles will continue to update until they expire.
     * Controlled by {@link Phaser.GameObjects.Particles.ParticleEmitter#start} and {@link Phaser.GameObjects.Particles.ParticleEmitter#stop}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#on
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var on:Bool;
    /**
     * Newly emitted particles are added to the top of the particle list, i.e. rendered above those already alive.
     * Set to false to send them to the back.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#particleBringToTop
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var particleBringToTop:Bool;
    /**
     * The time rate applied to active particles, affecting lifespan, movement, and tweens. Values larger than 1 are faster than normal.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#timeScale
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var timeScale:Float;
    /**
     * An object describing a shape to emit particles from.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#emitZone
     * @type {?Phaser.GameObjects.Particles.Zones.EdgeZone|Phaser.GameObjects.Particles.Zones.RandomZone}
     * @default null
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setEmitZone
     */
    public var emitZone:Dynamic;
    /**
     * An object describing a shape that deactivates particles when they interact with it.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#deathZone
     * @type {?Phaser.GameObjects.Particles.Zones.DeathZone}
     * @default null
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setDeathZone
     */
    public var deathZone:phaser.gameobjects.particles.zones.DeathZone;
    /**
     * A rectangular boundary constraining particle movement.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#bounds
     * @type {?Phaser.Geom.Rectangle}
     * @default null
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setBounds
     */
    public var bounds:phaser.geom.Rectangle;
    /**
     * Whether particles interact with the left edge of the emitter {@link Phaser.GameObjects.Particles.ParticleEmitter#bounds}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#collideLeft
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var collideLeft:Bool;
    /**
     * Whether particles interact with the right edge of the emitter {@link Phaser.GameObjects.Particles.ParticleEmitter#bounds}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#collideRight
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var collideRight:Bool;
    /**
     * Whether particles interact with the top edge of the emitter {@link Phaser.GameObjects.Particles.ParticleEmitter#bounds}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#collideTop
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var collideTop:Bool;
    /**
     * Whether particles interact with the bottom edge of the emitter {@link Phaser.GameObjects.Particles.ParticleEmitter#bounds}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#collideBottom
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var collideBottom:Bool;
    /**
     * Whether this emitter updates itself and its particles.
     *
     * Controlled by {@link Phaser.GameObjects.Particles.ParticleEmitter#pause}
     * and {@link Phaser.GameObjects.Particles.ParticleEmitter#resume}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#active
     * @type {boolean}
     * @default true
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * A Game Object whose position is used as the particle origin.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#follow
     * @type {?Phaser.GameObjects.GameObject}
     * @default null
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#startFollow
     * @see Phaser.GameObjects.Particles.ParticleEmitter#stopFollow
     */
    public var follow:phaser.gameobjects.GameObject;
    /**
     * The offset of the particle origin from the {@link Phaser.GameObjects.Particles.ParticleEmitter#follow} target.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#followOffset
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#startFollow
     */
    public var followOffset:phaser.math.Vector2;
    /**
     * Whether the emitter's {@link Phaser.GameObjects.Particles.ParticleEmitter#visible} state will track
     * the {@link Phaser.GameObjects.Particles.ParticleEmitter#follow} target's visibility state.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#trackVisible
     * @type {boolean}
     * @default false
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#startFollow
     */
    public var trackVisible:Bool;
    /**
     * The current texture frame, as an index of {@link Phaser.GameObjects.Particles.ParticleEmitter#frames}.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#currentFrame
     * @type {integer}
     * @default 0
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setFrame
     */
    public var currentFrame:Int;
    /**
     * Whether texture {@link Phaser.GameObjects.Particles.ParticleEmitter#frames} are selected at random.
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#randomFrame
     * @type {boolean}
     * @default true
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setFrame
     */
    public var randomFrame:Bool;
    /**
     * The number of consecutive particles that receive a single texture frame (per frame cycle).
     *
     * @name Phaser.GameObjects.Particles.ParticleEmitter#frameQuantity
     * @type {integer}
     * @default 1
     * @since 3.0.0
     * @see Phaser.GameObjects.Particles.ParticleEmitter#setFrame
     */
    public var frameQuantity:Int;
    /**
     * Merges configuration settings into the emitter's current settings.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#fromJSON
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.ParticleEmitterConfig} config - Settings for this emitter.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function fromJSON(config:phaser.types.gameobjects.particles.ParticleEmitterConfig):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Creates a description of this emitter suitable for JSON serialization.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#toJSON
     * @since 3.0.0
     *
     * @param {object} [output] - An object to copy output into.
     *
     * @return {object} - The output object.
     */
    public function toJSON(?output:Dynamic):Dynamic;
    /**
     * Continuously moves the particle origin to follow a Game Object's position.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#startFollow
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} target - The Game Object to follow.
     * @param {number} [offsetX=0] - Horizontal offset of the particle origin from the Game Object.
     * @param {number} [offsetY=0] - Vertical offset of the particle origin from the Game Object.
     * @param {boolean} [trackVisible=false] - Whether the emitter's visible state will track the target's visible state.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function startFollow(target:phaser.gameobjects.GameObject, ?offsetX:Float, ?offsetY:Float, ?trackVisible:Bool):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Stops following a Game Object.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#stopFollow
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function stopFollow():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Chooses a texture frame from {@link Phaser.GameObjects.Particles.ParticleEmitter#frames}.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#getFrame
     * @since 3.0.0
     *
     * @return {Phaser.Textures.Frame} The texture frame.
     */
    public function getFrame():phaser.textures.Frame;
    /**
     * Sets a pattern for assigning texture frames to emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setFrame
     * @since 3.0.0
     *
     * @param {(array|string|integer|Phaser.Types.GameObjects.Particles.ParticleEmitterFrameConfig)} frames - One or more texture frames, or a configuration object.
     * @param {boolean} [pickRandom=true] - Whether frames should be assigned at random from `frames`.
     * @param {integer} [quantity=1] - The number of consecutive particles that will receive each frame.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setFrame(frames:Dynamic, ?pickRandom:Bool, ?quantity:Int):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Turns {@link Phaser.GameObjects.Particles.ParticleEmitter#radial} particle movement on or off.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setRadial
     * @since 3.0.0
     *
     * @param {boolean} [value=true] - Radial mode (true) or point mode (true).
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setRadial(?value:Bool):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the position of the emitter's particle origin.
     * New particles will be emitted here.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setPosition
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} x - The x-coordinate of the particle origin.
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} y - The y-coordinate of the particle origin.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setPosition(x:phaser.types.gameobjects.particles.EmitterOpOnEmitType, y:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets or modifies a rectangular boundary constraining the particles.
     *
     * To remove the boundary, set {@link Phaser.GameObjects.Particles.ParticleEmitter#bounds} to null.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setBounds
     * @since 3.0.0
     *
     * @param {(number|Phaser.Types.GameObjects.Particles.ParticleEmitterBounds|Phaser.Types.GameObjects.Particles.ParticleEmitterBoundsAlt)} x - The x-coordinate of the left edge of the boundary, or an object representing a rectangle.
     * @param {number} y - The y-coordinate of the top edge of the boundary.
     * @param {number} width - The width of the boundary.
     * @param {number} height - The height of the boundary.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setBounds(x:Dynamic, y:Float, width:Float, height:Float):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the initial horizontal speed of emitted particles.
     * Changes the emitter to point mode.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setSpeedX
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} value - The speed, in pixels per second.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setSpeedX(value:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the initial vertical speed of emitted particles.
     * Changes the emitter to point mode.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setSpeedY
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} value - The speed, in pixels per second.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setSpeedY(value:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the initial radial speed of emitted particles.
     * Changes the emitter to radial mode.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setSpeed
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} value - The speed, in pixels per second.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setSpeed(value:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the horizontal scale of emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setScaleX
     * @since 3.0.0
     *
     * @param {(Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType|Phaser.Types.GameObjects.Particles.EmitterOpOnUpdateType)} value - The scale, relative to 1.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setScaleX(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the vertical scale of emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setScaleY
     * @since 3.0.0
     *
     * @param {(Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType|Phaser.Types.GameObjects.Particles.EmitterOpOnUpdateType)} value - The scale, relative to 1.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setScaleY(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the scale of emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setScale
     * @since 3.0.0
     *
     * @param {(Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType|Phaser.Types.GameObjects.Particles.EmitterOpOnUpdateType)} value - The scale, relative to 1.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setScale(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the horizontal gravity applied to emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setGravityX
     * @since 3.0.0
     *
     * @param {number} value - Acceleration due to gravity, in pixels per second squared.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setGravityX(value:Float):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the vertical gravity applied to emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setGravityY
     * @since 3.0.0
     *
     * @param {number} value - Acceleration due to gravity, in pixels per second squared.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setGravityY(value:Float):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the gravity applied to emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setGravity
     * @since 3.0.0
     *
     * @param {number} x - Horizontal acceleration due to gravity, in pixels per second squared.
     * @param {number} y - Vertical acceleration due to gravity, in pixels per second squared.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setGravity(x:Float, y:Float):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the opacity of emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setAlpha
     * @since 3.0.0
     *
     * @param {(Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType|Phaser.Types.GameObjects.Particles.EmitterOpOnUpdateType)} value - A value between 0 (transparent) and 1 (opaque).
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setAlpha(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the color tint of emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setTint
     * @since 3.22.0
     *
     * @param {(Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType|Phaser.Types.GameObjects.Particles.EmitterOpOnUpdateType)} value - A value between 0 and 0xffffff.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setTint(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the angle of a {@link Phaser.GameObjects.Particles.ParticleEmitter#radial} particle stream.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setEmitterAngle
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} value - The angle of the initial velocity of emitted particles.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setEmitterAngle(value:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the angle of a {@link Phaser.GameObjects.Particles.ParticleEmitter#radial} particle stream.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setAngle
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} value - The angle of the initial velocity of emitted particles.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setAngle(value:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the lifespan of newly emitted particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setLifespan
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} value - The particle lifespan, in ms.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setLifespan(value:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the number of particles released at each flow cycle or explosion.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setQuantity
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} quantity - The number of particles to release at each flow cycle or explosion.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setQuantity(quantity:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets the emitter's {@link Phaser.GameObjects.Particles.ParticleEmitter#frequency}
     * and {@link Phaser.GameObjects.Particles.ParticleEmitter#quantity}.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setFrequency
     * @since 3.0.0
     *
     * @param {number} frequency - The time interval (>= 0) of each flow cycle, in ms; or -1 to put the emitter in explosion mode.
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} [quantity] - The number of particles to release at each flow cycle or explosion.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setFrequency(frequency:Float, ?quantity:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets or removes the {@link Phaser.GameObjects.Particles.ParticleEmitter#emitZone}.
     *
     * An {@link Phaser.Types.GameObjects.Particles.ParticleEmitterEdgeZoneConfig EdgeZone} places particles on its edges. Its {@link Phaser.Types.GameObjects.Particles.EdgeZoneSource source} can be a Curve, Path, Circle, Ellipse, Line, Polygon, Rectangle, or Triangle; or any object with a suitable {@link Phaser.Types.GameObjects.Particles.EdgeZoneSourceCallback getPoints} method.
     *
     * A {@link Phaser.Types.GameObjects.Particles.ParticleEmitterRandomZoneConfig RandomZone} places randomly within its interior. Its {@link RandomZoneSource source} can be a Circle, Ellipse, Line, Polygon, Rectangle, or Triangle; or any object with a suitable {@link Phaser.Types.GameObjects.Particles.RandomZoneSourceCallback getRandomPoint} method.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setEmitZone
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.ParticleEmitterEdgeZoneConfig|Phaser.Types.GameObjects.Particles.ParticleEmitterRandomZoneConfig} [zoneConfig] - An object describing the zone, or `undefined` to remove any current emit zone.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setEmitZone(?zoneConfig:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets or removes the {@link Phaser.GameObjects.Particles.ParticleEmitter#deathZone}.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#setDeathZone
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.ParticleEmitterDeathZoneConfig} [zoneConfig] - An object describing the zone, or `undefined` to remove any current death zone.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function setDeathZone(?zoneConfig:phaser.types.gameobjects.particles.ParticleEmitterDeathZoneConfig):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Creates inactive particles and adds them to this emitter's pool.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#reserve
     * @since 3.0.0
     *
     * @param {integer} particleCount - The number of particles to create.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function reserve(particleCount:Int):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Gets the number of active (in-use) particles in this emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#getAliveParticleCount
     * @since 3.0.0
     *
     * @return {integer} The number of particles with `active=true`.
     */
    public function getAliveParticleCount():Int;
    /**
     * Gets the number of inactive (available) particles in this emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#getDeadParticleCount
     * @since 3.0.0
     *
     * @return {integer} The number of particles with `active=false`.
     */
    public function getDeadParticleCount():Int;
    /**
     * Gets the total number of particles in this emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#getParticleCount
     * @since 3.0.0
     *
     * @return {integer} The number of particles, including both alive and dead.
     */
    public function getParticleCount():Int;
    /**
     * Whether this emitter is at its limit (if set).
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#atLimit
     * @since 3.0.0
     *
     * @return {boolean} Returns `true` if this Emitter is at its limit, or `false` if no limit, or below the `maxParticles` level.
     */
    public function atLimit():Bool;
    /**
     * Sets a function to call for each newly emitted particle.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#onParticleEmit
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.ParticleEmitterCallback} callback - The function.
     * @param {*} [context] - The calling context.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function onParticleEmit(callback:phaser.types.gameobjects.particles.ParticleEmitterCallback, ?context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sets a function to call for each particle death.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#onParticleDeath
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.ParticleDeathCallback} callback - The function.
     * @param {*} [context] - The function's calling context.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function onParticleDeath(callback:phaser.types.gameobjects.particles.ParticleDeathCallback, ?context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Deactivates every particle in this emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#killAll
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function killAll():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Calls a function for each active particle in this emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#forEachAlive
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.ParticleEmitterCallback} callback - The function.
     * @param {*} context - The function's calling context.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function forEachAlive(callback:phaser.types.gameobjects.particles.ParticleEmitterCallback, context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Calls a function for each inactive particle in this emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#forEachDead
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Particles.ParticleEmitterCallback} callback - The function.
     * @param {*} context - The function's calling context.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function forEachDead(callback:phaser.types.gameobjects.particles.ParticleEmitterCallback, context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Turns {@link Phaser.GameObjects.Particles.ParticleEmitter#on} the emitter and resets the flow counter.
     *
     * If this emitter is in flow mode (frequency >= 0; the default), the particle flow will start (or restart).
     *
     * If this emitter is in explode mode (frequency = -1), nothing will happen.
     * Use {@link Phaser.GameObjects.Particles.ParticleEmitter#explode} or {@link Phaser.GameObjects.Particles.ParticleEmitter#flow} instead.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#start
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function start():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Turns {@link Phaser.GameObjects.Particles.ParticleEmitter#on off} the emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#stop
     * @since 3.11.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function stop():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * {@link Phaser.GameObjects.Particles.ParticleEmitter#active Deactivates} the emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#pause
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function pause():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * {@link Phaser.GameObjects.Particles.ParticleEmitter#active Activates} the emitter.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#resume
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function resume():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Removes the emitter from its manager and the scene.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#remove
     * @since 3.22.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function remove():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Sorts active particles with {@link Phaser.GameObjects.Particles.ParticleEmitter#depthSortCallback}.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#depthSort
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function depthSort():phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Puts the emitter in flow mode (frequency >= 0) and starts (or restarts) a particle flow.
     *
     * To resume a flow at the current frequency and quantity, use {@link Phaser.GameObjects.Particles.ParticleEmitter#start} instead.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#flow
     * @since 3.0.0
     *
     * @param {number} frequency - The time interval (>= 0) of each flow cycle, in ms.
     * @param {Phaser.Types.GameObjects.Particles.EmitterOpOnEmitType} [count=1] - The number of particles to emit at each flow cycle.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitter} This Particle Emitter.
     */
    public function flow(frequency:Float, ?count:phaser.types.gameobjects.particles.EmitterOpOnEmitType):phaser.gameobjects.particles.ParticleEmitter;
    /**
     * Puts the emitter in explode mode (frequency = -1), stopping any current particle flow, and emits several particles all at once.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#explode
     * @since 3.0.0
     *
     * @param {integer} count - The amount of Particles to emit.
     * @param {number} x - The x coordinate to emit the Particles from.
     * @param {number} y - The y coordinate to emit the Particles from.
     *
     * @return {Phaser.GameObjects.Particles.Particle} The most recently emitted Particle.
     */
    public function explode(count:Int, x:Float, y:Float):phaser.gameobjects.particles.Particle;
    /**
     * Emits particles at a given position (or the emitter's current position).
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#emitParticleAt
     * @since 3.0.0
     *
     * @param {number} [x=this.x] - The x coordinate to emit the Particles from.
     * @param {number} [y=this.x] - The y coordinate to emit the Particles from.
     * @param {integer} [count=this.quantity] - The number of Particles to emit.
     *
     * @return {Phaser.GameObjects.Particles.Particle} The most recently emitted Particle.
     */
    public function emitParticleAt(?x:Float, ?y:Float, ?count:Int):phaser.gameobjects.particles.Particle;
    /**
     * Emits particles at a given position (or the emitter's current position).
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#emitParticle
     * @since 3.0.0
     *
     * @param {integer} [count=this.quantity] - The number of Particles to emit.
     * @param {number} [x=this.x] - The x coordinate to emit the Particles from.
     * @param {number} [y=this.x] - The y coordinate to emit the Particles from.
     *
     * @return {Phaser.GameObjects.Particles.Particle} The most recently emitted Particle.
     *
     * @see Phaser.GameObjects.Particles.Particle#fire
     */
    public function emitParticle(?count:Int, ?x:Float, ?y:Float):phaser.gameobjects.particles.Particle;
    /**
     * Updates this emitter and its particles.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#preUpdate
     * @since 3.0.0
     *
     * @param {integer} time - The current timestamp as generated by the Request Animation Frame or SetTimeout.
     * @param {number} delta - The delta time, in ms, elapsed since the last frame.
     */
    public function preUpdate(time:Int, delta:Float):Void;
    /**
     * Calculates the difference of two particles, for sorting them by depth.
     *
     * @method Phaser.GameObjects.Particles.ParticleEmitter#depthSortCallback
     * @since 3.0.0
     *
     * @param {object} a - The first particle.
     * @param {object} b - The second particle.
     *
     * @return {integer} The difference of a and b's y coordinates.
     */
    public function depthSortCallback(a:Dynamic, b:Dynamic):Int;
    /**
     * The Mask this Game Object is using during render.
     *
     * @name Phaser.GameObjects.Components.Mask#mask
     * @type {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask}
     * @since 3.0.0
     */
    public var mask:Dynamic;
    /**
     * Sets the mask that this Game Object will use to render with.
     *
     * The mask must have been previously created and can be either a GeometryMask or a BitmapMask.
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
     *
     * If a mask is already set on this Game Object it will be immediately replaced.
     *
     * Masks are positioned in global space and are not relative to the Game Object to which they
     * are applied. The reason for this is that multiple Game Objects can all share the same mask.
     *
     * Masks have no impact on physics or input detection. They are purely a rendering component
     * that allows you to limit what is visible during the render pass.
     *
     * @method Phaser.GameObjects.Components.Mask#setMask
     * @since 3.6.2
     *
     * @param {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask} mask - The mask this Game Object will use when rendering.
     *
     * @return {this} This Game Object instance.
     */
    public function setMask(mask:Dynamic):Dynamic;
    /**
     * Clears the mask that this Game Object was using.
     *
     * @method Phaser.GameObjects.Components.Mask#clearMask
     * @since 3.6.2
     *
     * @param {boolean} [destroyMask=false] - Destroy the mask before clearing it?
     *
     * @return {this} This Game Object instance.
     */
    public function clearMask(?destroyMask:Bool):Dynamic;
    /**
     * Creates and returns a Bitmap Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a renderable Game Object.
     * A renderable Game Object is one that uses a texture to render with, such as an
     * Image, Sprite, Render Texture or BitmapText.
     *
     * If you do not provide a renderable object, and this Game Object has a texture,
     * it will use itself as the object. This means you can call this method to create
     * a Bitmap Mask from any renderable Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createBitmapMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.GameObject} [renderable] - A renderable Game Object that uses a texture, such as a Sprite.
     *
     * @return {Phaser.Display.Masks.BitmapMask} This Bitmap Mask that was created.
     */
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    /**
     * Creates and returns a Geometry Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a Graphics Game Object.
     *
     * If you do not provide a graphics object, and this Game Object is an instance
     * of a Graphics object, then it will use itself to create the mask.
     *
     * This means you can call this method to create a Geometry Mask from any Graphics Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createGeometryMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.Graphics} [graphics] - A Graphics Game Object. The geometry within it will be used as the mask.
     *
     * @return {Phaser.Display.Masks.GeometryMask} This Geometry Mask that was created.
     */
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
    /**
     * The horizontal scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Sets the scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @method Phaser.GameObjects.Components.ScrollFactor#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of this Game Object.
     * @param {number} [y=x] - The vertical scroll factor of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
    /**
     * The visible state of the Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @name Phaser.GameObjects.Components.Visible#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Sets the visibility of this Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @method Phaser.GameObjects.Components.Visible#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setVisible(value:Bool):Dynamic;
}
