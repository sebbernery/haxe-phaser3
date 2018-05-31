package phaser.loader;

@:native("Phaser.Loader.MultiFile")
extern class MultiFile {
    public function new(loader:phaser.loader.LoaderPlugin, type:String, key:String, files:Array<phaser.loader.File>);
    public var loader:phaser.loader.LoaderPlugin;
    public var type:String;
    public var key:String;
    public var files:Array<phaser.loader.File>;
    public var complete:Bool;
    public var pending:Int;
    public var failed:Int;
    public var config:Dynamic;
    public function isReadyToProcess():Bool;
    public function addToMultiFile(files:phaser.loader.File):phaser.loader.MultiFile;
    public function onFileFailed(file:phaser.loader.File):Void;
    public function addToCache():Void;
    @:overload(function(file:phaser.loader.File):Void{})    @:overload(function(file:phaser.loader.File):Void{})    public function onFileComplete():Void;
}
