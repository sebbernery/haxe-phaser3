package phaser;

/**
 * The `Matter.Sleeping` module contains methods to manage the sleeping state of bodies.
 *
 * @class Sleeping
 */
@:native("Sleeping")
extern class Sleeping {
    public function new();
    static public function update():Void;
    static public function afterCollisions():Void;
    static public function set():Void;
}
