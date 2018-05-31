package phaser.physics.impact.components;

@:native("Phaser.Physics.Impact.Components.Debug")
extern class Debug {
    public function new();
    public var debugShowBody:Bool;
    public var debugShowVelocity:Bool;
    public var debugBodyColor:Float;
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):phaser.gameobjects.GameObject;
    public function setDebugBodyColor(value:Float):phaser.gameobjects.GameObject;
}
