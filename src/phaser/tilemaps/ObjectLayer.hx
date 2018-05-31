package phaser.tilemaps;

@:native("Phaser.Tilemaps.ObjectLayer")
extern class ObjectLayer {
    public function new(?config:Dynamic);
    public var name:String;
    public var opacity:Float;
    public var properties:Dynamic;
    public var propertyTypes:Dynamic;
    public var type:String;
    public var visible:Bool;
    public var objects:Array<Dynamic>;
}
