package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.BitmapFontFile")
extern class BitmapFontFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?textureURL:Dynamic, ?fontDataURL:String, ?textureXhrSettings:XHRSettingsObject, ?fontDataXhrSettings:XHRSettingsObject);
}
