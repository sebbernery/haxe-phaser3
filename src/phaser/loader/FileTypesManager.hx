package phaser.loader;

@:native("Phaser.Loader.FileTypesManager")
extern class FileTypesManager {
    public function new();
    public function destroy():Void;
    @:overload(function(loader:phaser.loader.LoaderPlugin):Void{})    @:overload(function(key:String, factoryFunction:Dynamic):Void{})    public function register():Void;
}
