package phaser.tilemaps;

/**
 * @classdesc
 * A Static Tilemap Layer is a Game Object that renders LayerData from a Tilemap when used in combination
 * with one, or more, Tilesets.
 *
 * A Static Tilemap Layer is optimized for rendering speed over flexibility. You cannot apply per-tile
 * effects like tint or alpha, or change the tiles or tilesets the layer uses.
 *
 * Use a Static Tilemap Layer instead of a Dynamic Tilemap Layer when you don't need tile manipulation features.
 *
 * @class StaticTilemapLayer
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.GameObjects.Components.Alpha
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.ComputedSize
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.GetBounds
 * @extends Phaser.GameObjects.Components.Origin
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 * @extends Phaser.GameObjects.Components.ScrollFactor
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs.
 * @param {Phaser.Tilemaps.Tilemap} tilemap - The Tilemap this layer is a part of.
 * @param {integer} layerIndex - The index of the LayerData associated with this layer.
 * @param {(string|string[]|Phaser.Tilemaps.Tileset|Phaser.Tilemaps.Tileset[])} tileset - The tileset, or an array of tilesets, used to render this layer. Can be a string or a Tileset object.
 * @param {number} [x=0] - The world x position where the top left of this layer will be placed.
 * @param {number} [y=0] - The world y position where the top left of this layer will be placed.
 */
