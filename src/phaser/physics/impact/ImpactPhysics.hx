package phaser.physics.impact;

@:native("Phaser.Physics.Impact.ImpactPhysics")
extern class ImpactPhysics {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var config:Dynamic;
    public var world:phaser.physics.impact.World;
    public var add:phaser.physics.impact.Factory;
    public function getConfig():Dynamic;
    public function pause():phaser.physics.impact.World;
    public function resume():phaser.physics.impact.World;
}
