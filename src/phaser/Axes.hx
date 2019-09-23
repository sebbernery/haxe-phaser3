package phaser;

/**
 * The `Matter.Axes` module contains methods for creating and manipulating sets of axes.
 *
 * @class Axes
 */
@:native("Axes")
extern class Axes {
    public function new();
    static public function fromVertices():Void;
    static public function rotate():Void;
}
