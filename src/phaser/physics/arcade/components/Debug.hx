package phaser.physics.arcade.components;

@:native("Phaser.Physics.Arcade.Components.Debug")
extern class Debug {
    public function new();
    public var debugShowBody:Bool;
    public var debugShowVelocity:Bool;
    public var debugBodyColor:Float;
    public function setDebug(showBody:Bool, showVelocity:Bool, bodyColor:Float):Dynamic;
    public function setDebugBodyColor(value:Float):Dynamic;
}
