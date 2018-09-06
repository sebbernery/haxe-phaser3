package phaser.loader.filetypes;

@:native("Phaser.Loader.FileTypes.HTMLTextureFile")
extern class HTMLTextureFile extends phaser.loader.File {
    public function new(loader:phaser.loader.LoaderPlugin, key:Dynamic, ?url:String, ?width:Int, ?height:Int, ?xhrSettings:XHRSettingsObject);
}
