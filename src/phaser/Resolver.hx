package phaser;

@:native("Resolver")
extern class Resolver {
    public function new();
    public function preSolvePosition():Void;
    public function solvePosition():Void;
    public function postSolvePosition():Void;
    public function preSolveVelocity():Void;
    public function solveVelocity():Void;
}
