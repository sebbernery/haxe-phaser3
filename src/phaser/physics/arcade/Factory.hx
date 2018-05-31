package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.Factory")
extern class Factory {
    public function new(world:phaser.physics.arcade.World);
    public var world:phaser.physics.arcade.World;
    public var scene:phaser.Scene;
    public var sys:phaser.scenes.Systems;
    public function collider(object1:Dynamic, object2:Dynamic, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):phaser.physics.arcade.Collider;
    public function overlap(object1:Dynamic, object2:Dynamic, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):phaser.physics.arcade.Collider;
    public function existing(gameObject:phaser.gameobjects.GameObject, ?isStatic:Bool):phaser.gameobjects.GameObject;
    public function staticImage(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.physics.arcade.Image;
    public function image(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.physics.arcade.Image;
    public function staticSprite(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.physics.arcade.Sprite;
    public function sprite(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.physics.arcade.Sprite;
    public function staticGroup(?children:Dynamic, ?config:GroupConfig):phaser.physics.arcade.StaticGroup;
    public function group(?children:Dynamic, ?config:PhysicsGroupConfig):phaser.physics.arcade.Group;
    public function destroy():Void;
}
