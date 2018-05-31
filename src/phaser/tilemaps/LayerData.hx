package phaser.tilemaps;

@:native("Phaser.Tilemaps.LayerData")
extern class LayerData {
    public function new(?config:Dynamic);
    public var name:String;
    public var x:Float;
    public var y:Float;
    public var width:Float;
    public var height:Float;
    public var tileWidth:Float;
    public var tileHeight:Float;
    public var baseTileWidth:Float;
    public var baseTileHeight:Float;
    public var widthInPixels:Float;
    public var heightInPixels:Float;
    public var alpha:Float;
    public var visible:Bool;
    public var properties:Dynamic;
    public var indexes:Array<Dynamic>;
    public var collideIndexes:Array<Dynamic>;
    public var callbacks:Array<Dynamic>;
    public var bodies:Array<Dynamic>;
    public var data:Array<Dynamic>;
    public var tilemapLayer:Dynamic;
}
