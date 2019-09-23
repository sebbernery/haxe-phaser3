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
    static public function create():Void;
    static public function clone():Void;
    static public function magnitude():Void;
    static public function magnitudeSquared():Void;
    static public function rotate():Void;
    static public function rotateAbout():Void;
    static public function normalise():Void;
    static public function dot():Void;
    static public function cross():Void;
    static public function cross3():Void;
    static public function add():Void;
    static public function sub():Void;
    static public function mult():Void;
    static public function div():Void;
    static public function perp():Void;
    static public function neg():Void;
    static public function angle():Void;
}
