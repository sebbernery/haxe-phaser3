package phaser.plugins;

@:native("Phaser.Plugins.BasePlugin")
extern class BasePlugin {
    public function new(game:phaser.Game);
    public var pluginManager:phaser.plugins.PluginManager;
    public var game:phaser.Game;
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public function init():Void;
    public function start():Void;
    public function stop():Void;
    public function boot():Void;
    public function destroy():Void;
}
