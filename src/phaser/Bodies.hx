package phaser;

@:native("Bodies")
extern class Bodies {
    public function new();
    public function rectangle():Void;
    public function trapezoid():Void;
    public function circle():Void;
    public function polygon():Void;
    public function fromVertices():Void;
}
