package phaser;

/**
 * The `Matter.Bounds` module contains methods for creating and manipulating axis-aligned bounding boxes (AABB).
 *
 * @class Bounds
 */
@:native("Bounds")
extern class Bounds {
    public function new();
    static public function create():Void;
    static public function update():Void;
    static public function contains():Void;
    static public function overlaps():Void;
    static public function translate():Void;
    static public function shift():Void;
}
