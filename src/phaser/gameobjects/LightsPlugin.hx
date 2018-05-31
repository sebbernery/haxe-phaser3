package phaser.gameobjects;

@:native("Phaser.GameObjects.LightsPlugin")
extern class LightsPlugin extends phaser.gameobjects.LightsManager {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public function boot():Void;
}
