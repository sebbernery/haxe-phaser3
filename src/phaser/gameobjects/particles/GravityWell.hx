package phaser.gameobjects.particles;

@:native("Phaser.GameObjects.Particles.GravityWell")
extern class GravityWell {
    public function new(?x:Dynamic, ?y:Float, ?power:Float, ?epsilon:Float, ?gravity:Float);
    public var x:Float;
    public var y:Float;
    public var active:Bool;
    public var power:Float;
    public var epsilon:Float;
    public function update(particle:phaser.gameobjects.particles.Particle, delta:Float, step:Float):Void;
}
