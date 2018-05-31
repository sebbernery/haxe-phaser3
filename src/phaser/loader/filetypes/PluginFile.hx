package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.PluginFile")
extern class PluginFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?start:Bool, ?mapping:String, ?xhrSettings:XHRSettingsObject);
}
