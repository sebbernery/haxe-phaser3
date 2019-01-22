package phaser;

/**
 * The `Matter.Axes` module contains methods for creating and manipulating sets of axes.
 *
 * @class Axes
 */
@:native("Axes")
extern class Axes {
    public function new();
    public function fromVertices():Void;
    public function rotate():Void;
}
