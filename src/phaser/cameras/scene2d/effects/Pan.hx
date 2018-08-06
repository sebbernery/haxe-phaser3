package phaser.cameras.scene2d.effects;

@:native("Phaser.Cameras.Scene2D.Effects.Pan")
extern class Pan {
    public function new(camera:phaser.cameras.scene2d.Camera);
    public var camera:phaser.cameras.scene2d.Camera;
    public var isRunning:Bool;
    public var duration:Int;
    public var source:phaser.math.Vector2;
    public var current:phaser.math.Vector2;
    public var destination:phaser.math.Vector2;
    public var ease:Dynamic;
    public var progress:Float;
    public function start(x:Float, y:Float, ?duration:Int, ?ease:Dynamic, ?force:Bool, ?callback:CameraPanCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function update(time:Int, delta:Float):Void;
    public function effectComplete():Void;
    public function reset():Void;
    public function destroy():Void;
}