@:native("Phaser.Tilemaps.StaticTilemapLayer")
extern class StaticTilemapLayer extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, tilemap:phaser.tilemaps.Tilemap, layerIndex:Int, tileset:Dynamic, ?x:Float, ?y:Float);
    /**
     * Used internally by physics system to perform fast type checks.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#isTilemap
     * @type {boolean}
     * @readonly
     * @since 3.0.0
     */
    public var isTilemap:Bool;
    /**
     * The Tilemap that this layer is a part of.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#tilemap
     * @type {Phaser.Tilemaps.Tilemap}
     * @since 3.0.0
     */
    public var tilemap:phaser.tilemaps.Tilemap;
    /**
     * The index of the LayerData associated with this layer.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#layerIndex
     * @type {integer}
     * @since 3.0.0
     */
    public var layerIndex:Int;
    /**
     * The LayerData associated with this layer. LayerData can only be associated with one
     * tilemap layer.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#layer
     * @type {Phaser.Tilemaps.LayerData}
     * @since 3.0.0
     */
    public var layer:phaser.tilemaps.LayerData;
    /**
     * The Tileset/s associated with this layer.
     *
     * As of Phaser 3.14 this property is now an array of Tileset objects, previously it was a single reference.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#tileset
     * @type {Phaser.Tilemaps.Tileset[]}
     * @since 3.0.0
     */
    public var tileset:Array<phaser.tilemaps.Tileset>;
    /**
     * Used internally by the Canvas renderer.
     * This holds the tiles that are visible within the camera in the last frame.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#culledTiles
     * @type {array}
     * @since 3.0.0
     */
    public var culledTiles:Array<Dynamic>;
    /**
     * Canvas only.
     *
     * You can control if the Cameras should cull tiles before rendering them or not.
     * By default the camera will try to cull the tiles in this layer, to avoid over-drawing to the renderer.
     *
     * However, there are some instances when you may wish to disable this, and toggling this flag allows
     * you to do so. Also see `setSkipCull` for a chainable method that does the same thing.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#skipCull
     * @type {boolean}
     * @since 3.12.0
     */
    public var skipCull:Bool;
    /**
     * Canvas only.
     *
     * The total number of tiles drawn by the renderer in the last frame.
     *
     * This only works when rending with Canvas.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#tilesDrawn
     * @type {integer}
     * @readonly
     * @since 3.12.0
     */
    public var tilesDrawn:Int;
    /**
     * Canvas only.
     *
     * The total number of tiles in this layer. Updated every frame.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#tilesTotal
     * @type {integer}
     * @readonly
     * @since 3.12.0
     */
    public var tilesTotal:Int;
    /**
     * Canvas only.
     *
     * The amount of extra tiles to add into the cull rectangle when calculating its horizontal size.
     *
     * See the method `setCullPadding` for more details.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#cullPaddingX
     * @type {integer}
     * @default 1
     * @since 3.12.0
     */
    public var cullPaddingX:Int;
    /**
     * Canvas only.
     *
     * The amount of extra tiles to add into the cull rectangle when calculating its vertical size.
     *
     * See the method `setCullPadding` for more details.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#cullPaddingY
     * @type {integer}
     * @default 1
     * @since 3.12.0
     */
    public var cullPaddingY:Int;
    /**
     * Canvas only.
     *
     * The callback that is invoked when the tiles are culled.
     *
     * By default it will call `TilemapComponents.CullTiles` but you can override this to call any function you like.
     *
     * It will be sent 3 arguments:
     *
     * 1. The Phaser.Tilemaps.LayerData object for this Layer
     * 2. The Camera that is culling the layer. You can check its `dirty` property to see if it has changed since the last cull.
     * 3. A reference to the `culledTiles` array, which should be used to store the tiles you want rendered.
     *
     * See the `TilemapComponents.CullTiles` source code for details on implementing your own culling system.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#cullCallback
     * @type {function}
     * @since 3.12.0
     */
    public var cullCallback:Dynamic;
    /**
     * An array holding the mapping between the tile indexes and the tileset they belong to.
     *
     * @name Phaser.Tilemaps.StaticTilemapLayer#gidMap
     * @type {Phaser.Tilemaps.Tileset[]}
     * @since 3.14.0
     */
    public var gidMap:Array<phaser.tilemaps.Tileset>;
    /**
     * Upload the tile data to a VBO.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#upload
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera to render to.
     * @param {integer} tilesetIndex - The tileset index.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function upload(camera:phaser.cameras.scene2d.Camera, tilesetIndex:Int):phaser.tilemaps.StaticTilemapLayer;
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
     * @method Phaser.Tilemaps.StaticTilemapLayer#setRenderOrder
     * @since 3.12.0
     *
     * @param {(integer|string)} renderOrder - The render (draw) order value. Either an integer between 0 and 3, or a string: 'right-down', 'left-down', 'right-up' or 'left-up'.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setRenderOrder(renderOrder:Dynamic):Dynamic;
    /**
     * Calculates interesting faces at the given tile coordinates of the specified layer. Interesting
     * faces are used internally for optimizing collisions against tiles. This method is mostly used
     * internally to optimize recalculating faces when only one tile has been changed.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#calculateFacesAt
     * @since 3.0.0
     *
     * @param {integer} tileX - The x coordinate.
     * @param {integer} tileY - The y coordinate.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function calculateFacesAt(tileX:Int, tileY:Int):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Calculates interesting faces within the rectangular area specified (in tile coordinates) of the
     * layer. Interesting faces are used internally for optimizing collisions against tiles. This method
     * is mostly used internally.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#calculateFacesWithin
     * @since 3.0.0
     *
     * @param {integer} [tileX=0] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {integer} [tileY=0] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {integer} [width=max width based on tileX] - How many tiles wide from the `tileX` index the area will be.
     * @param {integer} [height=max height based on tileY] - How many tiles tall from the `tileY` index the area will be.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function calculateFacesWithin(?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Creates a Sprite for every object matching the given tile indexes in the layer. You can
     * optionally specify if each tile will be replaced with a new tile after the Sprite has been
     * created. This is useful if you want to lay down special tiles in a level that are converted to
     * Sprites, but want to replace the tile itself with a floor tile or similar once converted.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#createFromTiles
     * @since 3.0.0
     *
     * @param {(integer|array)} indexes - The tile index, or array of indexes, to create Sprites from.
     * @param {(integer|array)} replacements - The tile index, or array of indexes, to change a converted
     * tile to. Set to `null` to leave the tiles unchanged. If an array is given, it is assumed to be a
     * one-to-one mapping with the indexes array.
     * @param {Phaser.Types.GameObjects.Sprite.SpriteConfig} spriteConfig - The config object to pass into the Sprite creator (i.e.
     * scene.make.sprite).
     * @param {Phaser.Scene} [scene=scene the map is within] - The Scene to create the Sprites within.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when determining the world XY
     *
     * @return {Phaser.GameObjects.Sprite[]} An array of the Sprites that were created.
     */
    public function createFromTiles(indexes:Dynamic, replacements:Dynamic, spriteConfig:phaser.types.gameobjects.sprite.SpriteConfig, ?scene:phaser.Scene, ?camera:phaser.cameras.scene2d.Camera):Array<phaser.gameobjects.Sprite>;
    /**
     * Returns the tiles in the given layer that are within the cameras viewport.
     * This is used internally.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#cull
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to run the cull check against.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    public function cull(?camera:phaser.cameras.scene2d.Camera):Array<phaser.tilemaps.Tile>;
    /**
     * Canvas only.
     *
     * You can control if the Cameras should cull tiles before rendering them or not.
     * By default the camera will try to cull the tiles in this layer, to avoid over-drawing to the renderer.
     *
     * However, there are some instances when you may wish to disable this.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setSkipCull
     * @since 3.12.0
     *
     * @param {boolean} [value=true] - Set to `true` to stop culling tiles. Set to `false` to enable culling again.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setSkipCull(?value:Bool):Dynamic;
    /**
     * Canvas only.
     *
     * When a Camera culls the tiles in this layer it does so using its view into the world, building up a
     * rectangle inside which the tiles must exist or they will be culled. Sometimes you may need to expand the size
     * of this 'cull rectangle', especially if you plan on rotating the Camera viewing the layer. Do so
     * by providing the padding values. The values given are in tiles, not pixels. So if the tile width was 32px
     * and you set `paddingX` to be 4, it would add 32px x 4 to the cull rectangle (adjusted for scale)
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setCullPadding
     * @since 3.12.0
     *
     * @param {integer} [paddingX=1] - The amount of extra horizontal tiles to add to the cull check padding.
     * @param {integer} [paddingY=1] - The amount of extra vertical tiles to add to the cull check padding.
     *
     * @return {this} This Tilemap Layer object.
     */
    public function setCullPadding(?paddingX:Int, ?paddingY:Int):Dynamic;
    /**
     * Searches the entire map layer for the first tile matching the given index, then returns that Tile
     * object. If no match is found, it returns null. The search starts from the top-left tile and
     * continues horizontally until it hits the end of the row, then it drops down to the next column.
     * If the reverse boolean is true, it scans starting from the bottom-right corner traveling up to
     * the top-left.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#findByIndex
     * @since 3.0.0
     *
     * @param {integer} index - The tile index value to search for.
     * @param {integer} [skip=0] - The number of times to skip a matching tile before returning.
     * @param {boolean} [reverse=false] - If true it will scan the layer in reverse, starting at the
     * bottom-right. Otherwise it scans from the top-left.
     *
     * @return {Phaser.Tilemaps.Tile} A Tile object.
     */
    public function findByIndex(index:Int, ?skip:Int, ?reverse:Bool):phaser.tilemaps.Tile;
    /**
     * Find the first tile in the given rectangular area (in tile coordinates) of the layer that
     * satisfies the provided testing function. I.e. finds the first tile for which `callback` returns
     * true. Similar to Array.prototype.find in vanilla JS.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#findTile
     * @since 3.0.0
     *
     * @param {function} callback - The callback. Each tile in the given area will be passed to this
     * callback as the first and only parameter.
     * @param {object} [context] - The context under which the callback should be run.
     * @param {integer} [tileX=0] - The left most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {integer} [tileY=0] - The topmost tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {integer} [width=max width based on tileX] - How many tiles wide from the `tileX` index the area will be.
     * @param {integer} [height=max height based on tileY] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {?Phaser.Tilemaps.Tile}
     */
    public function findTile(callback:Dynamic, ?context:Dynamic, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):phaser.tilemaps.Tile;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * filter callback function. Any tiles that pass the filter test (i.e. where the callback returns
     * true) will returned as a new array. Similar to Array.prototype.Filter in vanilla JS.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#filterTiles
     * @since 3.0.0
     *
     * @param {function} callback - The callback. Each tile in the given area will be passed to this
     * callback as the first and only parameter. The callback should return true for tiles that pass the
     * filter.
     * @param {object} [context] - The context under which the callback should be run.
     * @param {integer} [tileX=0] - The leftmost tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {integer} [tileY=0] - The topmost tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {integer} [width=max width based on tileX] - How many tiles wide from the `tileX` index the area will be.
     * @param {integer} [height=max height based on tileY] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    public function filterTiles(callback:Dynamic, ?context:Dynamic, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):Array<phaser.tilemaps.Tile>;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * callback. Similar to Array.prototype.forEach in vanilla JS.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#forEachTile
     * @since 3.0.0
     *
     * @param {function} callback - The callback. Each tile in the given area will be passed to this
     * callback as the first and only parameter.
     * @param {object} [context] - The context under which the callback should be run.
     * @param {integer} [tileX=0] - The leftmost tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {integer} [tileY=0] - The topmost tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {integer} [width=max width based on tileX] - How many tiles wide from the `tileX` index the area will be.
     * @param {integer} [height=max height based on tileY] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function forEachTile(callback:Dynamic, ?context:Dynamic, ?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Gets a tile at the given tile coordinates from the given layer.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#getTileAt
     * @since 3.0.0
     *
     * @param {integer} tileX - X position to get the tile from (given in tile units, not pixels).
     * @param {integer} tileY - Y position to get the tile from (given in tile units, not pixels).
     * @param {boolean} [nonNull=false] - If true getTile won't return null for empty tiles, but a Tile
     * object with an index of -1.
     *
     * @return {Phaser.Tilemaps.Tile} The tile at the given coordinates or null if no tile was found or the coordinates were invalid.
     */
    public function getTileAt(tileX:Int, tileY:Int, ?nonNull:Bool):phaser.tilemaps.Tile;
    /**
     * Gets a tile at the given world coordinates from the given layer.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#getTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - X position to get the tile from (given in pixels)
     * @param {number} worldY - Y position to get the tile from (given in pixels)
     * @param {boolean} [nonNull=false] - If true, function won't return null for empty tiles, but a Tile
     * object with an index of -1.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Tilemaps.Tile} The tile at the given coordinates or null if no tile was found or the coordinates
     * were invalid.
     */
    public function getTileAtWorldXY(worldX:Float, worldY:Float, ?nonNull:Bool, ?camera:phaser.cameras.scene2d.Camera):phaser.tilemaps.Tile;
    /**
     * Gets the tiles in the given rectangular area (in tile coordinates) of the layer.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#getTilesWithin
     * @since 3.0.0
     *
     * @param {integer} [tileX=0] - The leftmost tile index (in tile coordinates) to use as the origin of the area.
     * @param {integer} [tileY=0] - The topmost tile index (in tile coordinates) to use as the origin of the area.
     * @param {integer} [width=max width based on tileX] - How many tiles wide from the `tileX` index the area will be.
     * @param {integer} [height=max height based on tileY] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    public function getTilesWithin(?tileX:Int, ?tileY:Int, ?width:Int, ?height:Int, ?filteringOptions:phaser.types.tilemaps.FilteringOptions):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles in the given rectangular area (in world coordinates) of the layer.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#getTilesWithinWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The leftmost tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} worldY - The topmost tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles high from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when factoring in which tiles to return.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    public function getTilesWithinWorldXY(worldX:Float, worldY:Float, width:Float, height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?camera:phaser.cameras.scene2d.Camera):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles that overlap with the given shape in the given layer. The shape must be a Circle,
     * Line, Rectangle or Triangle. The shape should be in world coordinates.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#getTilesWithinShape
     * @since 3.0.0
     *
     * @param {(Phaser.Geom.Circle|Phaser.Geom.Line|Phaser.Geom.Rectangle|Phaser.Geom.Triangle)} shape - A shape in world (pixel) coordinates
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    public function getTilesWithinShape(shape:Dynamic, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?camera:phaser.cameras.scene2d.Camera):Array<phaser.tilemaps.Tile>;
    /**
     * Checks if there is a tile at the given location (in tile coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#hasTileAt
     * @since 3.0.0
     *
     * @param {integer} tileX - X position to get the tile from in tile coordinates.
     * @param {integer} tileY - Y position to get the tile from in tile coordinates.
     *
     * @return {boolean}
     */
    public function hasTileAt(tileX:Int, tileY:Int):Bool;
    /**
     * Checks if there is a tile at the given location (in world coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#hasTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The X coordinate of the world position.
     * @param {number} worldY - The Y coordinate of the world position.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {boolean}
     */
    public function hasTileAtWorldXY(worldX:Float, worldY:Float, ?camera:phaser.cameras.scene2d.Camera):Bool;
    /**
     * Draws a debug representation of the layer to the given Graphics. This is helpful when you want to
     * get a quick idea of which of your tiles are colliding and which have interesting faces. The tiles
     * are drawn starting at (0, 0) in the Graphics, allowing you to place the debug representation
     * wherever you want on the screen.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#renderDebug
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Graphics} graphics - The target Graphics object to draw upon.
     * @param {Phaser.Types.Tilemaps.StyleConfig} styleConfig - An object specifying the colors to use for the debug drawing.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function renderDebug(graphics:phaser.gameobjects.Graphics, styleConfig:phaser.types.tilemaps.StyleConfig):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Sets collision on the given tile or tiles within a layer by index. You can pass in either a
     * single numeric index or an array of indexes: [2, 3, 15, 20]. The `collides` parameter controls if
     * collision will be enabled (true) or disabled (false).
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setCollision
     * @since 3.0.0
     *
     * @param {(integer|array)} indexes - Either a single tile index, or an array of tile indexes.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear
     * collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the
     * update.
     * @param {boolean} [updateLayer=true] - If true, updates the current tiles on the layer. Set to
     * false if no tiles have been placed for significant performance boost.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function setCollision(indexes:Dynamic, ?collides:Bool, ?recalculateFaces:Bool, ?updateLayer:Bool):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Sets collision on a range of tiles in a layer whose index is between the specified `start` and
     * `stop` (inclusive). Calling this with a start value of 10 and a stop value of 14 would set
     * collision for tiles 10, 11, 12, 13 and 14. The `collides` parameter controls if collision will be
     * enabled (true) or disabled (false).
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setCollisionBetween
     * @since 3.0.0
     *
     * @param {integer} start - The first index of the tile to be set for collision.
     * @param {integer} stop - The last index of the tile to be set for collision.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear
     * collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the
     * update.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function setCollisionBetween(start:Int, stop:Int, ?collides:Bool, ?recalculateFaces:Bool):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Sets collision on the tiles within a layer by checking tile properties. If a tile has a property
     * that matches the given properties object, its collision flag will be set. The `collides`
     * parameter controls if collision will be enabled (true) or disabled (false). Passing in
     * `{ collides: true }` would update the collision flag on any tiles with a "collides" property that
     * has a value of true. Any tile that doesn't have "collides" set to true will be ignored. You can
     * also use an array of values, e.g. `{ types: ["stone", "lava", "sand" ] }`. If a tile has a
     * "types" property that matches any of those values, its collision flag will be updated.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setCollisionByProperty
     * @since 3.0.0
     *
     * @param {object} properties - An object with tile properties and corresponding values that should
     * be checked.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear
     * collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the
     * update.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function setCollisionByProperty(properties:Dynamic, ?collides:Bool, ?recalculateFaces:Bool):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Sets collision on all tiles in the given layer, except for tiles that have an index specified in
     * the given array. The `collides` parameter controls if collision will be enabled (true) or
     * disabled (false).
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setCollisionByExclusion
     * @since 3.0.0
     *
     * @param {integer[]} indexes - An array of the tile indexes to not be counted for collision.
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear
     * collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the
     * update.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function setCollisionByExclusion(indexes:Array<Int>, ?collides:Bool, ?recalculateFaces:Bool):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Sets a global collision callback for the given tile index within the layer. This will affect all
     * tiles on this layer that have the same index. If a callback is already set for the tile index it
     * will be replaced. Set the callback to null to remove it. If you want to set a callback for a tile
     * at a specific location on the map then see setTileLocationCallback.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setTileIndexCallback
     * @since 3.0.0
     *
     * @param {(integer|array)} indexes - Either a single tile index, or an array of tile indexes to have a
     * collision callback set for.
     * @param {function} callback - The callback that will be invoked when the tile is collided with.
     * @param {object} callbackContext - The context under which the callback is called.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function setTileIndexCallback(indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Sets collision on the tiles within a layer by checking each tiles collision group data
     * (typically defined in Tiled within the tileset collision editor). If any objects are found within
     * a tiles collision group, the tile's colliding information will be set. The `collides` parameter
     * controls if collision will be enabled (true) or disabled (false).
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setCollisionFromCollisionGroup
     * @since 3.0.0
     *
     * @param {boolean} [collides=true] - If true it will enable collision. If false it will clear
     * collision.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate the tile faces after the
     * update.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function setCollisionFromCollisionGroup(?collides:Bool, ?recalculateFaces:Bool):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Sets a collision callback for the given rectangular area (in tile coordinates) within the layer.
     * If a callback is already set for the tile index it will be replaced. Set the callback to null to
     * remove it.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#setTileLocationCallback
     * @since 3.0.0
     *
     * @param {integer} tileX - The leftmost tile index (in tile coordinates) to use as the origin of the area.
     * @param {integer} tileY - The topmost tile index (in tile coordinates) to use as the origin of the area.
     * @param {integer} width - How many tiles wide from the `tileX` index the area will be.
     * @param {integer} height - How many tiles tall from the `tileY` index the area will be.
     * @param {function} callback - The callback that will be invoked when the tile is collided with.
     * @param {object} [callbackContext] - The context under which the callback is called.
     *
     * @return {Phaser.Tilemaps.StaticTilemapLayer} This Tilemap Layer object.
     */
    public function setTileLocationCallback(tileX:Int, tileY:Int, width:Int, height:Int, callback:Dynamic, ?callbackContext:Dynamic):phaser.tilemaps.StaticTilemapLayer;
    /**
     * Converts from tile X coordinates (tile units) to world X coordinates (pixels), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#tileToWorldX
     * @since 3.0.0
     *
     * @param {integer} tileX - The X coordinate, in tile coordinates.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the world values from the tile index.
     *
     * @return {number}
     */
    public function tileToWorldX(tileX:Int, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from tile Y coordinates (tile units) to world Y coordinates (pixels), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#tileToWorldY
     * @since 3.0.0
     *
     * @param {integer} tileY - The Y coordinate, in tile coordinates.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the world values from the tile index.
     *
     * @return {number}
     */
    public function tileToWorldY(tileY:Int, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from tile XY coordinates (tile units) to world XY coordinates (pixels), factoring in the
     * layers position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#tileToWorldXY
     * @since 3.0.0
     *
     * @param {integer} tileX - The X coordinate, in tile coordinates.
     * @param {integer} tileY - The Y coordinate, in tile coordinates.
     * @param {Phaser.Math.Vector2} [point] - A Vector2 to store the coordinates in. If not given, a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the world values from the tile index.
     *
     * @return {Phaser.Math.Vector2}
     */
    public function tileToWorldXY(tileX:Int, tileY:Int, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera):phaser.math.Vector2;
    /**
     * Converts from world X coordinates (pixels) to tile X coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#worldToTileX
     * @since 3.0.0
     *
     * @param {number} worldX - The X coordinate, in world pixels.
     * @param {boolean} [snapToFloor=true] - Whether or not to round the tile coordinate down to the
     * nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the tile index from the world values.]
     *
     * @return {number}
     */
    public function worldToTileX(worldX:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from world Y coordinates (pixels) to tile Y coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#worldToTileY
     * @since 3.0.0
     *
     * @param {number} worldY - The Y coordinate, in world pixels.
     * @param {boolean} [snapToFloor=true] - Whether or not to round the tile coordinate down to the
     * nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {number}
     */
    public function worldToTileY(worldY:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Converts from world XY coordinates (pixels) to tile XY coordinates (tile units), factoring in the
     * layers position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @method Phaser.Tilemaps.StaticTilemapLayer#worldToTileXY
     * @since 3.0.0
     *
     * @param {number} worldX - The X coordinate, in world pixels.
     * @param {number} worldY - The Y coordinate, in world pixels.
     * @param {boolean} [snapToFloor=true] - Whether or not to round the tile coordinate down to the
     * nearest integer.
     * @param {Phaser.Math.Vector2} [point] - A Vector2 to store the coordinates in. If not given, a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera=main camera] - The Camera to use when calculating the tile index from the world values.
     *
     * @return {Phaser.Math.Vector2}
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
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
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
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {integer} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Int):Dynamic;
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
     * Sets the initial WebGL Pipeline of this Game Object.
     * This should only be called during the instantiation of the Game Object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#initPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {string} [pipelineName=TextureTintPipeline] - The name of the pipeline to set on this Game Object. Defaults to the Texture Tint Pipeline.
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function initPipeline(?pipelineName:String):Bool;
    /**
     * Sets the active WebGL Pipeline of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {string} pipelineName - The name of the pipeline to set on this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipeline(pipelineName:String):Dynamic;
    /**
     * Resets the WebGL Pipeline of this Game Object back to the default it was created with.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function resetPipeline():Bool;
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
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Int;
    /**
     * The angle of this Game Object in radians.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, 90 is down, 180/-180 is left
     * and -90 is up.
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
}
