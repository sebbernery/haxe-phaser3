package phaser;

/**
 * The `Matter.Detector` module contains methods for detecting collisions given a set of pairs.
 *
 * @class Detector
 */
@:native("Detector")
extern class Detector {
    public function new();
    static public function collisions():Void;
    static public function canCollide():Void;
}
