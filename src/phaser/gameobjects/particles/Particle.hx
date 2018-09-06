package phaser.gameobjects.particles;

@:native("Phaser.GameObjects.Particles.Particle")
extern class Particle {
    public function new(emitter:phaser.gameobjects.particles.ParticleEmitter);
    public var emitter:phaser.gameobjects.particles.ParticleEmitter;
    public var frame:phaser.textures.Frame;
    public var index:Float;
    public var x:Float;
    public var y:Float;
    public var velocityX:Float;
    public var velocityY:Float;
    public var accelerationX:Float;
    public var accelerationY:Float;
    public var maxVelocityX:Float;
    public var maxVelocityY:Float;
    public var bounce:Float;
    public var scaleX:Float;
    public var scaleY:Float;
    public var alpha:Float;
    public var angle:Float;
    public var rotation:Float;
    public var tint:Int;
    public var life:Float;
    public var lifeCurrent:Float;
    public var delayCurrent:Float;
    public var lifeT:Float;
    public var data:Dynamic;
    public function isAlive():Bool;
    public function fire(x:Float, y:Float):Void;
    public function computeVelocity(emitter:phaser.gameobjects.particles.ParticleEmitter, delta:Float, step:Float, processors:Array<Dynamic>):Void;
    public function checkBounds(emitter:phaser.gameobjects.particles.ParticleEmitter):Void;
    public function update(delta:Float, step:Float, processors:Array<Dynamic>):Bool;
}
