package phaser;

@:native("Sleeping")
extern class Sleeping {
    public function new();
    public function update():Void;
    public function afterCollisions():Void;
    public function set():Void;
}
