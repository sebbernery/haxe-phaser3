package phaser.cameras.controls;

@:native("Phaser.Cameras.Controls.FixedKeyControl")
extern class FixedKeyControl {
    public function new(config:FixedKeyControlConfig);
    public var camera:phaser.cameras.scene2d.Camera;
    public var left:phaser.input.keyboard.Key;
    public var right:phaser.input.keyboard.Key;
    public var up:phaser.input.keyboard.Key;
    public var down:phaser.input.keyboard.Key;
    public var zoomIn:phaser.input.keyboard.Key;
    public var zoomOut:phaser.input.keyboard.Key;
    public var zoomSpeed:Float;
    public var speedX:Float;
    public var speedY:Float;
    public var active:Bool;
    public function start():phaser.cameras.controls.FixedKeyControl;
    public function stop():phaser.cameras.controls.FixedKeyControl;
    public function setCamera(camera:phaser.cameras.scene2d.Camera):phaser.cameras.controls.FixedKeyControl;
    public function update(delta:Float):Void;
    public function destroy():Void;
}
