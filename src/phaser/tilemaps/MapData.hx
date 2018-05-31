package phaser.tilemaps;

@:native("Phaser.Tilemaps.MapData")
extern class MapData {
    public function new(?config:Dynamic);
    public var name:String;
    public var width:Float;
    public var height:Float;
    public var tileWidth:Float;
    public var tileHeight:Float;
    public var widthInPixels:Float;
    public var heightInPixels:Float;
    public var format:Int;
    public var orientation:String;
    public var version:String;
    public var properties:Dynamic;
    public var layers:Array<Dynamic>;
    public var images:Array<Dynamic>;
    public var objects:Dynamic;
    public var collision:Dynamic;
    public var tilesets:Array<Dynamic>;
    public var imageCollections:Array<Dynamic>;
    public var tiles:Array<Dynamic>;
}
