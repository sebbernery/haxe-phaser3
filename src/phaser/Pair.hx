package phaser;

/**
 * The `Matter.Pair` module contains methods for creating and manipulating collision pairs.
 *
 * @class Pair
 */
@:native("Pair")
extern class Pair {
    public function new();
    static public function create():Void;
    static public function update():Void;
    static public function setActive():Void;
    static public function id():Void;
}
