package phaser;

/**
 * The `Matter.Pair` module contains methods for creating and manipulating collision pairs.
 *
 * @class Pair
 */
@:native("Pair")
extern class Pair {
    public function new();
    public function create():Void;
    public function update():Void;
    public function setActive():Void;
    public function id():Void;
}
