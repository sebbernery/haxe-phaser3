package phaser.cameras.scene2d.effects;

@:native("Phaser.Cameras.Scene2D.Effects.Flash")
extern class Flash {
    public function new(camera:phaser.cameras.scene2d.Camera);
    public var camera:phaser.cameras.scene2d.Camera;
    public var isRunning:Bool;
    public var duration:Int;
    public var progress:Float;
    public function start(?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?force:Bool, ?callback:CameraFlashCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function update(time:Int, delta:Float):Void;
    public function postRenderCanvas(ctx:js.html.CanvasRenderingContext2D):Bool;
    public function postRenderWebGL(pipeline:Dynamic, getTintFunction:Dynamic):Bool;
    public function effectComplete():Void;
    public function reset():Void;
    public function destroy():Void;
}
