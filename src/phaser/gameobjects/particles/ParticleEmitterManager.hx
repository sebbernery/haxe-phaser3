package phaser.gameobjects.particles;

@:native("Phaser.GameObjects.Particles.ParticleEmitterManager")
extern class ParticleEmitterManager extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, texture:String, frame:Dynamic, emitters:Dynamic);
    public var timeScale:Float;
    public var texture:phaser.textures.Texture;
    public var frame:phaser.textures.Frame;
    public var frameNames:Array<String>;
    public var emitters:Dynamic;
    public var wells:Dynamic;
    public function setTexture(key:String, ?frame:Dynamic):phaser.gameobjects.particles.ParticleEmitterManager;
    public function setFrame(?frame:Dynamic):phaser.gameobjects.particles.ParticleEmitterManager;
    public function setEmitterFrames(frames:Dynamic, emitter:phaser.gameobjects.particles.ParticleEmitter):phaser.gameobjects.particles.ParticleEmitterManager;
    public function addEmitter(emitter:phaser.gameobjects.particles.ParticleEmitter):phaser.gameobjects.particles.ParticleEmitter;
    public function createEmitter(config:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function addGravityWell(well:phaser.gameobjects.particles.GravityWell):phaser.gameobjects.particles.GravityWell;
    public function createGravityWell(config:Dynamic):phaser.gameobjects.particles.GravityWell;
    public function emitParticle(?count:Int, ?x:Float, ?y:Float):phaser.gameobjects.particles.ParticleEmitterManager;
    public function emitParticleAt(?x:Float, ?y:Float, ?count:Int):phaser.gameobjects.particles.ParticleEmitterManager;
    public function pause():phaser.gameobjects.particles.ParticleEmitterManager;
    public function resume():phaser.gameobjects.particles.ParticleEmitterManager;
    public function getProcessors():Array<phaser.gameobjects.particles.GravityWell>;
    public function preUpdate(time:Int, delta:Float):Void;
}
