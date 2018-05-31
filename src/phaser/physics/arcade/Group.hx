package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.Group")
extern class Group extends phaser.gameobjects.Group {
    public function new(world:phaser.physics.arcade.World, scene:phaser.Scene, children:Array<Dynamic>, ?config:PhysicsGroupConfig);
    public var world:phaser.physics.arcade.World;
    public var physicsType:Int;
    public var defaults:PhysicsGroupDefaults;
    public function createCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    public function removeCallbackHandler(child:phaser.gameobjects.GameObject):Void;
    public function setVelocity(x:Float, y:Float, step:Float):phaser.physics.arcade.Group;
    public function setVelocityX(value:Float, step:Float):phaser.physics.arcade.Group;
    public function setVelocityY(value:Float, step:Float):phaser.physics.arcade.Group;
}
