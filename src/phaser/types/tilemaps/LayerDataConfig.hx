package phaser.types.tilemaps;

/**
 * @typedef {object} Phaser.Types.Tilemaps.LayerDataConfig
 * @since 3.0.0
 *
 * @property {string} [name] - The name of the layer, if specified in Tiled.
 * @property {number} [x=0] - The x offset of where to draw from the top left.
 * @property {number} [y=0] - The y offset of where to draw from the top left.
 * @property {number} [width=0] - The width of the layer in tiles.
 * @property {number} [height=0] - The height of the layer in tiles.
 * @property {number} [tileWidth=0] - The pixel width of the tiles.
 * @property {number} [tileHeight=0] - The pixel height of the tiles.
 * @property {number} [baseTileWidth=0] - The base tile width.
 * @property {number} [baseTileHeight=0] - The base tile height.
 * @property {number} [widthInPixels=0] - The width in pixels of the entire layer.
 * @property {number} [heightInPixels=0] - The height in pixels of the entire layer.
 * @property {number} [alpha=1] - The alpha value of the layer.
 * @property {boolean} [visible=true] - Is the layer visible or not?
 * @property {object[]} [properties] - Layer specific properties (can be specified in Tiled)
 * @property {array} [indexes] - Tile ID index map.
 * @property {array} [collideIndexes] - Tile Collision ID index map.
 * @property {array} [callbacks] - An array of callbacks.
 * @property {array} [bodies] - An array of physics bodies.
 * @property {array} [data] - An array of the tile data indexes.
 * @property {Phaser.Tilemaps.TilemapLayer} [tilemapLayer] - A reference to the Tilemap layer that owns this data.
 */
typedef LayerDataConfig = {
    @:optional var name:String;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var width:Float;
    @:optional var height:Float;
    @:optional var tileWidth:Float;
    @:optional var tileHeight:Float;
    @:optional var baseTileWidth:Float;
    @:optional var baseTileHeight:Float;
    @:optional var widthInPixels:Float;
    @:optional var heightInPixels:Float;
    @:optional var alpha:Float;
    @:optional var visible:Bool;
    @:optional var properties:Array<Dynamic>;
    @:optional var indexes:Array<Dynamic>;
    @:optional var collideIndexes:Array<Dynamic>;
    @:optional var callbacks:Array<Dynamic>;
    @:optional var bodies:Array<Dynamic>;
    @:optional var data:Array<Dynamic>;
    @:optional var tilemapLayer:phaser.tilemaps.TilemapLayer;
};
