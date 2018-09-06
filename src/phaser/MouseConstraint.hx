package phaser;

@:native("MouseConstraint")
extern class MouseConstraint {
    public function new();
    public function create():Void;
    public function update():Void;
    public function _triggerEvents():Void;
}
