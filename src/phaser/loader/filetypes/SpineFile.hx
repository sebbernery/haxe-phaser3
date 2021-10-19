package phaser.loader.filetypes;

#if SPINE_PLUGIN
extern class SpineFile extends phaser.loader.MultiFile 
{
    public function new(loader: phaser.loader.LoaderPlugin,
        key: haxe.ds.Either<String, phaser.loader.filetypes.SpineFileConfig>,
        jsonURL: haxe.ds.Either<String, Array<String>>,
        atlasURL: String,
        preMultipliedAlpha: Bool,
        jsonXhrSettings: phaser.types.loader.XHRSettingsObject,
        atlasXhrSettings: phaser.types.loader.XHRSettingsObject);
    public function addToCache();
}
#end