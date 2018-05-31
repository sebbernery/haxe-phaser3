package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.AudioSpriteFile")
extern class AudioSpriteFile extends phaser.loader.MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, jsonURL:String, ?audioURL:String, ?audioConfig:Dynamic, ?audioXhrSettings:XHRSettingsObject, ?jsonXhrSettings:XHRSettingsObject);
}
