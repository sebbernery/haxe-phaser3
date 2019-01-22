package phaser;

/**
 * The `Matter.Vector` module contains methods for creating and manipulating vectors.
 * Vectors are the basis of all the geometry related operations in the engine.
 * A `Matter.Vector` object is of the form `{ x: 0, y: 0 }`.
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Vector
 */
@:native("Vector")
extern class Vector {
    public function new();
    public function create():Void;
    public function clone():Void;
    public function magnitude():Void;
    public function magnitudeSquared():Void;
    public function rotate():Void;
    public function rotateAbout():Void;
    public function normalise():Void;
    public function dot():Void;
    public function cross():Void;
    public function cross3():Void;
    public function add():Void;
    public function sub():Void;
    public function mult():Void;
    public function div():Void;
    public function perp():Void;
    public function neg():Void;
    public function angle():Void;
}
