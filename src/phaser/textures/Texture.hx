package phaser.textures;

@:native("Phaser.Textures.Texture")
extern class Texture {
    public function new(manager:phaser.textures.TextureManager, key:String, source:Dynamic, ?width:Float, ?height:Float);
    public var manager:phaser.textures.TextureManager;
    public var key:String;
    public var source:Array<phaser.textures.TextureSource>;
    public var dataSource:Array<Dynamic>;
    public var frames:Dynamic;
    public var customData:Dynamic;
    public var firstFrame:String;
    public var frameTotal:Int;
    public function add(name:Dynamic, sourceIndex:Int, x:Float, y:Float, width:Float, height:Float):phaser.textures.Frame;
    public function has(name:String):Bool;
    public function get(?name:Dynamic):phaser.textures.Frame;
    public function getTextureSourceIndex(source:phaser.textures.TextureSource):Int;
    public function getFramesFromTextureSource(sourceIndex:Int):Array<phaser.textures.Frame>;
    public function getFrameNames(?includeBase:Bool):Array<String>;
    public function getSourceImage(?name:Dynamic):js.html.ImageElement;
    public function getDataSourceImage(?name:Dynamic):js.html.ImageElement;
    public function setDataSource(data:Dynamic):Void;
    public function setFilter(filterMode:Dynamic):Void;
    public function destroy():Void;
}
