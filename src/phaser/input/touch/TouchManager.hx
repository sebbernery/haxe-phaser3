package phaser.input.touch;

@:native("Phaser.Input.Touch.TouchManager")
extern class TouchManager {
    public function new(inputManager:phaser.input.InputManager);
    public var manager:phaser.input.InputManager;
    public var capture:Bool;
    public var enabled:Bool;
    public var target:Dynamic;
    public function onTouchStart(event:js.html.TouchEvent):Void;
    public function onTouchMove(event:js.html.TouchEvent):Void;
    public function onTouchEnd(event:js.html.TouchEvent):Void;
    public function startListeners():Void;
    public function stopListeners():Void;
    public function destroy():Void;
}
