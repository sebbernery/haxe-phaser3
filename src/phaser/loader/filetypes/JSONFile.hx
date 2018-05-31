package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.JSONFile")
extern class JSONFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject, ?dataKey:String);
}
