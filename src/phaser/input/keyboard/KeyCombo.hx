package phaser.input.keyboard;

@:native("Phaser.Input.Keyboard.KeyCombo")
extern class KeyCombo {
    public function new(keyboardPlugin:phaser.input.keyboard.KeyboardPlugin, keys:Dynamic, ?config:KeyComboConfig);
    public var manager:phaser.input.keyboard.KeyboardPlugin;
    public var enabled:Bool;
    public var keyCodes:Array<Dynamic>;
    public var current:Int;
    public var index:Int;
    public var size:Float;
    public var timeLastMatched:Float;
    public var matched:Bool;
    public var timeMatched:Float;
    public var resetOnWrongKey:Bool;
    public var maxKeyDelay:Int;
    public var resetOnMatch:Bool;
    public var deleteOnMatch:Bool;
    public var progress:Float;
    public function destroy():Void;
}
