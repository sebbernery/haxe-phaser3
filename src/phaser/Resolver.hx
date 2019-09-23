package phaser;

/**
 * The `Matter.Resolver` module contains methods for resolving collision pairs.
 *
 * @class Resolver
 */
@:native("Resolver")
extern class Resolver {
    public function new();
    static public function preSolvePosition():Void;
    static public function solvePosition():Void;
    static public function postSolvePosition():Void;
    static public function preSolveVelocity():Void;
    static public function solveVelocity():Void;
}
