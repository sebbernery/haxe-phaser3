package phaser.gameobjects.particles;

/**
 * @classdesc
 * A Particle Emitter property.
 *
 * Facilitates changing Particle properties as they are emitted and throughout their lifetime.
 *
 * @class EmitterOp
 * @memberof Phaser.GameObjects.Particles
 * @constructor
 * @since 3.0.0
 *
 * @param {ParticleEmitterConfig} config - Settings for the Particle Emitter that owns this property.
 * @param {string} key - The name of the property.
 * @param {number} defaultValue - The default value of the property.
 * @param {boolean} [emitOnly=false] - Whether the property can only be modified when a Particle is emitted.
 */
@:native("Phaser.GameObjects.Particles.EmitterOp")
extern class EmitterOp {
    public function new(config:ParticleEmitterConfig, key:String, defaultValue:Float, ?emitOnly:Bool);
    /**
     * The name of this property.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#propertyKey
     * @type {string}
     * @since 3.0.0
     */
    public var propertyKey:String;
    /**
     * The value of this property.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#propertyValue
     * @type {number}
     * @since 3.0.0
     */
    public var propertyValue:Float;
    /**
     * The default value of this property.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#defaultValue
     * @type {number}
     * @since 3.0.0
     */
    public var defaultValue:Float;
    /**
     * The number of steps for stepped easing between {@link Phaser.GameObjects.Particles.EmitterOp#start} and
     * {@link Phaser.GameObjects.Particles.EmitterOp#end} values, per emit.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#steps
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var steps:Float;
    /**
     * The step counter for stepped easing, per emit.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#counter
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var counter:Float;
    /**
     * The start value for this property to ease between.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#start
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var start:Float;
    /**
     * The end value for this property to ease between.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#end
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var end:Float;
    /**
     * The easing function to use for updating this property.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#ease
     * @type {?function}
     * @since 3.0.0
     */
    public var ease:Dynamic;
    /**
     * Whether this property can only be modified when a Particle is emitted.
     *
     * Set to `true` to allow only {@link Phaser.GameObjects.Particles.EmitterOp#onEmit} callbacks to be set and
     * affect this property.
     *
     * Set to `false` to allow both {@link Phaser.GameObjects.Particles.EmitterOp#onEmit} and
     * {@link Phaser.GameObjects.Particles.EmitterOp#onUpdate} callbacks to be set and affect this property.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#emitOnly
     * @type {boolean}
     * @since 3.0.0
     */
    public var emitOnly:Bool;
    /**
     * The callback to run for Particles when they are emitted from the Particle Emitter.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#onEmit
     * @type {EmitterOpOnEmitCallback}
     * @since 3.0.0
     */
    public var onEmit:EmitterOpOnEmitCallback;
    /**
     * The callback to run for Particles when they are updated.
     *
     * @name Phaser.GameObjects.Particles.EmitterOp#onUpdate
     * @type {EmitterOpOnUpdateCallback}
     * @since 3.0.0
     */
    public var onUpdate:EmitterOpOnUpdateCallback;
    /**
     * Load the property from a Particle Emitter configuration object.
     *
     * Optionally accepts a new property key to use, replacing the current one.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#loadConfig
     * @since 3.0.0
     *
     * @param {ParticleEmitterConfig} [config] - Settings for the Particle Emitter that owns this property.
     * @param {string} [newKey] - The new key to use for this property, if any.
     */
    public function loadConfig(?config:ParticleEmitterConfig, ?newKey:String):Void;
    /**
     * Build a JSON representation of this Particle Emitter property.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#toJSON
     * @since 3.0.0
     *
     * @return {object} A JSON representation of this Particle Emitter property.
     */
    public function toJSON():Dynamic;
    /**
     * Change the current value of the property and update its callback methods.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#onChange
     * @since 3.0.0
     *
     * @param {number} value - The value of the property.
     *
     * @return {Phaser.GameObjects.Particles.EmitterOp} This Emitter Op object.
     */
    public function onChange(value:Float):phaser.gameobjects.particles.EmitterOp;
    /**
     * Update the {@link Phaser.GameObjects.Particles.EmitterOp#onEmit} and
     * {@link Phaser.GameObjects.Particles.EmitterOp#onUpdate} callbacks based on the type of the current
     * {@link Phaser.GameObjects.Particles.EmitterOp#propertyValue}.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#setMethods
     * @since 3.0.0
     *
     * @return {Phaser.GameObjects.Particles.EmitterOp} This Emitter Op object.
     */
    public function setMethods():phaser.gameobjects.particles.EmitterOp;
    /**
     * Check whether an object has the given property.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#has
     * @since 3.0.0
     *
     * @param {object} object - The object to check.
     * @param {string} key - The key of the property to look for in the object.
     *
     * @return {boolean} `true` if the property exists in the object, `false` otherwise.
     */
    public function has(object:Dynamic, key:String):Bool;
    /**
     * Check whether an object has both of the given properties.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#hasBoth
     * @since 3.0.0
     *
     * @param {object} object - The object to check.
     * @param {string} key1 - The key of the first property to check the object for.
     * @param {string} key2 - The key of the second property to check the object for.
     *
     * @return {boolean} `true` if both properties exist in the object, `false` otherwise.
     */
    public function hasBoth(object:Dynamic, key1:String, key2:String):Bool;
    /**
     * Check whether an object has at least one of the given properties.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#hasEither
     * @since 3.0.0
     *
     * @param {object} object - The object to check.
     * @param {string} key1 - The key of the first property to check the object for.
     * @param {string} key2 - The key of the second property to check the object for.
     *
     * @return {boolean} `true` if at least one of the properties exists in the object, `false` if neither exist.
     */
    public function hasEither(object:Dynamic, key1:String, key2:String):Bool;
    /**
     * The returned value sets what the property will be at the START of the particles life, on emit.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#defaultEmit
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The particle.
     * @param {string} key - The name of the property.
     * @param {number} [value] - The current value of the property.
     *
     * @return {number} The new value of hte property.
     */
    public function defaultEmit(particle:phaser.gameobjects.particles.Particle, key:String, ?value:Float):Float;
    /**
     * The returned value updates the property for the duration of the particles life.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#defaultUpdate
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The particle.
     * @param {string} key - The name of the property.
     * @param {number} t - The T value (between 0 and 1)
     * @param {number} value - The current value of the property.
     *
     * @return {number} The new value of the property.
     */
    public function defaultUpdate(particle:phaser.gameobjects.particles.Particle, key:String, t:Float, value:Float):Float;
    /**
     * An `onEmit` callback that returns the current value of the property.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#staticValueEmit
     * @since 3.0.0
     *
     * @return {number} The current value of the property.
     */
    public function staticValueEmit():Float;
    /**
     * An `onUpdate` callback that returns the current value of the property.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#staticValueUpdate
     * @since 3.0.0
     *
     * @return {number} The current value of the property.
     */
    public function staticValueUpdate():Float;
    /**
     * An `onEmit` callback that returns a random value from the current value array.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#randomStaticValueEmit
     * @since 3.0.0
     *
     * @return {number} The new value of the property.
     */
    public function randomStaticValueEmit():Float;
    /**
     * An `onEmit` callback that returns a value between the {@link Phaser.GameObjects.Particles.EmitterOp#start} and
     * {@link Phaser.GameObjects.Particles.EmitterOp#end} range.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#randomRangedValueEmit
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The particle.
     * @param {string} key - The key of the property.
     *
     * @return {number} The new value of the property.
     */
    public function randomRangedValueEmit(particle:phaser.gameobjects.particles.Particle, key:String):Float;
    /**
     * An `onEmit` callback that returns a stepped value between the
     * {@link Phaser.GameObjects.Particles.EmitterOp#start} and {@link Phaser.GameObjects.Particles.EmitterOp#end}
     * range.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#steppedEmit
     * @since 3.0.0
     *
     * @return {number} The new value of the property.
     */
    public function steppedEmit():Float;
    /**
     * An `onEmit` callback that returns an eased value between the
     * {@link Phaser.GameObjects.Particles.EmitterOp#start} and {@link Phaser.GameObjects.Particles.EmitterOp#end}
     * range.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#easedValueEmit
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The particle.
     * @param {string} key - The name of the property.
     *
     * @return {number} The new value of the property.
     */
    public function easedValueEmit(particle:phaser.gameobjects.particles.Particle, key:String):Float;
    /**
     * An `onUpdate` callback that returns an eased value between the
     * {@link Phaser.GameObjects.Particles.EmitterOp#start} and {@link Phaser.GameObjects.Particles.EmitterOp#end}
     * range.
     *
     * @method Phaser.GameObjects.Particles.EmitterOp#easeValueUpdate
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Particles.Particle} particle - The particle.
     * @param {string} key - The name of the property.
     * @param {number} t - The T value (between 0 and 1)
     *
     * @return {number} The new value of the property.
     */
    public function easeValueUpdate(particle:phaser.gameobjects.particles.Particle, key:String, t:Float):Float;
}
