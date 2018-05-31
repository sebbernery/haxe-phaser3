package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.ScenePluginFile")
extern class ScenePluginFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?systemKey:String, ?sceneKey:String, ?xhrSettings:XHRSettingsObject);
}
