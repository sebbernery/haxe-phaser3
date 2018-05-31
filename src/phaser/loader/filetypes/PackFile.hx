package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.PackFile")
extern class PackFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject, ?dataKey:String);
}
