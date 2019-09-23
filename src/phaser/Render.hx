package phaser;

/**
 * The `Matter.Render` module is a simple HTML5 canvas based renderer for visualising instances of `Matter.Engine`.
 * It is intended for development and debugging purposes, but may also be suitable for simple games.
 * It includes a number of drawing options including wireframe, vector with support for sprites and viewports.
 *
 * @class Render
 */
@:native("Render")
extern class Render {
    public function new();
    static public function create():Void;
    static public function run():Void;
    static public function stop():Void;
    static public function setPixelRatio():Void;
    static public function lookAt():Void;
    static public function startViewTransform():Void;
    static public function endViewTransform():Void;
    static public function world():Void;
    static public function debug():Void;
    static public function constraints():Void;
    static public function bodyShadows():Void;
    static public function bodies():Void;
    static public function bodyWireframes():Void;
    static public function bodyConvexHulls():Void;
    static public function vertexNumbers():Void;
    static public function mousePosition():Void;
    static public function bodyBounds():Void;
    static public function bodyAxes():Void;
    static public function bodyPositions():Void;
    static public function bodyVelocity():Void;
    static public function bodyIds():Void;
    static public function collisions():Void;
    static public function separations():Void;
    static public function grid():Void;
    static public function inspector():Void;
}
