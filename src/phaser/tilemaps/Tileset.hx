package phaser.tilemaps;

@:native("Phaser.Tilemaps.Tileset")
extern class Tileset {
    public function new(name:String, firstgid:Int, ?tileWidth:Int, ?tileHeight:Int, ?tileMargin:Int, ?tileSpacing:Int, ?tileProperties:Dynamic, ?tileData:Dynamic);
    public var name:String;
    public var firstgid:Int;
    public var tileWidth:Int;
    public var tileHeight:Int;
    public var tileMargin:Int;
    public var tileSpacing:Int;
    public var tileProperties:Dynamic;
    public var tileData:Dynamic;
    public var image:phaser.textures.Texture;
    public var glTexture:js.html.webgl.Texture;
    public var rows:Int;
    public var columns:Int;
    public var total:Int;
    public var texCoordinates:Array<Dynamic>;
    public function getTileProperties(tileIndex:Int):Dynamic;
    public function getTileData(tileIndex:Int):Dynamic;
    public function getTileCollisionGroup(tileIndex:Int):Dynamic;
    public function containsTileIndex(tileIndex:Int):Bool;
    public function getTileTextureCoordinates(tileIndex:Int):Dynamic;
    public function setImage(texture:phaser.textures.Texture):phaser.tilemaps.Tileset;
    public function setTileSize(?tileWidth:Int, ?tileHeight:Int):phaser.tilemaps.Tileset;
    public function setSpacing(?margin:Int, ?spacing:Int):phaser.tilemaps.Tileset;
    public function updateTileData(imageWidth:Int, imageHeight:Int):phaser.tilemaps.Tileset;
}
