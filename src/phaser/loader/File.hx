package phaser.loader;

@:native("Phaser.Loader.File")
extern class File {
    public function new(loader:phaser.loader.LoaderPlugin, fileConfig:FileConfig);
    public var loader:phaser.loader.LoaderPlugin;
    public var cache:Dynamic;
    public var type:String;
    public var key:String;
    public var url:String;
    public var src:String;
    public var xhrSettings:XHRSettingsObject;
    public var xhrLoader:js.html.XMLHttpRequest;
    public var state:Int;
    public var bytesTotal:Float;
    public var bytesLoaded:Float;
    public var percentComplete:Float;
    public var crossOrigin:Dynamic;
    public var data:Dynamic;
    public var config:Dynamic;
    public var multiFile:phaser.loader.MultiFile;
    public var linkFile:phaser.loader.File;
    public function setLink(fileB:phaser.loader.File):Void;
    public function resetXHR():Void;
    public function load():Void;
    public function onLoad(xhr:js.html.XMLHttpRequest, event:js.html.ProgressEvent):Void;
    public function onError(event:js.html.ProgressEvent):Void;
    public function onProgress(event:js.html.ProgressEvent):Void;
    public function onProcess():Void;
    public function onProcessComplete():Void;
    public function onProcessError():Void;
    public function hasCacheConflict():Bool;
    public function addToCache():Void;
    public function pendingDestroy():Void;
    public function destroy():Void;
    public function createObjectURL(image:js.html.ImageElement, blob:js.html.Blob, defaultType:String):Void;
    public function revokeObjectURL(image:js.html.ImageElement):Void;
}
