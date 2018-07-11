package phaser.input.gamepad;

@:native("Phaser.Input.Gamepad.Gamepad")
extern class Gamepad extends phaser.events.EventEmitter {
    public function new(manager:phaser.input.gamepad.GamepadPlugin, pad:Pad);
    public var manager:phaser.input.gamepad.GamepadPlugin;
    public var pad:Dynamic;
    public var id:String;
    public var index:Float;
    public var buttons:Array<phaser.input.gamepad.Button>;
    public var axes:Array<phaser.input.gamepad.Axis>;
    public var vibration:Dynamic;
    public var leftStick:phaser.math.Vector2;
    public var rightStick:phaser.math.Vector2;
    public var connected:Bool;
    public var timestamp:Float;
    public var left:Bool;
    public var right:Bool;
    public var up:Bool;
    public var down:Bool;
    public var A:Bool;
    public var Y:Bool;
    public var X:Bool;
    public var B:Bool;
    public var L1:Float;
    public var L2:Float;
    public var R1:Float;
    public var R2:Float;
    public function getAxisTotal():Int;
    public function getAxisValue(index:Int):Float;
    public function setAxisThreshold(value:Float):Void;
    public function getButtonTotal():Int;
    public function getButtonValue(index:Int):Float;
    public function isButtonDown(index:Int):Bool;
}
