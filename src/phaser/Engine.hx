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
    public function create():Void;
    public function update():Void;
    public function merge():Void;
    public function clear():Void;
    public function _bodiesClearForces():Void;
    public function _bodiesApplyGravity():Void;
    public function _bodiesUpdate():Void;
}
