package phaser.input.touch;

@:native("Phaser.Input.Touch.TouchManager")
extern class TouchManager {
    public function new(inputManager:phaser.input.InputManager);
    public var manager:phaser.input.InputManager;
    public var capture:Bool;
    public var enabled:Bool;
    public var target:Dynamic;
    public var handler:TouchHandler;
    public function boot():Void;
    public function startListeners():Void;
    public function stopListeners():Void;
    public function destroy():Void;
}
