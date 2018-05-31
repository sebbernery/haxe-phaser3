package phaser;

@:native("Vertices")
extern class Vertices {
    public function new();
    public function create():Void;
    public function fromPath():Void;
    public function centre():Void;
    public function mean():Void;
    public function area():Void;
    public function inertia():Void;
    public function translate():Void;
    public function rotate():Void;
    public function contains():Void;
    public function scale():Void;
    public function chamfer():Void;
    public function clockwiseSort():Void;
    public function isConvex():Void;
    public function hull():Void;
}
