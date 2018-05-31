package phaser.input.gamepad;

@:native("Phaser.Input.Gamepad.Gamepad")
extern class Gamepad {
    public function new(manager:phaser.input.gamepad.GamepadManager, id:String, index:Float);
    public var manager:phaser.input.gamepad.GamepadManager;
    public var id:String;
    public var index:Float;
    public var connected:Bool;
    public var timestamp:Float;
    public var buttons:Array<phaser.input.gamepad.Button>;
    public var axes:Array<phaser.input.gamepad.Axis>;
    public function update(data:Gamepad):Void;
}
