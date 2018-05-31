package phaser.gameobjects.particles.zones;

@:native("Phaser.GameObjects.Particles.Zones.RandomZone")
extern class RandomZone {
    public function new(source:RandomZoneSource);
    public var source:RandomZoneSource;
    public function getPoint(particle:phaser.gameobjects.particles.Particle):Void;
}
