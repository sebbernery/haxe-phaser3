package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.ArcadePhysics")
extern class ArcadePhysics {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var config:Dynamic;
    public var world:phaser.physics.arcade.World;
    public var add:phaser.physics.arcade.Factory;
    public function getConfig():Dynamic;
    public function overlap(object1:ArcadeColliderType, ?object2:ArcadeColliderType, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
    public function collide(object1:ArcadeColliderType, ?object2:ArcadeColliderType, ?collideCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
    public function pause():phaser.physics.arcade.World;
    public function resume():phaser.physics.arcade.World;
    public function accelerateTo(gameObject:phaser.gameobjects.GameObject, x:Float, y:Float, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
    public function accelerateToObject(gameObject:phaser.gameobjects.GameObject, destination:phaser.gameobjects.GameObject, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
    public function closest(source:Dynamic):phaser.physics.arcade.Body;
    public function furthest(source:Dynamic):phaser.physics.arcade.Body;
    public function moveTo(gameObject:phaser.gameobjects.GameObject, x:Float, y:Float, ?speed:Float, ?maxTime:Float):Float;
    public function moveToObject(gameObject:phaser.gameobjects.GameObject, destination:Dynamic, ?speed:Float, ?maxTime:Float):Float;
    public function velocityFromAngle(angle:Float, ?speed:Float, ?vec2:phaser.math.Vector2):phaser.math.Vector2;
    public function velocityFromRotation(rotation:Float, ?speed:Float, ?vec2:phaser.math.Vector2):phaser.math.Vector2;
    public function shutdown():Void;
    public function destroy():Void;
}
