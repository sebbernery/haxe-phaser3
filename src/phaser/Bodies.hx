package phaser;

/**
 * The `Matter.Bodies` module contains factory methods for creating rigid body models
 * with commonly used body configurations (such as rectangles, circles and other polygons).
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Bodies
 */
@:native("Bodies")
extern class Bodies {
    public function new();
    public function rectangle():Void;
    public function trapezoid():Void;
    public function circle():Void;
    public function polygon():Void;
    public function fromVertices():Void;
}
