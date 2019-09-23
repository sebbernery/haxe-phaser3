package phaser;

/**
 * The `Matter.Body` module contains methods for creating and manipulating body models.
 * A `Matter.Body` is a rigid body that can be simulated by a `Matter.Engine`.
 * Factories for commonly used body configurations (such as rectangles, circles and other polygons) can be found in the module `Matter.Bodies`.
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 
 * @class Body
 */
@:native("Body")
extern class Body {
    public function new();
    static public function create():Void;
    static public function nextGroup():Void;
    static public function nextCategory():Void;
    static public function set():Void;
    static public function setStatic():Void;
    static public function setMass():Void;
    static public function setDensity():Void;
    static public function setInertia():Void;
    static public function setVertices():Void;
    static public function setParts():Void;
    static public function setPosition():Void;
    static public function setAngle():Void;
    static public function setVelocity():Void;
    static public function setAngularVelocity():Void;
    static public function translate():Void;
    static public function rotate():Void;
    static public function scale():Void;
    static public function update():Void;
    static public function applyForce():Void;
    static public function _totalProperties():Void;
}
