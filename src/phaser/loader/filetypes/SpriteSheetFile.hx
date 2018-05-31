package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.SpriteSheetFile")
extern class SpriteSheetFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:Dynamic, ?frameConfig:phaser.loader.filetypes.ImageFrameConfig, ?xhrSettings:XHRSettingsObject);
}
