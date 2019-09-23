package phaser;

/**
 * The `Matter.Engine` module contains methods for creating and manipulating engines.
 * An engine is a controller that manages updating the simulation of the world.
 * See `Matter.Runner` for an optional game loop utility.
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Engine
 */
@:native("Engine")
extern class Engine {
    public function new();
    static public function create():Void;
    static public function update():Void;
    static public function merge():Void;
    static public function clear():Void;
    static public function _bodiesClearForces():Void;
    static public function _bodiesApplyGravity():Void;
    static public function _bodiesUpdate():Void;
}
