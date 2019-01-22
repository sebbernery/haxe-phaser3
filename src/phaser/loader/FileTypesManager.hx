package phaser.loader;

@:native("Phaser.Loader.FileTypesManager")
extern class FileTypesManager {
    public function new();
    /**
     * Removed all associated file types.
     *
     * @method Phaser.Loader.FileTypesManager.destroy
     * @since 3.0.0
     */
    public function destroy():Void;
    @:overload(function(loader:phaser.loader.LoaderPlugin):Void{})    @:overload(function(key:String, factoryFunction:Dynamic):Void{})    public function register():Void;
}
