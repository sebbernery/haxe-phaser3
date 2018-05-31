package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.UnityAtlasFile")
extern class UnityAtlasFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?textureURL:Dynamic, ?atlasURL:String, ?textureXhrSettings:XHRSettingsObject, ?atlasXhrSettings:XHRSettingsObject);
}
