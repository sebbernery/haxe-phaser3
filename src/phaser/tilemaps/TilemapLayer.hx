package phaser.tilemaps;

/**
 * @classdesc
 * A Tilemap Layer is a Game Object that renders LayerData from a Tilemap when used in combination
 * with one, or more, Tilesets.
 *
 * @class TilemapLayer
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.50.0
 *
 * @extends Phaser.GameObjects.Components.Alpha
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.ComputedSize
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.GetBounds
 * @extends Phaser.GameObjects.Components.Origin
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs.
 * @param {Phaser.Tilemaps.Tilemap} tilemap - The Tilemap this layer is a part of.
 * @param {number} layerIndex - The index of the LayerData associated with this layer.
 * @param {(string|string[]|Phaser.Tilemaps.Tileset|Phaser.Tilemaps.Tileset[])} tileset - The tileset, or an array of tilesets, used to render this layer. Can be a string or a Tileset object.
 * @param {number} [x=0] - The world x position where the top left of this layer will be placed.
 * @param {number} [y=0] - The world y position where the top left of this layer will be placed.
 */
@:native("Phaser.Tilemaps.TilemapLayer")
extern class TilemapLayer extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, tilemap:phaser.tilemaps.Tilemap, layerIndex:Float, tileset:Dynamic, ?x:Float, ?y:Float);
    /**
     * Used internally by physics system to perform fast type checks.
     *
     * @name Phaser.Tilemaps.TilemapLayer#isTilemap
     * @type {boolean}
     * @readonly
     * @since 3.50.0
     */
    public var isTilemap:Bool;
    /**
     * The Tilemap that this layer is a part of.
     *
     * @name Phaser.Tilemaps.TilemapLayer#tilemap
     * @type {Phaser.Tilemaps.Tilemap}
     * @since 3.50.0
     */
    public var tilemap:phaser.tilemaps.Tilemap;
    /**
     * The index of the LayerData associated with this layer.
     *
     * @name Phaser.Tilemaps.TilemapLayer#layerIndex
     * @type {number}
     * @since 3.50.0
     */
    public var layerIndex:Float;
    /**
     * The LayerData associated with this layer. LayerData can only be associated with one
     * tilemap layer.
     *
     * @name Phaser.Tilemaps.TilemapLayer#layer
     * @type {Phaser.Tilemaps.LayerData}
     * @since 3.50.0
     */
    public var layer:phaser.tilemaps.LayerData;
    /**
     * An array of `Tileset` objects associated with this layer.
     *
     * @name Phaser.Tilemaps.TilemapLayer#tileset
     * @type {Phaser.Tilemaps.Tileset[]}
     * @since 3.50.0
     */
    public var tileset:Array<phaser.tilemaps.Tileset>;
    /**
     * The total number of tiles drawn by the renderer in the last frame.
     *
     * @name Phaser.Tilemaps.TilemapLayer#tilesDrawn
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var tilesDrawn:Float;
    /**
     * The total number of tiles in this layer. Updated every frame.
     *
     * @name Phaser.Tilemaps.TilemapLayer#tilesTotal
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var tilesTotal:Float;
    /**
     * Used internally during rendering. This holds the tiles that are visible within the Camera.
     *
     * @name Phaser.Tilemaps.TilemapLayer#culledTiles
     * @type {Phaser.Tilemaps.Tile[]}
     * @since 3.50.0
     */
    public var culledTiles:Array<phaser.tilemaps.Tile>;
    /**
     * You can control if the camera should cull tiles on this layer before rendering them or not.
     *
     * By default the camera will try to cull the tiles in this layer, to avoid over-drawing to the renderer.
     *
     * However, there are some instances when you may wish to disable this, and toggling this flag allows
     * you to do so. Also see `setSkipCull` for a chainable method that does the same thing.
     *
     * @name Phaser.Tilemaps.TilemapLayer#skipCull
     * @type {boolean}
     * @since 3.50.0
     */
    public var skipCull:Bool;
    /**
     * The amount of extra tiles to add into the cull rectangle when calculating its horizontal size.
     *
     * See the method `setCullPadding` for more details.
     *
     * @name Phaser.Tilemaps.TilemapLayer#cullPaddingX
     * @type {number}
     * @default 1
     * @since 3.50.0
     */
    public var cullPaddingX:Float;
    /**
     * The amount of extra tiles to add into the cull rectangle when calculating its vertical size.
     *
     * See the method `setCullPadding` for more details.
     *
     * @name Phaser.Tilemaps.TilemapLayer#cullPaddingY
     * @type {number}
     * @default 1
     * @since 3.50.0
     */
    public var cullPaddingY:Float;
    /**
     * The callback that is invoked when the tiles are culled.
     *
     * It will call a different function based on the map orientation:
     *
     * Orthogonal (the default) is `TilemapComponents.CullTiles`
     * Isometric is `TilemapComponents.IsometricCullTiles`
     * Hexagonal is `TilemapComponents.HexagonalCullTiles`
     * Staggered is `TilemapComponents.StaggeredCullTiles`
     *
     * However, you can override this to call any function you like.
     *
     * It will be sent 4 arguments:
     *
     * 1. The Phaser.Tilemaps.LayerData object for this Layer
     * 2. The Camera that is culling the layer. You can check its `dirty` property to see if it has changed since the last cull.
     * 3. A reference to the `culledTiles` array, which should be used to store the tiles you want rendered.
     * 4. The Render Order constant.
     *
     * See the `TilemapComponents.CullTiles` source code for details on implementing your own culling system.
     *
     * @name Phaser.Tilemaps.TilemapLayer#cullCallback
     * @type {function}
     * @since 3.50.0
     */
    public var cullCallback:Dynamic;
    /**
     * An array holding the mapping between the tile indexes and the tileset they belong to.
     *
     * @name Phaser.Tilemaps.TilemapLayer#gidMap
     * @type {Phaser.Tilemaps.Tileset[]}
     * @since 3.50.0
     */
    public var gidMap:Array<phaser.tilemaps.Tileset>;
    /**
     * Sets the rendering (draw) order of the tiles in this layer.
     *
     * The default is 'right-down', meaning it will order the tiles starting from the top-left,
     * drawing to the right and then moving down to the next row.
     *
     * The draw orders are:
     *
     * 0 = right-down
     * 1 = left-down
     * 2 = right-up
     * 3 = left-up
     *
     * Setting the render order does not change the tiles or how they are stored in the layer,
     * it purely impacts the order in which they are rendered.
     *
     * You can provide either an integer (0 to 3), or the string version of the order.
     *
     * @method Phaser.Tilemaps.TilemapLayer#setRenderOrder
     * @since 3.50.0
     *
     * @param {(number|string)} renderOrder - The render (draw) order value. Either an integer between 0 and 3, or a string: 'right-down', 'left-down', 'right-up' or 'left-up'.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setRenderOrder(renderOrder:Dynamic):Dynamic;
    /**
     * Calculates interesting faces at the given tile coordinates of the specified layer. Interesting
     * faces are used internally for optimizing collisions against tiles. This method is mostly used
     * internally to optimize recalculating faces when only one tile has been changed.
     *
     * @method Phaser.Tilemaps.TilemapLayer#calculateFacesAt
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate.
     * @param {number} tileY - The y coordinate.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function calculateFacesAt(tileX:Float, tileY:Float):Dynamic;
    /**
     * Calculates interesting faces within the rectangular area specified (in tile coordinates) of the
     * layer. Interesting faces are used internally for optimizing collisions against tiles. This method
     * is mostly used internally.
     *
     * @method Phaser.Tilemaps.TilemapLayer#calculateFacesWithin
     * @since 3.50.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function calculateFacesWithin(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Creates a Sprite for every object matching the given tile indexes in the layer. You can
     * optionally specify if each tile will be replaced with a new tile after the Sprite has been
     * created. This is useful if you want to lay down special tiles in a level that are converted to
     * Sprites, but want to replace the tile itself with a floor tile or similar once converted.
     *
     * @method Phaser.Tilemaps.TilemapLayer#createFromTiles
     * @since 3.50.0
     *
     * @param {(number|array)} indexes - The tile index, or array of indexes, to create Sprites from.
     * @param {(number|array)} replacements - The tile index, or array of indexes, to change a converted
     * tile to. Set to `null` to leave the tiles unchanged. If an array is given, it is assumed to be a
     * one-to-one mapping with the indexes array.
     * @param {Phaser.Types.GameObjects.Sprite.SpriteConfig} [spriteConfig] - The config object to pass into the Sprite creator (i.e.
     * scene.make.sprite).
     * @param {Phaser.Scene} [scene] - The Scene to create the Sprites within.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when determining the world XY
     *
     * @return {Phaser.GameObjects.Sprite[]} An array of the Sprites that were created.
     */
    public function createFromTiles(indexes:Dynamic, replacements:Dynamic, ?spriteConfig:phaser.types.gameobjects.sprite.SpriteConfig, ?scene:phaser.Scene, ?camera:phaser.cameras.scene2d.Camera):Array<phaser.gameobjects.Sprite>;
    /**
     * Returns the tiles in the given layer that are within the cameras viewport.
     * This is used internally during rendering.
     *
     * @method Phaser.Tilemaps.TilemapLayer#cull
     * @since 3.50.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to run the cull check against.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects to render.
     */
    public function cull(?camera:phaser.cameras.scene2d.Camera):Array<phaser.tilemaps.Tile>;
    /**
     * Copies the tiles in the source rectangular area to a new destination (all specified in tile
     * coordinates) within the layer. This copies all tile properties & recalculates collision
     * information in the destination region.
     *
     * @method Phaser.Tilemaps.TilemapLayer#copy
     * @since 3.50.0
     *
     * @param {number} srcTileX - The x coordinate of the area to copy from, in tiles, not pixels.
     * @param {number} srcTileY - The y coordinate of the area to copy from, in tiles, not pixels.
     * @param {number} width - The width of the area to copy, in tiles, not pixels.
     * @param {number} height - The height of the area to copy, in tiles, not pixels.
     * @param {number} destTileX - The x coordinate of the area to copy to, in tiles, not pixels.
     * @param {number} destTileY - The y coordinate of the area to copy to, in tiles, not pixels.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function copy(srcTileX:Float, srcTileY:Float, width:Float, height:Float, destTileX:Float, destTileY:Float, ?recalculateFaces:Bool):Dynamic;
    /**
     * Sets the tiles in the given rectangular area (in tile coordinates) of the layer with the
     * specified index. Tiles will be set to collide if the given index is a colliding index.
     * Collision information in the region will be recalculated.
     *
     * @method Phaser.Tilemaps.TilemapLayer#fill
     * @since 3.50.0
     *
     * @param {number} index - The tile index to fill the area with.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function fill(index:Float, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?recalculateFaces:Bool):Dynamic;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * filter callback function. Any tiles that pass the filter test (i.e. where the callback returns
     * true) will returned as a new array. Similar to Array.prototype.Filter in vanilla JS.
     *
     * @method Phaser.Tilemaps.TilemapLayer#filterTiles
     * @since 3.50.0
     *
     * @param {function} callback - The callback. Each tile in the given area will be passed to this
     * callback as the first and only parameter. The callback should return true for tiles that pass the
     * filter.
     * @param {object} [context] - The context under which the callback should be run.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    public function filterTiles(callback:Dynamic, ?context:Dynamic, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):Array<phaser.tilemaps.Tile>;
    /**
     * Searches the entire map layer for the first tile matching the given index, then returns that Tile
     * object. If no match is found, it returns null. The search starts from the top-left tile and
     * continues horizontally until it hits the end of the row, then it drops down to the next column.
     * If the reverse boolean is true, it scans starting from the bottom-right corner traveling up to
     * the top-left.
     *
     * @method Phaser.Tilemaps.TilemapLayer#findByIndex
     * @since 3.50.0
     *
     * @param {number} index - The tile index value to search for.
     * @param {number} [skip=0] - The number of times to skip a matching tile before returning.
     * @param {boolean} [reverse=false] - If true it will scan the layer in reverse, starting at the bottom-right. Otherwise it scans from the top-left.
     *
     * @return {Phaser.Tilemaps.Tile} The first matching Tile object.
     */
    public function findByIndex(index:Float, ?skip:Float, ?reverse:Bool):phaser.tilemaps.Tile;
    /**
     * Find the first tile in the given rectangular area (in tile coordinates) of the layer that
     * satisfies the provided testing function. I.e. finds the first tile for which `callback` returns
     * true. Similar to Array.prototype.find in vanilla JS.
     *
     * @method Phaser.Tilemaps.TilemapLayer#findTile
     * @since 3.50.0
     *
     * @param {FindTileCallback} callback - The callback. Each tile in the given area will be passed to this callback as the first and only parameter.
     * @param {object} [context] - The context under which the callback should be run.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {?Phaser.Tilemaps.Tile} The first Tile found at the given location.
     */
    public function findTile(callback:FindTileCallback, ?context:Dynamic, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):phaser.tilemaps.Tile;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * callback. Similar to Array.prototype.forEach in vanilla JS.
     *
     * @method Phaser.Tilemaps.TilemapLayer#forEachTile
     * @since 3.50.0
     *
     * @param {EachTileCallback} callback - The callback. Each tile in the given area will be passed to this callback as the first and only parameter.
     * @param {object} [context] - The context, or scope, under which the callback should be run.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function forEachTile(callback:EachTileCallback, ?context:Dynamic, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):Dynamic;
    /**
     * Gets a tile at the given tile coordinates from the given layer.
     *
     * @method Phaser.Tilemaps.TilemapLayer#getTileAt
     * @since 3.50.0
     *
     * @param {number} tileX - X position to get the tile from (given in tile units, not pixels).
     * @param {number} tileY - Y position to get the tile from (given in tile units, not pixels).
     * @param {boolean} [nonNull=false] - If true getTile won't return null for empty tiles, but a Tile object with an index of -1.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile at the given coordinates or null if no tile was found or the coordinates were invalid.
     */
    public function getTileAt(tileX:Float, tileY:Float, ?nonNull:Bool):phaser.tilemaps.Tile;
    /**
     * Gets a tile at the given world coordinates from the given layer.
     *
     * @method Phaser.Tilemaps.TilemapLayer#getTileAtWorldXY
     * @since 3.50.0
     *
     * @param {number} worldX - X position to get the tile from (given in pixels)
     * @param {number} worldY - Y position to get the tile from (given in pixels)
     * @param {boolean} [nonNull=false] - If true, function won't return null for empty tiles, but a Tile object with an index of -1.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Tilemaps.Tile} The tile at the given coordinates or null if no tile was found or the coordinates were invalid.
     */
    public function getTileAtWorldXY(worldX:Float, worldY:Float, ?nonNull:Bool, ?camera:phaser.cameras.scene2d.Camera):phaser.tilemaps.Tile;
    /**
     * Gets the tiles in the given rectangular area (in tile coordinates) of the layer.
     *
     * @method Phaser.Tilemaps.TilemapLayer#getTilesWithin
     * @since 3.50.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects found within the area.
     */
    public function getTilesWithin(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles that overlap with the given shape in the given layer. The shape must be a Circle,
     * Line, Rectangle or Triangle. The shape should be in world coordinates.
     *
     * @method Phaser.Tilemaps.TilemapLayer#getTilesWithinShape
     * @since 3.50.0
     *
     * @param {(Phaser.Geom.Circle|Phaser.Geom.Line|Phaser.Geom.Rectangle|Phaser.Geom.Triangle)} shape - A shape in world (pixel) coordinates
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when factoring in which tiles to return.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects found within the shape.
     */
    public function getTilesWithinShape(shape:Dynamic, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?camera:phaser.cameras.scene2d.Camera):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles in the given rectangular area (in world coordinates) of the layer.
     *
     * @method Phaser.Tilemaps.TilemapLayer#getTilesWithinWorldXY
     * @since 3.50.0
     *
     * @param {number} worldX - The world x coordinate for the top-left of the area.
     * @param {number} worldY - The world y coordinate for the top-left of the area.
     * @param {number} width - The width of the area.
     * @param {number} height - The height of the area.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when factoring in which tiles to return.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects found within the area.
     */
    public function getTilesWithinWorldXY(worldX:Float, worldY:Float, width:Float, height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?camera:phaser.cameras.scene2d.Camera):Array<phaser.tilemaps.Tile>;
    /**
     * Checks if there is a tile at the given location (in tile coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * @method Phaser.Tilemaps.TilemapLayer#hasTileAt
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     *
     * @return {boolean} `true` if a tile was found at the given location, otherwise `false`.
     */
    public function hasTileAt(tileX:Float, tileY:Float):Bool;
    /**
     * Checks if there is a tile at the given location (in world coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * @method Phaser.Tilemaps.TilemapLayer#hasTileAtWorldXY
     * @since 3.50.0
     *
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when factoring in which tiles to return.
     *
     * @return {boolean} `true` if a tile was found at the given location, otherwise `false`.
     */
    public function hasTileAtWorldXY(worldX:Float, worldY:Float, ?camera:phaser.cameras.scene2d.Camera):Bool;
    /**
     * Puts a tile at the given tile coordinates in the specified layer. You can pass in either an index
     * or a Tile object. If you pass in a Tile, all attributes will be copied over to the specified
     * location. If you pass in an index, only the index at the specified location will be changed.
     * Collision information will be recalculated at the specified location.
     *
     * @method Phaser.Tilemaps.TilemapLayer#putTileAt
     * @since 3.50.0
     *
     * @param {(number|Phaser.Tilemaps.Tile)} tile - The index of this tile to set or a Tile object.
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile object that was inserted at the given coordinates.
     */
    public function putTileAt(tile:Dynamic, tileX:Float, tileY:Float, ?recalculateFaces:Bool):phaser.tilemaps.Tile;
    /**
     * Puts a tile at the given world coordinates (pixels) in the specified layer. You can pass in either
     * an index or a Tile object. If you pass in a Tile, all attributes will be copied over to the
     * specified location. If you pass in an index, only the index at the specified location will be
     * changed. Collision information will be recalculated at the specified location.
     *
     * @method Phaser.Tilemaps.TilemapLayer#putTileAtWorldXY
     * @since 3.50.0
     *
     * @param {(number|Phaser.Tilemaps.Tile)} tile - The index of this tile to set or a Tile object.
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {boolean} [recalculateFaces] - `true` if the faces data should be recalculated.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile object that was inserted at the given coordinates.
     */
    public function putTileAtWorldXY(tile:Dynamic, worldX:Float, worldY:Float, ?recalculateFaces:Bool, ?camera:phaser.cameras.scene2d.Camera):phaser.tilemaps.Tile;
    /**
     * Puts an array of tiles or a 2D array of tiles at the given tile coordinates in the specified
     * layer. The array can be composed of either tile indexes or Tile objects. If you pass in a Tile,
     * all attributes will be copied over to the specified location. If you pass in an index, only the
     * index at the specified location will be changed. Collision information will be recalculated
     * within the region tiles were changed.
     *
     * @method Phaser.Tilemaps.TilemapLayer#putTilesAt
     * @since 3.50.0
     *
     * @param {(number[]|number[][]|Phaser.Tilemaps.Tile[]|Phaser.Tilemaps.Tile[][])} tile - A row (array) or grid (2D array) of Tiles or tile indexes to place.
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function putTilesAt(tile:Dynamic, tileX:Float, tileY:Float, ?recalculateFaces:Bool):Dynamic;
    /**
     * Randomizes the indexes of a rectangular region of tiles (in tile coordinates) within the
     * specified layer. Each tile will receive a new index. If an array of indexes is passed in, then
     * those will be used for randomly assigning new tile indexes. If an array is not provided, the
     * indexes found within the region (excluding -1) will be used for randomly assigning new tile
     * indexes. This method only modifies tile indexes and does not change collision information.
     *
     * @method Phaser.Tilemaps.TilemapLayer#randomize
     * @since 3.50.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {number[]} [indexes] - An array of indexes to randomly draw from during randomization.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function randomize(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?indexes:Array<Float>):Dynamic;
    /**
     * Removes the tile at the given tile coordinates in the specified layer and updates the layers
     * collision information.
     *
     * @method Phaser.Tilemaps.TilemapLayer#removeTileAt
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} [replaceWithNull=true] - If true, this will replace the tile at the specified location with null instead of a Tile with an index of -1.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     *
     * @return {Phaser.Tilemaps.Tile} A Tile object.
     */
    public function removeTileAt(tileX:Float, tileY:Float, ?replaceWithNull:Bool, ?recalculateFaces:Bool):phaser.tilemaps.Tile;
    /**
     * Removes the tile at the given world coordinates in the specified layer and updates the layers
     * collision information.
     *
     * @method Phaser.Tilemaps.TilemapLayer#removeTileAtWorldXY
     * @since 3.50.0
     *
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {boolean} [replaceWithNull=true] - If true, this will replace the tile at the specified location with null instead of a Tile with an index of -1.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile object that was removed from the given location.
     */
    public function removeTileAtWorldXY(worldX:Float, worldY:Float, ?replaceWithNull:Bool, ?recalculateFaces:Bool, ?camera:phaser.cameras.scene2d.Camera):phaser.tilemaps.Tile;
    /**
     * Draws a debug representation of the layer to the given Graphics. This is helpful when you want to
     * get a quick idea of which of your tiles are colliding and which have interesting faces. The tiles
     * are drawn starting at (0, 0) in the Graphics, allowing you to place the debug representation
     * wherever you want on the screen.
     *
     * @method Phaser.Tilemaps.TilemapLayer#renderDebug
     * @since 3.50.0
     *
     * @param {Phaser.GameObjects.Graphics} graphics - The target Graphics object to draw upon.
     * @param {Phaser.Types.Tilemaps.StyleConfig} [styleConfig] - An object specifying the colors to use for the debug drawing.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function renderDebug(graphics:phaser.gameobjects.Graphics, ?styleConfig:phaser.types.tilemaps.StyleConfig):Dynamic;
    /**
     * Scans the given rectangular area (given in tile coordinates) for tiles with an index matching
     * `findIndex` and updates their index to match `newIndex`. This only modifies the index and does
     * not change collision information.
     *
     * @method Phaser.Tilemaps.TilemapLayer#replaceByIndex
     * @since 3.50.0
     *
     * @param {number} findIndex - The index of the tile to search for.
     * @param {number} newIndex - The index of the tile to replace it with.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function replaceByIndex(findIndex:Float, newIndex:Float, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * You can control if the Cameras should cull tiles before rendering them or not.
     *
     * By default the camera will try to cull the tiles in this layer, to avoid over-drawing to the renderer.
     *
     * However, there are some instances when you may wish to disable this.
     *
     * @method Phaser.Tilemaps.TilemapLayer#setSkipCull
     * @since 3.50.0
     *
     * @param {boolean} [value=true] - Set to `true` to stop culling tiles. Set to `false` to enable culling again.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setSkipCull(?value:Bool):Dynamic;
    /**
     * When a Camera culls the tiles in this layer it does so using its view into the world, building up a
     * rectangle inside which the tiles must exist or they will be culled. Sometimes you may need to expand the size
     * of this 'cull rectangle', especially if you plan on rotating the Camera viewing the layer. Do so
     * by providing the padding values. The values given are in tiles, not pixels. So if the tile width was 32px
     * and you set `paddingX` to be 4, it would add 32px x 4 to the cull rectangle (adjusted for scale)
     *
     * @method Phaser.Tilemaps.TilemapLayer#setCullPadding
     * @since 3.50.0
     *
     * @param {number} [paddingX=1] - The amount of extra horizontal tiles to add to the cull check padding.
     * @param {number} [paddingY=1] - The amount of extra vertical tiles to add to the cull check padding.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setCullPadding(?paddingX:Float, ?paddingY:Float):Dynamic;
    /**
     * Sets collision on the given tile or tiles within a layer by index. You can pass in either a
     * single numeric index or an array of indexes: [2, 3, 15, 20]. The `collides` parameter controls if
     * collision will be enabled (true) or disabled (false).
     *
     * @method Phaser.Tilemaps.TilemapLayer#setCollision
     * @since 3.50.0
     *
     * @param {(number|array)} indexes - Either a single tile index, or an array of tile indexes.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the update.
     * @param {boolean} [updateLayer=true] - If true, updates the current tiles on the layer. Set to false if no tiles have been placed for significant performance boost.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setCollision(indexes:Dynamic, ?collides:Bool, ?recalculateFaces:Bool, ?updateLayer:Bool):Dynamic;
    /**
     * Sets collision on a range of tiles in a layer whose index is between the specified `start` and
     * `stop` (inclusive). Calling this with a start value of 10 and a stop value of 14 would set
     * collision for tiles 10, 11, 12, 13 and 14. The `collides` parameter controls if collision will be
     * enabled (true) or disabled (false).
     *
     * @method Phaser.Tilemaps.TilemapLayer#setCollisionBetween
     * @since 3.50.0
     *
     * @param {number} start - The first index of the tile to be set for collision.
     * @param {number} stop - The last index of the tile to be set for collision.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the update.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setCollisionBetween(start:Float, stop:Float, ?collides:Bool, ?recalculateFaces:Bool):Dynamic;
    /**
     * Sets collision on the tiles within a layer by checking tile properties. If a tile has a property
     * that matches the given properties object, its collision flag will be set. The `collides`
     * parameter controls if collision will be enabled (true) or disabled (false). Passing in
     * `{ collides: true }` would update the collision flag on any tiles with a "collides" property that
     * has a value of true. Any tile that doesn't have "collides" set to true will be ignored. You can
     * also use an array of values, e.g. `{ types: ["stone", "lava", "sand" ] }`. If a tile has a
     * "types" property that matches any of those values, its collision flag will be updated.
     *
     * @method Phaser.Tilemaps.TilemapLayer#setCollisionByProperty
     * @since 3.50.0
     *
     * @param {object} properties - An object with tile properties and corresponding values that should be checked.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the update.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setCollisionByProperty(properties:Dynamic, ?collides:Bool, ?recalculateFaces:Bool):Dynamic;
    /**
     * Sets collision on all tiles in the given layer, except for tiles that have an index specified in
     * the given array. The `collides` parameter controls if collision will be enabled (true) or
     * disabled (false). Tile indexes not currently in the layer are not affected.
     *
     * @method Phaser.Tilemaps.TilemapLayer#setCollisionByExclusion
     * @since 3.50.0
     *
     * @param {number[]} indexes - An array of the tile indexes to not be counted for collision.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the update.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setCollisionByExclusion(indexes:Array<Float>, ?collides:Bool, ?recalculateFaces:Bool):Dynamic;
    /**
     * Sets collision on the tiles within a layer by checking each tiles collision group data
     * (typically defined in Tiled within the tileset collision editor). If any objects are found within
     * a tiles collision group, the tile's colliding information will be set. The `collides` parameter
     * controls if collision will be enabled (true) or disabled (false).
     *
     * @method Phaser.Tilemaps.TilemapLayer#setCollisionFromCollisionGroup
     * @since 3.50.0
     *
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the update.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setCollisionFromCollisionGroup(?collides:Bool, ?recalculateFaces:Bool):Dynamic;
    /**
     * Sets a global collision callback for the given tile index within the layer. This will affect all
     * tiles on this layer that have the same index. If a callback is already set for the tile index it
     * will be replaced. Set the callback to null to remove it. If you want to set a callback for a tile
     * at a specific location on the map then see setTileLocationCallback.
     *
     * @method Phaser.Tilemaps.TilemapLayer#setTileIndexCallback
     * @since 3.50.0
     *
     * @param {(number|number[])} indexes - Either a single tile index, or an array of tile indexes to have a collision callback set for.
     * @param {function} callback - The callback that will be invoked when the tile is collided with.
     * @param {object} callbackContext - The context under which the callback is called.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setTileIndexCallback(indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic):Dynamic;
    /**
     * Sets a collision callback for the given rectangular area (in tile coordinates) within the layer.
     * If a callback is already set for the tile index it will be replaced. Set the callback to null to
     * remove it.
     *
     * @method Phaser.Tilemaps.TilemapLayer#setTileLocationCallback
     * @since 3.50.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {function} [callback] - The callback that will be invoked when the tile is collided with.
     * @param {object} [callbackContext] - The context, or scope, under which the callback is invoked.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setTileLocationCallback(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?callback:Dynamic, ?callbackContext:Dynamic):Dynamic;
    /**
     * Shuffles the tiles in a rectangular region (specified in tile coordinates) within the given
     * layer. It will only randomize the tiles in that area, so if they're all the same nothing will
     * appear to have changed! This method only modifies tile indexes and does not change collision
     * information.
     *
     * @method Phaser.Tilemaps.TilemapLayer#shuffle
     * @since 3.50.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function shuffle(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Scans the given rectangular area (given in tile coordinates) for tiles with an index matching
     * `indexA` and swaps then with `indexB`. This only modifies the index and does not change collision
     * information.
     *
     * @method Phaser.Tilemaps.TilemapLayer#swapByIndex
     * @since 3.50.0
     *
     * @param {number} tileA - First tile index.
     * @param {number} tileB - Second tile index.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function swapByIndex(tileA:Float, tileB:Float, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Converts from tile X coordinates (tile units) to world X coordinates (pixels), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.TilemapLayer#tileToWorldX
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {number} The Tile X coordinate converted to pixels.
     */
    public function tileToWorldX(tileX:Float, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from tile Y coordinates (tile units) to world Y coordinates (pixels), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.TilemapLayer#tileToWorldY
     * @since 3.50.0
     *
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {number} The Tile Y coordinate converted to pixels.
     */
    public function tileToWorldY(tileY:Float, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from tile XY coordinates (tile units) to world XY coordinates (pixels), factoring in the
     * layers position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @method Phaser.Tilemaps.TilemapLayer#tileToWorldXY
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Math.Vector2} [point] - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Math.Vector2} A Vector2 containing the world coordinates of the Tile.
     */
    public function tileToWorldXY(tileX:Float, tileY:Float, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera):phaser.math.Vector2;
    /**
     * Randomizes the indexes of a rectangular region of tiles (in tile coordinates) within the
     * specified layer. Each tile will receive a new index. New indexes are drawn from the given
     * weightedIndexes array. An example weighted array:
     *
     * [
     *  { index: 6, weight: 4 },    // Probability of index 6 is 4 / 8
     *  { index: 7, weight: 2 },    // Probability of index 7 would be 2 / 8
     *  { index: 8, weight: 1.5 },  // Probability of index 8 would be 1.5 / 8
     *  { index: 26, weight: 0.5 }  // Probability of index 27 would be 0.5 / 8
     * ]
     *
     * The probability of any index being choose is (the index's weight) / (sum of all weights). This
     * method only modifies tile indexes and does not change collision information.
     *
     * @method Phaser.Tilemaps.TilemapLayer#weightedRandomize
     * @since 3.50.0
     *
     * @param {object[]} weightedIndexes - An array of objects to randomly draw from during randomization. They should be in the form: { index: 0, weight: 4 } or { index: [0, 1], weight: 4 } if you wish to draw from multiple tile indexes.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function weightedRandomize(weightedIndexes:Array<Dynamic>, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Converts from world X coordinates (pixels) to tile X coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.TilemapLayer#worldToTileX
     * @since 3.50.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {boolean} [snapToFloor] - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {number} The tile X coordinate based on the world value.
     */
    public function worldToTileX(worldX:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from world Y coordinates (pixels) to tile Y coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.TilemapLayer#worldToTileY
     * @since 3.50.0
     *
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} [snapToFloor] - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {number} The tile Y coordinate based on the world value.
     */
    public function worldToTileY(worldY:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from world XY coordinates (pixels) to tile XY coordinates (tile units), factoring in the
     * layers position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @method Phaser.Tilemaps.TilemapLayer#worldToTileXY
     * @since 3.50.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} [snapToFloor] - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Math.Vector2} [point] - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Math.Vector2} A Vector2 containing the tile coordinates of the world values.
     */
    public function worldToTileXY(worldX:Float, worldY:Float, ?snapToFloor:Bool, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera):phaser.math.Vector2;
    /**
     * The alpha value of the Game Object.
     *
     * This is a global value, impacting the entire Game Object, not just a region of it.
     *
     * @name Phaser.GameObjects.Components.Alpha#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * The alpha value starting from the top-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaTopLeft
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaTopLeft:Float;
    /**
     * The alpha value starting from the top-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaTopRight
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaTopRight:Float;
    /**
     * The alpha value starting from the bottom-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaBottomLeft
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaBottomLeft:Float;
    /**
     * The alpha value starting from the bottom-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaBottomRight
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaBottomRight:Float;
    /**
     * Clears all alpha values associated with this Game Object.
     *
     * Immediately sets the alpha levels back to 1 (fully opaque).
     *
     * @method Phaser.GameObjects.Components.Alpha#clearAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearAlpha():Dynamic;
    /**
     * Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * If your game is running under WebGL you can optionally specify four different alpha values, each of which
     * correspond to the four corners of the Game Object. Under Canvas only the `topLeft` value given is used.
     *
     * @method Phaser.GameObjects.Components.Alpha#setAlpha
     * @since 3.0.0
     *
     * @param {number} [topLeft=1] - The alpha value used for the top-left of the Game Object. If this is the only value given it's applied across the whole Game Object.
     * @param {number} [topRight] - The alpha value used for the top-right of the Game Object. WebGL only.
     * @param {number} [bottomLeft] - The alpha value used for the bottom-left of the Game Object. WebGL only.
     * @param {number} [bottomRight] - The alpha value used for the bottom-right of the Game Object. WebGL only.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlpha(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency of which blend modes
     * are used.
     *
     * @name Phaser.GameObjects.Components.BlendMode#blendMode
     * @type {(Phaser.BlendModes|string)}
     * @since 3.0.0
     */
    public var blendMode:Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE (only works when rendering to a framebuffer, like a Render Texture)
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency in which blend modes
     * are used.
     *
     * @method Phaser.GameObjects.Components.BlendMode#setBlendMode
     * @since 3.0.0
     *
     * @param {(string|Phaser.BlendModes)} value - The BlendMode value. Either a string or a CONST.
     *
     * @return {this} This Game Object instance.
     */
    public function setBlendMode(value:Dynamic):Dynamic;
    /**
     * The native (un-scaled) width of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayWidth` property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The native (un-scaled) height of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayHeight` property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The displayed width of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#displayWidth
     * @type {number}
     * @since 3.0.0
     */
    public var displayWidth:Float;
    /**
     * The displayed height of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#displayHeight
     * @type {number}
     * @since 3.0.0
     */
    public var displayHeight:Float;
    /**
     * Sets the internal size of this Game Object, as used for frame or physics body creation.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.ComputedSize#setSize
     * @since 3.4.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setSize(width:Float, height:Float):Dynamic;
    /**
     * Sets the display size of this Game Object.
     *
     * Calling this will adjust the scale.
     *
     * @method Phaser.GameObjects.Components.ComputedSize#setDisplaySize
     * @since 3.4.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The default depth is zero. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @name Phaser.GameObjects.Components.Depth#depth
     * @type {number}
     * @since 3.0.0
     */
    public var depth:Float;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The default depth is zero. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {number} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Float):Dynamic;
    /**
     * The horizontally flipped state of the Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @name Phaser.GameObjects.Components.Flip#flipX
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var flipX:Bool;
    /**
     * The vertically flipped state of the Game Object.
     *
     * A Game Object that is flipped vertically will render inversed on the vertical axis (i.e. upside down)
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @name Phaser.GameObjects.Components.Flip#flipY
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var flipY:Bool;
    /**
     * Toggles the horizontal flipped state of this Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#toggleFlipX
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function toggleFlipX():Dynamic;
    /**
     * Toggles the vertical flipped state of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Flip#toggleFlipY
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function toggleFlipY():Dynamic;
    /**
     * Sets the horizontal flipped state of this Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlipX
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlipX(value:Bool):Dynamic;
    /**
     * Sets the vertical flipped state of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlipY
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlipY(value:Bool):Dynamic;
    /**
     * Sets the horizontal and vertical flipped state of this Game Object.
     *
     * A Game Object that is flipped will render inversed on the flipped axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlip
     * @since 3.0.0
     *
     * @param {boolean} x - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     * @param {boolean} y - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlip(x:Bool, y:Bool):Dynamic;
    /**
     * Resets the horizontal and vertical flipped state of this Game Object back to their default un-flipped state.
     *
     * @method Phaser.GameObjects.Components.Flip#resetFlip
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function resetFlip():Dynamic;
    /**
     * Gets the center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getCenter
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getCenter(?output:Dynamic):phaser.math.Vector2;
    /**
     * Gets the top-left corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopLeft
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the top-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the top-right corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopRight
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the left-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getLeftCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getLeftCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the right-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getRightCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getRightCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-left corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomLeft
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-right corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomRight
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bounds of this Game Object, regardless of origin.
     * The values are stored and returned in a Rectangle, or Rectangle-like, object.
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBounds
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [output,$return]
     *
     * @param {(Phaser.Geom.Rectangle|object)} [output] - An object to store the values in. If not provided a new Rectangle will be created.
     *
     * @return {(Phaser.Geom.Rectangle|object)} The values stored in the output object.
     */
    public function getBounds(?output:Dynamic):phaser.geom.Rectangle;
    /**
     * The horizontal origin of this Game Object.
     * The origin maps the relationship between the size and position of the Game Object.
     * The default value is 0.5, meaning all Game Objects are positioned based on their center.
     * Setting the value to 0 means the position now relates to the left of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Origin#originX
     * @type {number}
     * @default 0.5
     * @since 3.0.0
     */
    public var originX:Float;
    /**
     * The vertical origin of this Game Object.
     * The origin maps the relationship between the size and position of the Game Object.
     * The default value is 0.5, meaning all Game Objects are positioned based on their center.
     * Setting the value to 0 means the position now relates to the top of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Origin#originY
     * @type {number}
     * @default 0.5
     * @since 3.0.0
     */
    public var originY:Float;
    /**
     * The horizontal display origin of this Game Object.
     * The origin is a normalized value between 0 and 1.
     * The displayOrigin is a pixel value, based on the size of the Game Object combined with the origin.
     *
     * @name Phaser.GameObjects.Components.Origin#displayOriginX
     * @type {number}
     * @since 3.0.0
     */
    public var displayOriginX:Float;
    /**
     * The vertical display origin of this Game Object.
     * The origin is a normalized value between 0 and 1.
     * The displayOrigin is a pixel value, based on the size of the Game Object combined with the origin.
     *
     * @name Phaser.GameObjects.Components.Origin#displayOriginY
     * @type {number}
     * @since 3.0.0
     */
    public var displayOriginY:Float;
    /**
     * Sets the origin of this Game Object.
     *
     * The values are given in the range 0 to 1.
     *
     * @method Phaser.GameObjects.Components.Origin#setOrigin
     * @since 3.0.0
     *
     * @param {number} [x=0.5] - The horizontal origin value.
     * @param {number} [y=x] - The vertical origin value. If not defined it will be set to the value of `x`.
     *
     * @return {this} This Game Object instance.
     */
    public function setOrigin(?x:Float, ?y:Float):Dynamic;
    /**
     * Sets the origin of this Game Object based on the Pivot values in its Frame.
     *
     * @method Phaser.GameObjects.Components.Origin#setOriginFromFrame
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function setOriginFromFrame():Dynamic;
    /**
     * Sets the display origin of this Game Object.
     * The difference between this and setting the origin is that you can use pixel values for setting the display origin.
     *
     * @method Phaser.GameObjects.Components.Origin#setDisplayOrigin
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal display origin value.
     * @param {number} [y=x] - The vertical display origin value. If not defined it will be set to the value of `x`.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplayOrigin(?x:Float, ?y:Float):Dynamic;
    /**
     * Updates the Display Origin cached values internally stored on this Game Object.
     * You don't usually call this directly, but it is exposed for edge-cases where you may.
     *
     * @method Phaser.GameObjects.Components.Origin#updateDisplayOrigin
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function updateDisplayOrigin():Dynamic;
    /**
     * The initial WebGL pipeline of this Game Object.
     *
     * If you call `resetPipeline` on this Game Object, the pipeline is reset to this default.
     *
     * @name Phaser.GameObjects.Components.Pipeline#defaultPipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var defaultPipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * The current WebGL pipeline of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var pipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * Does this Game Object have any Post Pipelines set?
     *
     * @name Phaser.GameObjects.Components.Pipeline#hasPostPipeline
     * @type {boolean}
     * @webglOnly
     * @since 3.50.0
     */
    public var hasPostPipeline:Bool;
    /**
     * The WebGL Post FX Pipelines this Game Object uses for post-render effects.
     *
     * The pipelines are processed in the order in which they appear in this array.
     *
     * If you modify this array directly, be sure to set the
     * `hasPostPipeline` property accordingly.
     *
     * @name Phaser.GameObjects.Components.Pipeline#postPipeline
     * @type {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[]}
     * @webglOnly
     * @since 3.50.0
     */
    public var postPipeline:Array<phaser.renderer.webgl.pipelines.PostFXPipeline>;
    /**
     * An object to store pipeline specific data in, to be read by the pipelines this Game Object uses.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipelineData
     * @type {object}
     * @webglOnly
     * @since 3.50.0
     */
    public var pipelineData:Dynamic;
    /**
     * Sets the initial WebGL Pipeline of this Game Object.
     *
     * This should only be called during the instantiation of the Game Object. After that, use `setPipeline`.
     *
     * @method Phaser.GameObjects.Components.Pipeline#initPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function initPipeline(pipeline:Dynamic):Bool;
    /**
     * Sets the main WebGL Pipeline of this Game Object.
     *
     * Also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the same pipeline data object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipeline(pipeline:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Sets one, or more, Post Pipelines on this Game Object.
     *
     * Post Pipelines are invoked after this Game Object has rendered to its target and
     * are commonly used for post-fx.
     *
     * The post pipelines are appended to the `postPipelines` array belonging to this
     * Game Object. When the renderer processes this Game Object, it iterates through the post
     * pipelines in the order in which they appear in the array. If you are stacking together
     * multiple effects, be aware that the order is important.
     *
     * If you call this method multiple times, the new pipelines will be appended to any existing
     * post pipelines already set. Use the `resetPostPipeline` method to clear them first, if required.
     *
     * You can optionally also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|string[]|function|function[]|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[])} pipelines - Either the string-based name of the pipeline, or a pipeline instance, or class, or an array of them.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPostPipeline(pipelines:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Adds an entry to the `pipelineData` object belonging to this Game Object.
     *
     * If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
     *
     * If `value` is undefined, and `key` exists, `key` is removed from the data object.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipelineData
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string} key - The key of the pipeline data to set, update, or delete.
     * @param {any} [value] - The value to be set with the key. If `undefined` then `key` will be deleted from the object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipelineData(key:String, ?value:Dynamic):Dynamic;
    /**
     * Gets a Post Pipeline instance from this Game Object, based on the given name, and returns it.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|function|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline)} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} The first Post Pipeline matching the name, or undefined if no match.
     */
    public function getPostPipeline(pipeline:Dynamic):phaser.renderer.webgl.pipelines.PostFXPipeline;
    /**
     * Resets the WebGL Pipeline of this Game Object back to the default it was created with.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {boolean} [resetPostPipelines=false] - Reset all of the post pipelines?
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     *
     * @return {boolean} `true` if the pipeline was reset successfully, otherwise `false`.
     */
    public function resetPipeline(?resetPostPipelines:Bool, ?resetData:Bool):Bool;
    /**
     * Resets the WebGL Post Pipelines of this Game Object. It does this by calling
     * the `destroy` method on each post pipeline and then clearing the local array.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     */
    public function resetPostPipeline(?resetData:Bool):Void;
    /**
     * Removes a single Post Pipeline instance from this Game Object, based on the given name, and destroys it.
     *
     * If you wish to remove all Post Pipelines use the `resetPostPipeline` method instead.
     *
     * @method Phaser.GameObjects.Components.Pipeline#removePostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {this} This Game Object.
     */
    public function removePostPipeline(pipeline:Dynamic):Dynamic;
    /**
     * Gets the name of the WebGL Pipeline this Game Object is currently using.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPipelineName
     * @webglOnly
     * @since 3.0.0
     *
     * @return {string} The string-based name of the pipeline being used by this Game Object.
     */
    public function getPipelineName():String;
    /**
     * The horizontal scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Sets the scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @method Phaser.GameObjects.Components.ScrollFactor#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of this Game Object.
     * @param {number} [y=x] - The vertical scroll factor of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
    /**
     * The x position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#depth} instead.
     *
     * @name Phaser.GameObjects.Components.Transform#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * The w position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#w
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var w:Float;
    /**
     * This is a special setter that allows you to set both the horizontal and vertical scale of this Game Object
     * to the same value, at the same time. When reading this value the result returned is `(scaleX + scaleY) / 2`.
     *
     * Use of this property implies you wish the horizontal and vertical scales to be equal to each other. If this
     * isn't the case, use the `scaleX` or `scaleY` properties instead.
     *
     * @name Phaser.GameObjects.Components.Transform#scale
     * @type {number}
     * @default 1
     * @since 3.18.0
     */
    public var scale:Float;
    /**
     * The horizontal scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleX:Float;
    /**
     * The vertical scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleY:Float;
    /**
     * The angle of this Game Object as expressed in degrees.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, 90 is down, 180/-180 is left
     * and -90 is up.
     *
     * If you prefer to work in radians, see the `rotation` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#angle
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Float;
    /**
     * The angle of this Game Object in radians.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, PI/2 is down, +-PI is left
     * and -PI/2 is up.
     *
     * If you prefer to work in degrees, see the `angle` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#rotation
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Sets the position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setPosition
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x position of this Game Object.
     * @param {number} [y=x] - The y position of this Game Object. If not set it will use the `x` value.
     * @param {number} [z=0] - The z position of this Game Object.
     * @param {number} [w=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Dynamic;
    /**
     * Copies an object's coordinates to this Game Object's position.
     *
     * @method Phaser.GameObjects.Components.Transform#copyPosition
     * @since 3.50.0
     *
     * @param {(Phaser.Types.Math.Vector2Like|Phaser.Types.Math.Vector3Like|Phaser.Types.Math.Vector4Like)} source - An object with numeric 'x', 'y', 'z', or 'w' properties. Undefined values are not copied.
     *
     * @return {this} This Game Object instance.
     */
    public function copyPosition(source:Dynamic):Dynamic;
    /**
     * Sets the position of this Game Object to be a random position within the confines of
     * the given area.
     *
     * If no area is specified a random position between 0 x 0 and the game width x height is used instead.
     *
     * The position does not factor in the size of this Game Object, meaning that only the origin is
     * guaranteed to be within the area.
     *
     * @method Phaser.GameObjects.Components.Transform#setRandomPosition
     * @since 3.8.0
     *
     * @param {number} [x=0] - The x position of the top-left of the random area.
     * @param {number} [y=0] - The y position of the top-left of the random area.
     * @param {number} [width] - The width of the random area.
     * @param {number} [height] - The height of the random area.
     *
     * @return {this} This Game Object instance.
     */
    public function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the rotation of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setRotation
     * @since 3.0.0
     *
     * @param {number} [radians=0] - The rotation of this Game Object, in radians.
     *
     * @return {this} This Game Object instance.
     */
    public function setRotation(?radians:Float):Dynamic;
    /**
     * Sets the angle of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setAngle
     * @since 3.0.0
     *
     * @param {number} [degrees=0] - The rotation of this Game Object, in degrees.
     *
     * @return {this} This Game Object instance.
     */
    public function setAngle(?degrees:Float):Dynamic;
    /**
     * Sets the scale of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setScale
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scale of this Game Object.
     * @param {number} [y=x] - The vertical scale of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScale(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the x position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setX
     * @since 3.0.0
     *
     * @param {number} [value=0] - The x position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setX(?value:Float):Dynamic;
    /**
     * Sets the y position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setY
     * @since 3.0.0
     *
     * @param {number} [value=0] - The y position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setY(?value:Float):Dynamic;
    /**
     * Sets the z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#setDepth} instead.
     *
     * @method Phaser.GameObjects.Components.Transform#setZ
     * @since 3.0.0
     *
     * @param {number} [value=0] - The z position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setZ(?value:Float):Dynamic;
    /**
     * Sets the w position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setW
     * @since 3.0.0
     *
     * @param {number} [value=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setW(?value:Float):Dynamic;
    /**
     * Gets the local transform matrix for this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getLocalTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the world transform matrix for this Game Object, factoring in any parent Containers.
     *
     * @method Phaser.GameObjects.Components.Transform#getWorldTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentMatrix] - A temporary matrix to hold parent values during the calculations.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getWorldTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix, ?parentMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Takes the given `x` and `y` coordinates and converts them into local space for this
     * Game Object, taking into account parent and local transforms, and the Display Origin.
     *
     * The returned Vector2 contains the translated point in its properties.
     *
     * A Camera needs to be provided in order to handle modified scroll factors. If no
     * camera is specified, it will use the `main` camera from the Scene to which this
     * Game Object belongs.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalPoint
     * @since 3.50.0
     *
     * @param {number} x - The x position to translate.
     * @param {number} y - The y position to translate.
     * @param {Phaser.Math.Vector2} [point] - A Vector2, or point-like object, to store the results in.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera which is being tested against. If not given will use the Scene default camera.
     *
     * @return {Phaser.Math.Vector2} The translated point.
     */
    public function getLocalPoint(x:Float, y:Float, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera):phaser.math.Vector2;
    /**
     * Gets the sum total rotation of all of this Game Objects parent Containers.
     *
     * The returned value is in radians and will be zero if this Game Object has no parent container.
     *
     * @method Phaser.GameObjects.Components.Transform#getParentRotation
     * @since 3.18.0
     *
     * @return {number} The sum total rotation, in radians, of all parent containers of this Game Object.
     */
    public function getParentRotation():Float;
    /**
     * The visible state of the Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @name Phaser.GameObjects.Components.Visible#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Sets the visibility of this Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @method Phaser.GameObjects.Components.Visible#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setVisible(value:Bool):Dynamic;
}
