package phaser.cameras.scene2d.effects;

@:native("Phaser.Cameras.Scene2D.Effects.Zoom")
extern class Zoom {
    public function new(camera:phaser.cameras.scene2d.Camera);
    public var camera:phaser.cameras.scene2d.Camera;
    public var isRunning:Bool;
    public var duration:Int;
    public var source:Float;
    public var destination:Float;
    public var ease:Dynamic;
    public var progress:Float;
    public function start(zoom:Float, ?duration:Int, ?ease:Dynamic, ?force:Bool, ?callback:CameraZoomCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function update(time:Int, delta:Float):Void;
    public function effectComplete():Void;
    public function reset():Void;
    public function destroy():Void;
}
