package phaser.input.keyboard;

@:native("Phaser.Input.Keyboard.KeyboardPlugin")
extern class KeyboardPlugin extends phaser.events.EventEmitter {
    public function new(sceneInputPlugin:phaser.input.InputPlugin);
    public var scene:phaser.Scene;
    public var settings:phaser.scenes.settings.Object;
    public var sceneInputPlugin:phaser.input.InputPlugin;
    public var enabled:Bool;
    public var target:Dynamic;
    public var keys:Array<phaser.input.keyboard.Key>;
    public var combos:Array<phaser.input.keyboard.KeyCombo>;
    public function isActive():Bool;
    public function createCursorKeys():CursorKeys;
    public function addKeys(keys:Dynamic):Dynamic;
    public function addKey(key:Dynamic):phaser.input.keyboard.Key;
    public function removeKey(key:Dynamic):Void;
    public function createCombo(keys:Dynamic, ?config:KeyComboConfig):phaser.input.keyboard.KeyCombo;
    public function checkDown(key:phaser.input.keyboard.Key, ?duration:Float):Bool;
}
