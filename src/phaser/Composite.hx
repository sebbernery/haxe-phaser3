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
    static public function create():Void;
    static public function setModified():Void;
    static public function add():Void;
    static public function remove():Void;
    static public function addComposite():Void;
    static public function removeComposite():Void;
    static public function removeCompositeAt():Void;
    static public function addBody():Void;
    static public function removeBody():Void;
    static public function removeBodyAt():Void;
    static public function addConstraint():Void;
    static public function removeConstraint():Void;
    static public function removeConstraintAt():Void;
    static public function clear():Void;
    static public function allBodies():Void;
    static public function allConstraints():Void;
    static public function allComposites():Void;
    static public function get():Void;
    static public function move():Void;
    static public function rebase():Void;
    static public function translate():Void;
    static public function rotate():Void;
    static public function scale():Void;
    static public function bounds():Void;
}
