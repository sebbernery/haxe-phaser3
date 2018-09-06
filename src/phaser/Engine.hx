package phaser;

@:native("Engine")
extern class Engine {
    public function new();
    public function create():Void;
    public function update():Void;
    public function merge():Void;
    public function clear():Void;
    public function _bodiesClearForces():Void;
    public function _bodiesApplyGravity():Void;
    public function _bodiesUpdate():Void;
}
