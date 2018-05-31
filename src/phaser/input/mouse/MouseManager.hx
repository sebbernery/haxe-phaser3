package phaser.input.mouse;

@:native("Phaser.Input.Mouse.MouseManager")
extern class MouseManager {
    public function new(inputManager:phaser.input.InputManager);
    public var manager:phaser.input.InputManager;
    public var capture:Bool;
    public var enabled:Bool;
    public var target:Dynamic;
    public var handler:MouseHandler;
    public var locked:Bool;
    public function boot():Void;
    public function disableContextMenu():phaser.input.mouse.MouseManager;
    public function requestPointerLock():Void;
    public function pointerLockChange(event:MouseHandler):Void;
    public function releasePointerLock():Void;
    public function startListeners():Void;
    public function stopListeners():Void;
    public function destroy():Void;
}
