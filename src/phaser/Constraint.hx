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
    static public function create():Void;
    static public function preSolveAll():Void;
    static public function solveAll():Void;
    static public function solve():Void;
    static public function postSolveAll():Void;
    static public function pointAWorld():Void;
    static public function pointBWorld():Void;
}
