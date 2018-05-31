package phaser;

@:native("Matter")
extern class Matter {
    public function new();
    public function use():Void;
    public function before():Void;
    public function after():Void;
}
