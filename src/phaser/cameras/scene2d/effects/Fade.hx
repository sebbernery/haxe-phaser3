package phaser.cameras.scene2d.effects;

@:native("Phaser.Cameras.Scene2D.Effects.Fade")
extern class Fade {
    public function new(camera:phaser.cameras.scene2d.Camera);
    public var camera:phaser.cameras.scene2d.Camera;
    public var isRunning:Bool;
    public var isComplete:Bool;
    public var direction:Bool;
    public var duration:Int;
    public var progress:Float;
    public function start(?direction:Bool, ?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?force:Bool, ?callback:CameraFadeCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function update(time:Int, delta:Float):Void;
    public function postRenderCanvas(ctx:js.html.CanvasRenderingContext2D):Bool;
    public function postRenderWebGL(pipeline:Dynamic, getTintFunction:Dynamic):Bool;
    public function effectComplete():Void;
    public function reset():Void;
    public function destroy():Void;
}
