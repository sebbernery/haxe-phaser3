package phaser;

/**
 * The `Matter.Constraint` module contains methods for creating and manipulating constraints.
 * Constraints are used for specifying that a fixed distance must be maintained between two bodies (or a body and a fixed world-space position).
 * The stiffness of constraints can be modified to create springs or elastic.
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Constraint
 */
@:native("Constraint")
extern class Constraint {
    public function new();
    public function create():Void;
    public function preSolveAll():Void;
    public function solveAll():Void;
    public function solve():Void;
    public function postSolveAll():Void;
}
