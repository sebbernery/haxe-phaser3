package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.StaticGroup")
extern class StaticGroup extends phaser.gameobjects.Group {
    public function new(world:phaser.physics.arcade.World, scene:phaser.Scene, children:Array<Dynamic>, config:GroupConfig);
    public var world:phaser.physics.arcade.World;
    public var physicsType:Int;
    public function createCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    public function removeCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    public function createMultipleCallbackHandler(entries:Dynamic):Void;
    public function refresh():phaser.physics.arcade.StaticGroup;
}
