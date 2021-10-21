package phaser.loader.filetypes;

#if SPINE_PLUGIN
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
#end