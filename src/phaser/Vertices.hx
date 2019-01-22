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
