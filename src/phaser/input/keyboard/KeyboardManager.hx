package phaser.input.keyboard;

@:native("Phaser.Input.Keyboard.KeyboardManager")
extern class KeyboardManager extends phaser.events.EventEmitter {
    public function new(inputManager:phaser.input.InputManager);
    public var manager:phaser.input.InputManager;
    public var enabled:Bool;
    public var target:Dynamic;
    public var keys:Array<phaser.input.keyboard.Key>;
    public var combos:Array<phaser.input.keyboard.KeyCombo>;
    public var captures:Array<Dynamic>;
    public var queue:Array<js.html.KeyboardEvent>;
    public var handler:KeyboardHandler;
    public function boot():Void;
    public function startListeners():Void;
    public function stopListeners():Void;
    public function createCursorKeys():CursorKeys;
    public function addKeys(keys:Dynamic):Dynamic;
    public function addKey(keyCode:Dynamic):phaser.input.keyboard.Key;
    public function removeKey(keyCode:Dynamic):Void;
    public function addKeyCapture(keyCodes:Dynamic):Void;
    public function removeKeyCapture(keyCodes:Dynamic):Void;
    public function createCombo(keys:Dynamic, config:KeyComboConfig):phaser.input.keyboard.KeyCombo;
    public function update():Void;
}
