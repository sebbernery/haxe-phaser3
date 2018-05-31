package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.AnimationJSONFile")
extern class AnimationJSONFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject, ?dataKey:String);
    public function onLoadComplete():Void;
}
