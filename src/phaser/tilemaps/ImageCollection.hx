package phaser.tilemaps;

@:native("Phaser.Tilemaps.ImageCollection")
extern class ImageCollection {
    public function new(name:String, firstgid:Int, ?width:Int, ?height:Int, ?margin:Int, ?spacing:Int, ?properties:Dynamic);
    public var name:String;
    public var firstgid:Int;
    public var imageWidth:Int;
    public var imageHeight:Int;
    public var imageMarge:Int;
    public var imageSpacing:Int;
    public var properties:Dynamic;
    public var images:Array<Dynamic>;
    public var total:Int;
    public function containsImageIndex(imageIndex:Int):Bool;
    public function addImage(gid:Int, image:String):phaser.tilemaps.ImageCollection;
}
