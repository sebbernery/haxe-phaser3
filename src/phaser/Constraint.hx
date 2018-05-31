package phaser;

@:native("Constraint")
extern class Constraint {
    public function new();
    public function create():Void;
    public function preSolveAll():Void;
    public function solveAll():Void;
    public function solve():Void;
    public function postSolveAll():Void;
}
