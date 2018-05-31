package phaser;

@:native("Engine")
extern class Engine {
    public function new();
    public function create():Void;
    public function update():Void;
    public function merge():Void;
    public function clear():Void;
}
