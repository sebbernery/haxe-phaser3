package phaser.gameobjects.particles.zones;

@:native("Phaser.GameObjects.Particles.Zones.EdgeZone")
extern class EdgeZone {
    public function new(source:EdgeZoneSource, quantity:Int, stepRate:Float, ?yoyo:Bool, ?seamless:Bool);
    public var source:Dynamic;
    public var points:Array<phaser.geom.Point>;
    public var quantity:Int;
    public var stepRate:Float;
    public var yoyo:Bool;
    public var counter:Float;
    public var seamless:Bool;
    public function updateSource():phaser.gameobjects.particles.zones.EdgeZone;
    public function changeSource(source:EdgeZoneSource):phaser.gameobjects.particles.zones.EdgeZone;
    public function getPoint(particle:phaser.gameobjects.particles.Particle):Void;
}
