package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.HTML5AudioFile")
extern class HTML5AudioFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?urlConfig:String, ?xhrSettings:XHRSettingsObject);
}
