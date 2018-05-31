package phaser.input.keyboard;

@:native("Phaser.Input.Keyboard.KeyCombo")
extern class KeyCombo {
    public function new(keyboardManager:phaser.input.keyboard.KeyboardManager, keys:Dynamic, ?config:KeyComboConfig);
    public var manager:phaser.input.keyboard.KeyboardManager;
    public var enabled:Bool;
    public var keyCodes:Array<Dynamic>;
    public var current:Int;
    public var index:Float;
    public var size:Float;
    public var timeLastMatched:Float;
    public var matched:Bool;
    public var timeMatched:Float;
    public var resetOnWrongKey:Bool;
    public var maxKeyDelay:Int;
    public var resetOnMatch:Bool;
    public var deleteOnMatch:Bool;
    public var onKeyDown:KeyboardKeydownCallback;
    public var progress:Float;
    public function AdvanceKeyCombo(event:js.html.KeyboardEvent, combo:phaser.input.keyboard.KeyCombo):Bool;
    public function destroy():Void;
    public function ProcessKeyCombo(event:js.html.KeyboardEvent, combo:phaser.input.keyboard.KeyCombo):Bool;
    public function ResetKeyCombo(combo:phaser.input.keyboard.KeyCombo):phaser.input.keyboard.KeyCombo;
}
