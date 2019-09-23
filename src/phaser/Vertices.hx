package phaser;

/**
 * The `Matter.Vertices` module contains methods for creating and manipulating sets of vertices.
 * A set of vertices is an array of `Matter.Vector` with additional indexing properties inserted by `Vertices.create`.
 * A `Matter.Body` maintains a set of vertices to represent the shape of the object (its convex hull).
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Vertices
 */
@:native("Vertices")
extern class Vertices {
    public function new();
    static public function create():Void;
    static public function fromPath():Void;
    static public function centre():Void;
    static public function mean():Void;
    static public function area():Void;
    static public function inertia():Void;
    static public function translate():Void;
    static public function rotate():Void;
    static public function contains():Void;
    static public function scale():Void;
    static public function chamfer():Void;
    static public function clockwiseSort():Void;
    static public function isConvex():Void;
    static public function hull():Void;
}
