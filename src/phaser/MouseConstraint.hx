package phaser;

/**
 * The `Matter.MouseConstraint` module contains methods for creating mouse constraints.
 * Mouse constraints are used for allowing user interaction, providing the ability to move bodies via the mouse or touch.
 *
 * See the included usage [examples](https://github.com/liabru/matter-js/tree/master/examples).
 *
 * @class MouseConstraint
 */
@:native("MouseConstraint")
extern class MouseConstraint {
    public function new();
    static public function create():Void;
    static public function update():Void;
    static public function _triggerEvents():Void;
}
