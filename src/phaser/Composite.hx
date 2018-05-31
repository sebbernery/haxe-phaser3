package phaser;

@:native("Composite")
extern class Composite {
    public function new();
    public function create():Void;
    public function setModified():Void;
    public function add():Void;
    public function remove():Void;
    public function addComposite():Void;
    public function removeComposite():Void;
    public function removeCompositeAt():Void;
    public function addBody():Void;
    public function removeBody():Void;
    public function removeBodyAt():Void;
    public function addConstraint():Void;
    public function removeConstraint():Void;
    public function removeConstraintAt():Void;
    public function clear():Void;
    public function allBodies():Void;
    public function allConstraints():Void;
    public function allComposites():Void;
    public function get():Void;
    public function move():Void;
    public function rebase():Void;
    public function translate():Void;
    public function rotate():Void;
    public function scale():Void;
    public function bounds():Void;
}
