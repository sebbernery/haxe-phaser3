package phaser.gameobjects.particles.zones;

@:native("Phaser.GameObjects.Particles.Zones.DeathZone")
extern class DeathZone {
    public function new(source:DeathZoneSource, killOnEnter:Bool);
    public var source:DeathZoneSource;
    public var killOnEnter:Bool;
    public function willKill(particle:phaser.gameobjects.particles.Particle):Bool;
}
