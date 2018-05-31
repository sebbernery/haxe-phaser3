package phaser.input.keyboard;

@:native("Phaser.Input.Keyboard.Key")
extern class Key {
    public function new(keyCode:Int);
    public var keyCode:Int;
    public var originalEvent:js.html.KeyboardEvent;
    public var preventDefault:Bool;
    public var enabled:Bool;
    public var isDown:Bool;
    public var isUp:Bool;
    public var altKey:Bool;
    public var ctrlKey:Bool;
    public var shiftKey:Bool;
    public var location:Float;
    public var timeDown:Float;
    public var duration:Float;
    public var timeUp:Float;
    public var repeats:Float;
    public function reset():phaser.input.keyboard.Key;
}
