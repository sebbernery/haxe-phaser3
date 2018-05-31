package phaser;

@:native("Detector")
extern class Detector {
    public function new();
    public function collisions():Void;
    public function canCollide():Void;
}
