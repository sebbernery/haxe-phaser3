package phaser.cameras.controls;

@:native("Phaser.Cameras.Controls.SmoothedKeyControl")
extern class SmoothedKeyControl {
    public function new(config:SmoothedKeyControlConfig);
    public var camera:phaser.cameras.scene2d.Camera;
    public var left:phaser.input.keyboard.Key;
    public var right:phaser.input.keyboard.Key;
    public var up:phaser.input.keyboard.Key;
    public var down:phaser.input.keyboard.Key;
    public var zoomIn:phaser.input.keyboard.Key;
    public var zoomOut:phaser.input.keyboard.Key;
    public var zoomSpeed:Float;
    public var accelX:Float;
    public var accelY:Float;
    public var dragX:Float;
    public var dragY:Float;
    public var maxSpeedX:Float;
    public var maxSpeedY:Float;
    public var active:Bool;
    public function start():phaser.cameras.controls.SmoothedKeyControl;
    public function stop():phaser.cameras.controls.SmoothedKeyControl;
    public function setCamera(camera:phaser.cameras.scene2d.Camera):phaser.cameras.controls.SmoothedKeyControl;
    public function update(delta:Float):Void;
    public function destroy():Void;
}
