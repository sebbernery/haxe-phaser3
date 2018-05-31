package phaser;

@:native("Bounds")
extern class Bounds {
    public function new();
    public function create():Void;
    public function update():Void;
    public function contains():Void;
    public function overlaps():Void;
    public function translate():Void;
    public function shift():Void;
}
