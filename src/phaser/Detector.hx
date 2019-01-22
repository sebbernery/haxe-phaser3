package phaser;

/**
 * The `Matter.Detector` module contains methods for detecting collisions given a set of pairs.
 *
 * @class Detector
 */
@:native("Detector")
extern class Detector {
    public function new();
    public function collisions():Void;
    public function canCollide():Void;
}
