package phaser;

/**
 * The `Matter.Composite` module contains methods for creating and manipulating composite bodies.
 * A composite body is a collection of `Matter.Body`, `Matter.Constraint` and other `Matter.Composite`, therefore composites form a tree structure.
 * It is important to use the functions in this module to modify composites, rather than directly modifying their properties.
 * Note that the `Matter.World` object is also a type of `Matter.Composite` and as such all composite methods here can also operate on a `Matter.World`.
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Composite
 */
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
