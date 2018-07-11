package phaser.input.gamepad;

@:native("Phaser.Input.Gamepad.GamepadPlugin")
extern class GamepadPlugin extends phaser.events.EventEmitter {
    public function new(sceneInputPlugin:phaser.input.InputPlugin);
    public var scene:phaser.Scene;
    public var settings:phaser.scenes.settings.Object;
    public var sceneInputPlugin:phaser.input.InputPlugin;
    public var enabled:Bool;
    public var target:Dynamic;
    public var gamepads:Array<phaser.input.gamepad.Gamepad>;
    public var total:Int;
    public var pad1:phaser.input.gamepad.Gamepad;
    public var pad2:phaser.input.gamepad.Gamepad;
    public var pad3:phaser.input.gamepad.Gamepad;
    public var pad4:phaser.input.gamepad.Gamepad;
    public function isActive():Bool;
    public function disconnectAll():Void;
    public function getAll():Array<phaser.input.gamepad.Gamepad>;
    public function getPad(index:Float):phaser.input.gamepad.Gamepad;
}
