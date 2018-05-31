package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.BinaryFile")
extern class BinaryFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject, ?dataType:Dynamic);
}
