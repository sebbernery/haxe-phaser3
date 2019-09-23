package phaser;

/**
 * The `Matter.Pairs` module contains methods for creating and manipulating collision pair sets.
 *
 * @class Pairs
 */
@:native("Pairs")
extern class Pairs {
    public function new();
    static public function create():Void;
    static public function update():Void;
    static public function removeOld():Void;
    static public function clear():Void;
}
