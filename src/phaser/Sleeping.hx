package phaser;

/**
 * The `Matter.Sleeping` module contains methods to manage the sleeping state of bodies.
 *
 * @class Sleeping
 */
@:native("Sleeping")
extern class Sleeping {
    public function new();
    public function update():Void;
    public function afterCollisions():Void;
    public function set():Void;
}
