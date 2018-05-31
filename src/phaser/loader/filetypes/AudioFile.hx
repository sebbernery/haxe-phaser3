package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.AudioFile")
extern class AudioFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?urlConfig:Dynamic, ?xhrSettings:XHRSettingsObject, ?audioContext:AudioContext);
}
