package phaser.input.gamepad;

@:native("Phaser.Input.Gamepad.Button")
extern class Button {
    public function new(pad:phaser.input.gamepad.Gamepad, index:Int);
    public var pad:phaser.input.gamepad.Gamepad;
    public var events:phaser.events.EventEmitter;
    public var index:Int;
    public var value:Float;
    public var threshold:Float;
    public var pressed:Bool;
    public function update(data:js.html.GamepadButton):Void;
}
