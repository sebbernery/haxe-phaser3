package phaser.loader.filetypes;

typedef SpriteSheetFileConfig = {
var key:String;
    @:optional var url:String;
    @:optional var extension:String;
    @:optional var normalMap:String;
    @:optional var frameConfig:phaser.loader.filetypes.ImageFrameConfig;
    @:optional var xhrSettings:XHRSettingsObject;
};
