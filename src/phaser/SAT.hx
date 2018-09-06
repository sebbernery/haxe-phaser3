package phaser;

@:native("SAT")
extern class SAT {
    public function new();
    public function collides():Void;
    public function _overlapAxes():Void;
    public function _projectToAxis():Void;
    public function _findSupports():Void;
}
