package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.TextFile")
extern class TextFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject);
}
