package phaser.input.gamepad;

@:native("Phaser.Input.Gamepad.Axis")
extern class Axis {
    public function new(pad:phaser.input.gamepad.Gamepad, index:Int);
    public var pad:phaser.input.gamepad.Gamepad;
    public var events:phaser.events.EventEmitter;
    public var index:Int;
    public var value:Float;
    public var threshold:Float;
    public function getValue():Float;
    public function destroy():Void;
}
