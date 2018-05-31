package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.ImageFile")
extern class ImageFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:Dynamic, ?xhrSettings:XHRSettingsObject, ?frameConfig:phaser.loader.filetypes.ImageFrameConfig);
}
