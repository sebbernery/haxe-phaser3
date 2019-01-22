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
    public function stack():Void;
    public function chain():Void;
    public function mesh():Void;
    public function pyramid():Void;
    public function newtonsCradle():Void;
    public function car():Void;
    public function softBody():Void;
}
