package phaser;

/**
 * The `Matter.Resolver` module contains methods for resolving collision pairs.
 *
 * @class Resolver
 */
@:native("Resolver")
extern class Resolver {
    public function new();
    public function preSolvePosition():Void;
    public function solvePosition():Void;
    public function postSolvePosition():Void;
    public function preSolveVelocity():Void;
    public function solveVelocity():Void;
}
