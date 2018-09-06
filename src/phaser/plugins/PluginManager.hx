package phaser.plugins;

@:native("Phaser.Plugins.PluginManager")
extern class PluginManager {
    public function new(game:phaser.Game);
    public var game:phaser.Game;
    public var plugins:Array<GlobalPlugin>;
    public var scenePlugins:Array<String>;
    public function boot():Void;
    public function addToScene(sys:phaser.scenes.Systems, globalPlugins:Array<Dynamic>, scenePlugins:Array<Dynamic>):Void;
    public function getDefaultScenePlugins():Array<String>;
    public function installScenePlugin(key:String, plugin:Dynamic, ?mapping:String, ?addToScene:phaser.Scene):Void;
    public function install(key:String, plugin:Dynamic, ?start:Bool, ?mapping:String, ?data:Dynamic):Void;
    public function getIndex(key:String):Int;
    public function getEntry(key:String):GlobalPlugin;
    public function isActive(key:String):Bool;
    public function start(key:String, ?runAs:String):phaser.plugins.BasePlugin;
    public function stop(key:String):phaser.plugins.PluginManager;
    public function get(key:String, ?autoStart:Bool):phaser.plugins.BasePlugin;
    public function getClass(key:String):phaser.plugins.BasePlugin;
    public function removeGlobalPlugin(key:String):Void;
    public function removeScenePlugin(key:String):Void;
    public function registerGameObject(key:String, ?factoryCallback:Dynamic, ?creatorCallback:Dynamic):Void;
    public function registerFileType(key:String, callback:Dynamic, ?addToScene:phaser.Scene):Void;
    public function destroy():Void;
}
