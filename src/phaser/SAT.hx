package phaser;

/**
 * The `Matter.SAT` module contains methods for detecting collisions using the Separating Axis Theorem.
 *
 * @class SAT
 */
@:native("SAT")
extern class SAT {
    public function new();
    static public function collides():Void;
    static public function _overlapAxes():Void;
    static public function _projectToAxis():Void;
    static public function _findSupports():Void;
}
