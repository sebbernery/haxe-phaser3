package phaser.gameobjects.particles;

@:native("Phaser.GameObjects.Particles.EmitterOp")
extern class EmitterOp {
    public function new(config:ParticleEmitterConfig, key:String, defaultValue:Float, ?emitOnly:Bool);
    public var propertyKey:String;
    public var propertyValue:Float;
    public var defaultValue:Float;
    public var steps:Float;
    public var counter:Float;
    public var start:Float;
    public var end:Float;
    public var ease:Dynamic;
    public var emitOnly:Bool;
    public var onEmit:EmitterOpOnEmitCallback;
    public var onUpdate:EmitterOpOnUpdateCallback;
    public function loadConfig(?config:ParticleEmitterConfig, ?newKey:String):Void;
    public function toJSON():Dynamic;
    public function onChange(value:Float):phaser.gameobjects.particles.EmitterOp;
    public function setMethods():phaser.gameobjects.particles.EmitterOp;
    public function has(object:Dynamic, key:String):Bool;
    public function hasBoth(object:Dynamic, key1:String, key2:String):Bool;
    public function hasEither(object:Dynamic, key1:String, key2:String):Bool;
    public function defaultEmit(particle:phaser.gameobjects.particles.Particle, key:String, ?value:Float):Float;
    public function defaultUpdate(particle:phaser.gameobjects.particles.Particle, key:String, t:Float, value:Float):Float;
    public function staticValueEmit():Float;
    public function staticValueUpdate():Float;
    public function randomStaticValueEmit():Float;
    public function randomRangedValueEmit(particle:phaser.gameobjects.particles.Particle, key:String):Float;
    public function steppedEmit():Float;
    public function easedValueEmit(particle:phaser.gameobjects.particles.Particle, key:String):Float;
    public function easeValueUpdate(particle:phaser.gameobjects.particles.Particle, key:String, t:Float):Float;
}
