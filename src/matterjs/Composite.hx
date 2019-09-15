package matterjs;

/**
 * @classdesc
 * The `Matter.Composite` module contains methods for creating and manipulating composite bodies.
 * A composite body is a collection of `Matter.Body`, `Matter.Constraint` and other `Matter.Composite`, therefore composites form a tree structure.
 * It is important to use the functions in this module to modify composites, rather than directly modifying their properties.
 * Note that the `Matter.World` object is also a type of `Matter.Composite` and as such all composite methods here can also operate on a `Matter.World`.
 *
 * @class MatterJS.Composite
 * @since 3.0.0
 */
@:native("MatterJS.Composite")
extern class Composite {
    public function new();
}
