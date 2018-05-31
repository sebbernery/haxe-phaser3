package phaser.input.gamepad;

@:native("Phaser.Input.Gamepad.GamepadManager")
extern class GamepadManager extends phaser.events.EventEmitter {
    public function new(inputManager:phaser.input.InputManager);
    public var manager:phaser.input.InputManager;
    public var enabled:Bool;
    public var target:Dynamic;
    public var handler:GamepadHandler;
    public var gamepads:Array<phaser.input.gamepad.Gamepad>;
    public var queue:Array<Dynamic>;
    public var total:Float;
    public function boot():Void;
    public function startListeners():Void;
    public function stopListeners():Void;
    public function disconnectAll():Void;
    public function addPad(pad:Pad):phaser.input.gamepad.Gamepad;
    public function removePad(index:Float, pad:Pad):Void;
    public function refreshPads(pads:Array<Pad>):Void;
    public function getAll():Array<phaser.input.gamepad.Gamepad>;
    public function getPad(index:Float):phaser.input.gamepad.Gamepad;
    public function update():Void;
}
