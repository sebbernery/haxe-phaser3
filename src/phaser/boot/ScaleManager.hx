package phaser.boot;

@:native("Phaser.Boot.ScaleManager")
extern class ScaleManager {
    public function new(game:phaser.Game, config:Dynamic);
    public var game:phaser.Game;
    public function destroy():Void;
}
