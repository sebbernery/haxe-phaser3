package phaser.tilemaps;

@:native("Phaser.Tilemaps.Tilemap")
extern class Tilemap {
    public function new(scene:phaser.Scene, mapData:phaser.tilemaps.MapData);
    public var scene:phaser.Scene;
    public var tileWidth:Int;
    public var tileHeight:Int;
    public var width:Float;
    public var height:Float;
    public var orientation:String;
    public var format:Float;
    public var version:Float;
    public var properties:Dynamic;
    public var widthInPixels:Float;
    public var heightInPixels:Float;
    public var imageCollections:Array<phaser.tilemaps.ImageCollection>;
    public var images:Array<Dynamic>;
    public var layers:Array<phaser.tilemaps.LayerData>;
    public var tilesets:Array<phaser.tilemaps.Tileset>;
    public var objects:Array<phaser.tilemaps.ObjectLayer>;
    public var currentLayerIndex:Int;
    public var layer:phaser.tilemaps.LayerData;
    public function addTilesetImage(tilesetName:String, ?key:String, ?tileWidth:Int, ?tileHeight:Int, ?tileMargin:Int, ?tileSpacing:Int, ?gid:Int):phaser.tilemaps.Tileset;
    public function convertLayerToStatic(?layer:Dynamic):phaser.tilemaps.StaticTilemapLayer;
    public function copy():phaser.tilemaps.Tilemap;
    public function createBlankDynamicLayer(name:String, tileset:phaser.tilemaps.Tileset, ?x:Float, ?y:Float, ?width:Int, ?height:Int, ?tileWidth:Int, ?tileHeight:Int):phaser.tilemaps.DynamicTilemapLayer;
    public function createDynamicLayer(layerID:Dynamic, tileset:phaser.tilemaps.Tileset, ?x:Float, ?y:Float):phaser.tilemaps.DynamicTilemapLayer;
    public function createFromObjects(name:String, id:Dynamic, spriteConfig:Dynamic, ?scene:phaser.Scene):Array<phaser.gameobjects.Sprite>;
    public function createFromTiles(indexes:Dynamic, replacements:Dynamic, spriteConfig:Dynamic, ?scene:phaser.Scene, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Array<phaser.gameobjects.Sprite>;
    public function createStaticLayer(layerID:Dynamic, tileset:phaser.tilemaps.Tileset, ?x:Float, ?y:Float):phaser.tilemaps.StaticTilemapLayer;
    public function destroy():Void;
    public function fill(index:Int, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function filterObjects(objectLayer:Dynamic, callback:TilemapFilterCallback, ?context:Dynamic):Array<phaser.gameobjects.GameObject>;
    public function filterTiles(callback:Dynamic, ?context:Dynamic, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:Dynamic, ?layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    public function findByIndex(index:Int, ?skip:Int, ?reverse:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function findObject(objectLayer:Dynamic, callback:TilemapFindCallback, ?context:Dynamic):phaser.gameobjects.GameObject;
    public function findTile(callback:FindTileCallback, ?context:Dynamic, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:Dynamic, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function forEachTile(callback:EachTileCallback, ?context:Dynamic, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:Dynamic, ?layer:LayerData):phaser.tilemaps.Tilemap;
    public function getImageIndex(name:String):Int;
    public function getIndex(location:Array<Dynamic>, name:String):Float;
    public function getLayer(?layer:Dynamic):phaser.tilemaps.LayerData;
    public function getObjectLayer(?name:String):phaser.tilemaps.ObjectLayer;
    public function getLayerIndex(?layer:Dynamic):Int;
    public function getLayerIndexByName(name:String):Int;
    public function getTileAt(tileX:Int, tileY:Int, ?nonNull:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function getTileAtWorldXY(worldX:Float, worldY:Float, ?nonNull:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function getTilesWithin(?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:Dynamic, ?layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    public function getTilesWithinShape(shape:Dynamic, ?filteringOptions:Dynamic, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    public function getTilesWithinWorldXY(worldX:Float, worldY:Float, width:Float, height:Float, ?filteringOptions:Dynamic, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    public function getTilesetIndex(name:String):Int;
    public function hasTileAt(tileX:Int, tileY:Int, ?layer:phaser.tilemaps.LayerData):Bool;
    public function hasTileAtWorldXY(worldX:Float, worldY:Float, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Bool;
    public function putTileAt(tile:Dynamic, tileX:Int, tileY:Int, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function putTileAtWorldXY(tile:Dynamic, worldX:Int, worldY:Int, ?recalculateFaces:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function putTilesAt(tile:Dynamic, tileX:Int, tileY:Int, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function randomize(?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?indexes:Array<Int>, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function calculateFacesAt(tileX:Int, tileY:Int, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function calculateFacesWithin(?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function removeAllLayers():phaser.tilemaps.Tilemap;
    public function removeTileAt(tileX:Int, tileY:Int, ?replaceWithNull:Bool, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function removeTileAtWorldXY(worldX:Float, worldY:Float, ?replaceWithNull:Bool, ?recalculateFaces:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    public function renderDebug(graphics:phaser.gameobjects.Graphics, styleConfig:Dynamic, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function replaceByIndex(findIndex:Int, newIndex:Int, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setCollision(indexes:Dynamic, ?collides:Bool, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setCollisionBetween(start:Int, stop:Int, ?collides:Bool, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setCollisionByProperty(properties:Dynamic, ?collides:Bool, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setCollisionByExclusion(indexes:Array<Int>, ?collides:Bool, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setCollisionFromCollisionGroup(?collides:Bool, ?recalculateFaces:Bool, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setTileIndexCallback(indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setTileLocationCallback(tileX:Int, tileY:Int, width:Int, height:Int, callback:Dynamic, ?callbackContext:Dynamic, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function setLayer(?layer:Dynamic):phaser.tilemaps.Tilemap;
    public function setBaseTileSize(tileWidth:Int, tileHeight:Int):phaser.tilemaps.Tilemap;
    public function setLayerTileSize(tileWidth:Int, tileHeight:Int, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    public function shuffle(?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function swapByIndex(tileA:Int, tileB:Int, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function tileToWorldX(tileX:Int, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Float;
    public function tileToWorldY(tileY:Int, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Float;
    public function tileToWorldXY(tileX:Int, tileY:Int, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    public function weightedRandomize(?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?weightedIndexes:Array<Dynamic>, ?layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tilemap;
    public function worldToTileX(worldX:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Float;
    public function worldToTileY(worldY:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):Float;
    public function worldToTileXY(worldX:Float, worldY:Float, ?snapToFloor:Bool, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera, ?layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
}
