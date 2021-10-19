package phaser.loader.filetypes;

typedef SpineFileConfig  = 
{
    var key: String;
    var ?textureURL: String;
    var ?textureExtension: String;
    var ?textureXhrSettings: phaser.types.loader.XHRSettingsObject;
    var ?normalMap: String;
    var ?atlasURL: String;
    var ?atlasExtension: String;
    var ?atlasXhrSettings: phaser.types.loader.XHRSettingsObject;
}

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
