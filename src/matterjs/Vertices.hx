package matterjs;

/**
 * @classdesc
 * The `Matter.Vertices` module contains methods for creating and manipulating sets of vertices.
 * A set of vertices is an array of `Matter.Vector` with additional indexing properties inserted by `Vertices.create`.
 * A `Matter.Body` maintains a set of vertices to represent the shape of the object (its convex hull).
 *
 * @class MatterJS.Vertices
 */
@:native("MatterJS.Vertices")
extern class Vertices {
    public function new();
}
