package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.HTMLFile")
extern class HTMLFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject);
}
