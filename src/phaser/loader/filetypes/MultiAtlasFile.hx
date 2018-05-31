package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.MultiAtlasFile")
extern class MultiAtlasFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:String, ?atlasURL:String, ?path:String, ?baseURL:String, ?atlasXhrSettings:XHRSettingsObject, ?textureXhrSettings:XHRSettingsObject);
}
