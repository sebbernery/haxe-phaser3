package phaser.data;

@:native("Phaser.Data.DataManagerPlugin")
extern class DataManagerPlugin extends phaser.data.DataManager {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
}
