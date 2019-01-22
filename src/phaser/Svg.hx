package phaser;

/**
 * The `Matter.Svg` module contains methods for converting SVG images into an array of vector points.
 *
 * To use this module you also need the SVGPathSeg polyfill: https://github.com/progers/pathseg
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Svg
 */
@:native("Svg")
extern class Svg {
    public function new();
    public function pathToVertices():Void;
    public function _svgPathToAbsolute():Void;
}
