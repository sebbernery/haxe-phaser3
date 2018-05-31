package phaser.cameras.scene2d.effects;

@:native("Phaser.Cameras.Scene2D.Effects.Shake")
extern class Shake {
    public function new(camera:phaser.cameras.scene2d.Camera);
    public var camera:phaser.cameras.scene2d.Camera;
    public var isRunning:Bool;
    public var duration:Int;
    public var intensity:phaser.math.Vector2;
    public var progress:Float;
    public function start(?duration:Int, ?intensity:Float, ?force:Bool, ?callback:CameraShakeCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function preRender():Void;
    public function update(time:Int, delta:Float):Void;
    public function effectComplete():Void;
    public function reset():Void;
    public function destroy():Void;
}
