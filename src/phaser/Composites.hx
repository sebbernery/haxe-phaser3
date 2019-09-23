package phaser;

/**
 * The `Matter.Composites` module contains factory methods for creating composite bodies
 * with commonly used configurations (such as stacks and chains).
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class Composites
 */
@:native("Composites")
extern class Composites {
    public function new();
    static public function stack():Void;
    static public function chain():Void;
    static public function mesh():Void;
    static public function pyramid():Void;
    static public function newtonsCradle():Void;
    static public function car():Void;
    static public function softBody():Void;
}
