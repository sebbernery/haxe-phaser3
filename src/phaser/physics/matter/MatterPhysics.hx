package phaser.physics.matter;

@:native("Phaser.Physics.Matter.MatterPhysics")
extern class MatterPhysics {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var config:Dynamic;
    public var world:phaser.physics.matter.World;
    public var add:phaser.physics.matter.Factory;
    public var verts:matterjs.Vertices;
    public function getConfig():Dynamic;
    public function enableAttractorPlugin():phaser.physics.matter.MatterPhysics;
    public function enableWrapPlugin():phaser.physics.matter.MatterPhysics;
    public function pause():phaser.physics.matter.World;
    public function resume():phaser.physics.matter.World;
    public function set60Hz():phaser.physics.matter.MatterPhysics;
    public function set30Hz():phaser.physics.matter.MatterPhysics;
    public function step(?delta:Float, ?correction:Float):Void;
}
