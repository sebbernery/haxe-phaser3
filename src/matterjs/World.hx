package matterjs;

/**
 * @classdesc
 * The `Matter.World` module contains methods for creating and manipulating the world composite.
 * A `Matter.World` is a `Matter.Composite` body, which is a collection of `Matter.Body`, `Matter.Constraint` and other `Matter.Composite`.
 * A `Matter.World` has a few additional properties including `gravity` and `bounds`.
 * It is important to use the functions in the `Matter.Composite` module to modify the world composite, rather than directly modifying its properties.
 * There are also a few methods here that alias those in `Matter.Composite` for easier readability.
 *
 * @class MatterJS.World
 * @extends MatterJS.Composite
 */
@:native("MatterJS.World")
extern class World extends matterjs.Composite {
    public function new();
}
