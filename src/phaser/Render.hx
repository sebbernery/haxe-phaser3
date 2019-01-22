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
    public function create():Void;
    public function run():Void;
    public function stop():Void;
    public function setPixelRatio():Void;
    public function lookAt():Void;
    public function startViewTransform():Void;
    public function endViewTransform():Void;
    public function world():Void;
    public function debug():Void;
    public function constraints():Void;
    public function bodyShadows():Void;
    public function bodies():Void;
    public function bodyWireframes():Void;
    public function bodyConvexHulls():Void;
    public function vertexNumbers():Void;
    public function mousePosition():Void;
    public function bodyBounds():Void;
    public function bodyAxes():Void;
    public function bodyPositions():Void;
    public function bodyVelocity():Void;
    public function bodyIds():Void;
    public function collisions():Void;
    public function separations():Void;
    public function grid():Void;
    public function inspector():Void;
}
