package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.Collider")
extern class Collider {
    public function new(world:phaser.physics.arcade.World, overlapOnly:Bool, object1:ArcadeColliderType, object2:ArcadeColliderType, collideCallback:ArcadePhysicsCallback, processCallback:ArcadePhysicsCallback, callbackContext:Dynamic);
    public var world:phaser.physics.arcade.World;
    public var name:String;
    public var active:Bool;
    public var overlapOnly:Bool;
    public var object1:ArcadeColliderType;
    public var object2:ArcadeColliderType;
    public var collideCallback:ArcadePhysicsCallback;
    public var processCallback:ArcadePhysicsCallback;
    public var callbackContext:Dynamic;
    public function setName(name:String):phaser.physics.arcade.Collider;
    public function update():Void;
    public function destroy():Void;
}
