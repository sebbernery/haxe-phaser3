package phaser.tilemaps;

/**
 * @namespace Phaser.Tilemaps.Components
 */
@:native("Phaser.Tilemaps.Components")
extern class Components {
    public function new();
    /**
     * Calculates interesting faces at the given tile coordinates of the specified layer. Interesting
     * faces are used internally for optimizing collisions against tiles. This method is mostly used
     * internally to optimize recalculating faces when only one tile has been changed.
     *
     * @function Phaser.Tilemaps.Components.CalculateFacesAt
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate.
     * @param {number} tileY - The y coordinate.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function CalculateFacesAt(tileX:Float, tileY:Float, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Calculates interesting faces within the rectangular area specified (in tile coordinates) of the
     * layer. Interesting faces are used internally for optimizing collisions against tiles. This method
     * is mostly used internally.
     *
     * @function Phaser.Tilemaps.Components.CalculateFacesWithin
     * @since 3.0.0
     *
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function CalculateFacesWithin(tileX:Float, tileY:Float, width:Float, height:Float, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Checks if the given tile coordinate is within the isometric layer bounds, or not.
     *
     * @function Phaser.Tilemaps.Components.CheckIsoBounds
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to check against.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to run the cull check against.
     *
     * @return {boolean} Returns `true` if the coordinates are within the iso bounds.
     */
    static public function CheckIsoBounds(tileX:Float, tileY:Float, layer:phaser.tilemaps.LayerData, ?camera:phaser.cameras.scene2d.Camera):Bool;
    /**
     * Copies the tiles in the source rectangular area to a new destination (all specified in tile
     * coordinates) within the layer. This copies all tile properties & recalculates collision
     * information in the destination region.
     *
     * @function Phaser.Tilemaps.Components.Copy
     * @since 3.0.0
     *
     * @param {number} srcTileX - The x coordinate of the area to copy from, in tiles, not pixels.
     * @param {number} srcTileY - The y coordinate of the area to copy from, in tiles, not pixels.
     * @param {number} width - The width of the area to copy, in tiles, not pixels.
     * @param {number} height - The height of the area to copy, in tiles, not pixels.
     * @param {number} destTileX - The x coordinate of the area to copy to, in tiles, not pixels.
     * @param {number} destTileY - The y coordinate of the area to copy to, in tiles, not pixels.
     * @param {boolean} recalculateFaces - `true` if the faces data should be recalculated.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function Copy(srcTileX:Float, srcTileY:Float, width:Float, height:Float, destTileX:Float, destTileY:Float, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Creates a Sprite for every object matching the given tile indexes in the layer. You can
     * optionally specify if each tile will be replaced with a new tile after the Sprite has been
     * created. This is useful if you want to lay down special tiles in a level that are converted to
     * Sprites, but want to replace the tile itself with a floor tile or similar once converted.
     *
     * @function Phaser.Tilemaps.Components.CreateFromTiles
     * @since 3.0.0
     *
     * @param {(number|number[])} indexes - The tile index, or array of indexes, to create Sprites from.
     * @param {(number|number[])} replacements - The tile index, or array of indexes, to change a converted tile to. Set to `null` to leave the tiles unchanged. If an array is given, it is assumed to be a one-to-one mapping with the indexes array.
     * @param {Phaser.Types.GameObjects.Sprite.SpriteConfig} spriteConfig - The config object to pass into the Sprite creator (i.e. scene.make.sprite).
     * @param {Phaser.Scene} scene - The Scene to create the Sprites within.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when determining the world XY
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.GameObjects.Sprite[]} An array of the Sprites that were created.
     */
    static public function CreateFromTiles(indexes:Dynamic, replacements:Dynamic, spriteConfig:phaser.types.gameobjects.sprite.SpriteConfig, scene:phaser.Scene, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Array<phaser.gameobjects.Sprite>;
    /**
     * Returns the bounds in the given orthogonal layer that are within the cameras viewport.
     * This is used internally by the cull tiles function.
     *
     * @function Phaser.Tilemaps.Components.CullBounds
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to run the cull check against.
     *
     * @return {Phaser.Geom.Rectangle} A rectangle containing the culled bounds. If you wish to retain this object, clone it, as it's recycled internally.
     */
    static public function CullBounds(layer:phaser.tilemaps.LayerData, camera:phaser.cameras.scene2d.Camera):phaser.geom.Rectangle;
    /**
     * Returns the tiles in the given layer that are within the cameras viewport. This is used internally.
     *
     * @function Phaser.Tilemaps.Components.CullTiles
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to run the cull check against.
     * @param {array} [outputArray] - An optional array to store the Tile objects within.
     * @param {number} [renderOrder=0] - The rendering order constant.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    static public function CullTiles(layer:phaser.tilemaps.LayerData, camera:phaser.cameras.scene2d.Camera, ?outputArray:Array<Dynamic>, ?renderOrder:Float):Array<phaser.tilemaps.Tile>;
    /**
     * Sets the tiles in the given rectangular area (in tile coordinates) of the layer with the
     * specified index. Tiles will be set to collide if the given index is a colliding index.
     * Collision information in the region will be recalculated.
     *
     * @function Phaser.Tilemaps.Components.Fill
     * @since 3.0.0
     *
     * @param {number} index - The tile index to fill the area with.
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {boolean} recalculateFaces - `true` if the faces data should be recalculated.
     * @param {Phaser.Tilemaps.LayerData} layer - The tile layer to use. If not given the current layer is used.
     */
    static public function Fill(index:Float, tileX:Float, tileY:Float, width:Float, height:Float, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):Void;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * filter callback function. Any tiles that pass the filter test (i.e. where the callback returns
     * true) will returned as a new array. Similar to Array.prototype.Filter in vanilla JS.
     *
     * @function Phaser.Tilemaps.Components.FilterTiles
     * @since 3.0.0
     *
     * @param {function} callback - The callback. Each tile in the given area will be passed to this
     * callback as the first and only parameter. The callback should return true for tiles that pass the
     * filter.
     * @param {object} context - The context under which the callback should be run.
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} filteringOptions - Optional filters to apply when getting the tiles.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile[]} The filtered array of Tiles.
     */
    static public function FilterTiles(callback:Dynamic, context:Dynamic, tileX:Float, tileY:Float, width:Float, height:Float, filteringOptions:phaser.types.tilemaps.FilteringOptions, layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    /**
     * Searches the entire map layer for the first tile matching the given index, then returns that Tile
     * object. If no match is found, it returns null. The search starts from the top-left tile and
     * continues horizontally until it hits the end of the row, then it drops down to the next column.
     * If the reverse boolean is true, it scans starting from the bottom-right corner traveling up to
     * the top-left.
     *
     * @function Phaser.Tilemaps.Components.FindByIndex
     * @since 3.0.0
     *
     * @param {number} index - The tile index value to search for.
     * @param {number} skip - The number of times to skip a matching tile before returning.
     * @param {boolean} reverse - If true it will scan the layer in reverse, starting at the bottom-right. Otherwise it scans from the top-left.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {?Phaser.Tilemaps.Tile} The first (or n skipped) tile with the matching index.
     */
    static public function FindByIndex(index:Float, skip:Float, reverse:Bool, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * Find the first tile in the given rectangular area (in tile coordinates) of the layer that
     * satisfies the provided testing function. I.e. finds the first tile for which `callback` returns
     * true. Similar to Array.prototype.find in vanilla JS.
     *
     * @function Phaser.Tilemaps.Components.FindTile
     * @since 3.0.0
     *
     * @param {FindTileCallback} callback - The callback. Each tile in the given area will be passed to this callback as the first and only parameter.
     * @param {object} context - The context under which the callback should be run.
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} filteringOptions - Optional filters to apply when getting the tiles.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {?Phaser.Tilemaps.Tile} A Tile that matches the search, or null if no Tile found
     */
    static public function FindTile(callback:FindTileCallback, context:Dynamic, tileX:Float, tileY:Float, width:Float, height:Float, filteringOptions:phaser.types.tilemaps.FilteringOptions, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * callback. Similar to Array.prototype.forEach in vanilla JS.
     *
     * @function Phaser.Tilemaps.Components.ForEachTile
     * @since 3.0.0
     *
     * @param {EachTileCallback} callback - The callback. Each tile in the given area will be passed to this callback as the first and only parameter.
     * @param {object} context - The context under which the callback should be run.
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area to filter.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} filteringOptions - Optional filters to apply when getting the tiles.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function ForEachTile(callback:EachTileCallback, context:Dynamic, tileX:Float, tileY:Float, width:Float, height:Float, filteringOptions:phaser.types.tilemaps.FilteringOptions, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Gets the correct function to use to cull tiles, based on the map orientation.
     *
     * @function Phaser.Tilemaps.Components.GetCullTilesFunction
     * @since 3.50.0
     *
     * @param {number} orientation - The Tilemap orientation constant.
     *
     * @return {function} The function to use to cull tiles for the given map type.
     */
    static public function GetCullTilesFunction(orientation:Float):Dynamic;
    /**
     * Gets a tile at the given tile coordinates from the given layer.
     *
     * @function Phaser.Tilemaps.Components.GetTileAt
     * @since 3.0.0
     *
     * @param {number} tileX - X position to get the tile from (given in tile units, not pixels).
     * @param {number} tileY - Y position to get the tile from (given in tile units, not pixels).
     * @param {boolean} nonNull - If true getTile won't return null for empty tiles, but a Tile object with an index of -1.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile} The tile at the given coordinates or null if no tile was found or the coordinates were invalid.
     */
    static public function GetTileAt(tileX:Float, tileY:Float, nonNull:Bool, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * Gets a tile at the given world coordinates from the given layer.
     *
     * @function Phaser.Tilemaps.Components.GetTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - X position to get the tile from (given in pixels)
     * @param {number} worldY - Y position to get the tile from (given in pixels)
     * @param {boolean} nonNull - If true, function won't return null for empty tiles, but a Tile object with an index of -1.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile} The tile at the given coordinates or null if no tile was found or the coordinates were invalid.
     */
    static public function GetTileAtWorldXY(worldX:Float, worldY:Float, nonNull:Bool, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * Gets the correct function to use to translate tiles, based on the map orientation.
     *
     * @function Phaser.Tilemaps.Components.GetTileToWorldXFunction
     * @since 3.50.0
     *
     * @param {number} orientation - The Tilemap orientation constant.
     *
     * @return {function} The function to use to translate tiles for the given map type.
     */
    static public function GetTileToWorldXFunction(orientation:Float):Dynamic;
    /**
     * Gets the correct function to use to translate tiles, based on the map orientation.
     *
     * @function Phaser.Tilemaps.Components.GetTileToWorldXYFunction
     * @since 3.50.0
     *
     * @param {number} orientation - The Tilemap orientation constant.
     *
     * @return {function} The function to use to translate tiles for the given map type.
     */
    static public function GetTileToWorldXYFunction(orientation:Float):Dynamic;
    /**
     * Gets the correct function to use to translate tiles, based on the map orientation.
     *
     * @function Phaser.Tilemaps.Components.GetTileToWorldYFunction
     * @since 3.50.0
     *
     * @param {number} orientation - The Tilemap orientation constant.
     *
     * @return {function} The function to use to translate tiles for the given map type.
     */
    static public function GetTileToWorldYFunction(orientation:Float):Dynamic;
    /**
     * Gets the tiles in the given rectangular area (in tile coordinates) of the layer.
     *
     * @function Phaser.Tilemaps.Components.GetTilesWithin
     * @since 3.0.0
     *
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} filteringOptions - Optional filters to apply when getting the tiles.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile[]} Array of Tile objects.
     */
    static public function GetTilesWithin(tileX:Float, tileY:Float, width:Float, height:Float, filteringOptions:phaser.types.tilemaps.FilteringOptions, layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles that overlap with the given shape in the given layer. The shape must be a Circle,
     * Line, Rectangle or Triangle. The shape should be in world coordinates.
     *
     * @function Phaser.Tilemaps.Components.GetTilesWithinShape
     * @since 3.0.0
     *
     * @param {(Phaser.Geom.Circle|Phaser.Geom.Line|Phaser.Geom.Rectangle|Phaser.Geom.Triangle)} shape - A shape in world (pixel) coordinates
     * @param {Phaser.Types.Tilemaps.FilteringOptions} filteringOptions - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile[]} Array of Tile objects.
     */
    static public function GetTilesWithinShape(shape:Dynamic, filteringOptions:phaser.types.tilemaps.FilteringOptions, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles in the given rectangular area (in world coordinates) of the layer.
     *
     * @function Phaser.Tilemaps.Components.GetTilesWithinWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The world x coordinate for the top-left of the area.
     * @param {number} worldY - The world y coordinate for the top-left of the area.
     * @param {number} width - The width of the area.
     * @param {number} height - The height of the area.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} filteringOptions - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when factoring in which tiles to return.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile[]} Array of Tile objects.
     */
    static public function GetTilesWithinWorldXY(worldX:Float, worldY:Float, width:Float, height:Float, filteringOptions:phaser.types.tilemaps.FilteringOptions, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the correct function to use to translate tiles, based on the map orientation.
     *
     * @function Phaser.Tilemaps.Components.GetWorldToTileXFunction
     * @since 3.50.0
     *
     * @param {number} orientation - The Tilemap orientation constant.
     *
     * @return {function} The function to use to translate tiles for the given map type.
     */
    static public function GetWorldToTileXFunction(orientation:Float):Dynamic;
    /**
     * Gets the correct function to use to translate tiles, based on the map orientation.
     *
     * @function Phaser.Tilemaps.Components.GetWorldToTileXYFunction
     * @since 3.50.0
     *
     * @param {number} orientation - The Tilemap orientation constant.
     *
     * @return {function} The function to use to translate tiles for the given map type.
     */
    static public function GetWorldToTileXYFunction(orientation:Float):Dynamic;
    /**
     * Gets the correct function to use to translate tiles, based on the map orientation.
     *
     * @function Phaser.Tilemaps.Components.GetWorldToTileYFunction
     * @since 3.50.0
     *
     * @param {number} orientation - The Tilemap orientation constant.
     *
     * @return {function} The function to use to translate tiles for the given map type.
     */
    static public function GetWorldToTileYFunction(orientation:Float):Dynamic;
    /**
     * Checks if there is a tile at the given location (in tile coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * @function Phaser.Tilemaps.Components.HasTileAt
     * @since 3.0.0
     *
     * @param {number} tileX - X position to get the tile from (given in tile units, not pixels).
     * @param {number} tileY - Y position to get the tile from (given in tile units, not pixels).
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {?boolean} Returns a boolean, or null if the layer given was invalid.
     */
    static public function HasTileAt(tileX:Float, tileY:Float, layer:phaser.tilemaps.LayerData):Bool;
    /**
     * Checks if there is a tile at the given location (in world coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * @function Phaser.Tilemaps.Components.HasTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The X coordinate of the world position.
     * @param {number} worldY - The Y coordinate of the world position.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when factoring in which tiles to return.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {?boolean} Returns a boolean, or null if the layer given was invalid.
     */
    static public function HasTileAtWorldXY(worldX:Float, worldY:Float, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Bool;
    /**
     * Returns the bounds in the given layer that are within the camera's viewport.
     * This is used internally by the cull tiles function.
     *
     * @function Phaser.Tilemaps.Components.HexagonalCullBounds
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to run the cull check against.
     *
     * @return {object} An object containing the `left`, `right`, `top` and `bottom` bounds.
     */
    static public function HexagonalCullBounds(layer:phaser.tilemaps.LayerData, camera:phaser.cameras.scene2d.Camera):Dynamic;
    /**
     * Returns the tiles in the given layer that are within the cameras viewport. This is used internally.
     *
     * @function Phaser.Tilemaps.Components.HexagonalCullTiles
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to run the cull check against.
     * @param {array} [outputArray] - An optional array to store the Tile objects within.
     * @param {number} [renderOrder=0] - The rendering order constant.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    static public function HexagonalCullTiles(layer:phaser.tilemaps.LayerData, camera:phaser.cameras.scene2d.Camera, ?outputArray:Array<Dynamic>, ?renderOrder:Float):Array<phaser.tilemaps.Tile>;
    /**
     * Converts from hexagonal tile XY coordinates (tile units) to world XY coordinates (pixels), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.HexagonalTileToWorldXY
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in world coordinates.
     */
    static public function HexagonalTileToWorldXY(tileX:Float, tileY:Float, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Converts from hexagonal tile Y coordinates (tile units) to world Y coordinates (pixels), factoring in the
     * layer's position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.HexagonalTileToWorldY
     * @since 3.50.0
     *
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number} The Y location in world coordinates.
     */
    static public function HexagonalTileToWorldY(tileY:Float, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
    /**
     * Converts from world XY coordinates (pixels) to hexagonal tile XY coordinates (tile units), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.HexagonalWorldToTileXY
     * @since 3.50.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinates down to the nearest integer.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in tile units.
     */
    static public function HexagonalWorldToTileXY(worldX:Float, worldY:Float, snapToFloor:Bool, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Converts from world Y coordinates (pixels) to hexagonal tile Y coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.HexagonalWorldToTileY
     * @since 3.50.0
     *
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number} The Y location in tile units.
     */
    static public function HexagonalWorldToTileY(worldY:Float, snapToFloor:Bool, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
    /**
     * Checks if the given tile coordinates are within the bounds of the layer.
     *
     * @function Phaser.Tilemaps.Components.IsInLayerBounds
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {boolean} `true` if the tile coordinates are within the bounds of the layer, otherwise `false`.
     */
    static public function IsInLayerBounds(tileX:Float, tileY:Float, layer:phaser.tilemaps.LayerData):Bool;
    /**
     * Returns the tiles in the given layer that are within the cameras viewport. This is used internally.
     *
     * @function Phaser.Tilemaps.Components.IsometricCullTiles
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to run the cull check against.
     * @param {array} [outputArray] - An optional array to store the Tile objects within.
     * @param {number} [renderOrder=0] - The rendering order constant.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    static public function IsometricCullTiles(layer:phaser.tilemaps.LayerData, camera:phaser.cameras.scene2d.Camera, ?outputArray:Array<Dynamic>, ?renderOrder:Float):Array<phaser.tilemaps.Tile>;
    /**
     * Converts from isometric tile XY coordinates (tile units) to world XY coordinates (pixels), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.IsometricTileToWorldXY
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in world coordinates.
     */
    static public function IsometricTileToWorldXY(tileX:Float, tileY:Float, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Converts from world XY coordinates (pixels) to isometric tile XY coordinates (tile units), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.IsometricWorldToTileXY
     * @since 3.50.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in tile units.
     */
    static public function IsometricWorldToTileXY(worldX:Float, worldY:Float, snapToFloor:Bool, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Puts a tile at the given tile coordinates in the specified layer. You can pass in either an index
     * or a Tile object. If you pass in a Tile, all attributes will be copied over to the specified
     * location. If you pass in an index, only the index at the specified location will be changed.
     * Collision information will be recalculated at the specified location.
     *
     * @function Phaser.Tilemaps.Components.PutTileAt
     * @since 3.0.0
     *
     * @param {(number|Phaser.Tilemaps.Tile)} tile - The index of this tile to set or a Tile object.
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} recalculateFaces - `true` if the faces data should be recalculated.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile object that was created or added to this map.
     */
    static public function PutTileAt(tile:Dynamic, tileX:Float, tileY:Float, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * Puts a tile at the given world coordinates (pixels) in the specified layer. You can pass in either
     * an index or a Tile object. If you pass in a Tile, all attributes will be copied over to the
     * specified location. If you pass in an index, only the index at the specified location will be
     * changed. Collision information will be recalculated at the specified location.
     *
     * @function Phaser.Tilemaps.Components.PutTileAtWorldXY
     * @since 3.0.0
     *
     * @param {(number|Phaser.Tilemaps.Tile)} tile - The index of this tile to set or a Tile object.
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {boolean} recalculateFaces - `true` if the faces data should be recalculated.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile object that was created or added to this map.
     */
    static public function PutTileAtWorldXY(tile:Dynamic, worldX:Float, worldY:Float, recalculateFaces:Bool, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * Puts an array of tiles or a 2D array of tiles at the given tile coordinates in the specified
     * layer. The array can be composed of either tile indexes or Tile objects. If you pass in a Tile,
     * all attributes will be copied over to the specified location. If you pass in an index, only the
     * index at the specified location will be changed. Collision information will be recalculated
     * within the region tiles were changed.
     *
     * @function Phaser.Tilemaps.Components.PutTilesAt
     * @since 3.0.0
     *
     * @param {(number[]|number[][]|Phaser.Tilemaps.Tile[]|Phaser.Tilemaps.Tile[][])} tile - A row (array) or grid (2D array) of Tiles or tile indexes to place.
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} recalculateFaces - `true` if the faces data should be recalculated.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function PutTilesAt(tile:Dynamic, tileX:Float, tileY:Float, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Randomizes the indexes of a rectangular region of tiles (in tile coordinates) within the
     * specified layer. Each tile will receive a new index. If an array of indexes is passed in, then
     * those will be used for randomly assigning new tile indexes. If an array is not provided, the
     * indexes found within the region (excluding -1) will be used for randomly assigning new tile
     * indexes. This method only modifies tile indexes and does not change collision information.
     *
     * @function Phaser.Tilemaps.Components.Randomize
     * @since 3.0.0
     *
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {number[]} indexes - An array of indexes to randomly draw from during randomization.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function Randomize(tileX:Float, tileY:Float, width:Float, height:Float, indexes:Array<Float>, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Removes the tile at the given tile coordinates in the specified layer and updates the layer's
     * collision information.
     *
     * @function Phaser.Tilemaps.Components.RemoveTileAt
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate.
     * @param {number} tileY - The y coordinate.
     * @param {boolean} replaceWithNull - If true, this will replace the tile at the specified location with null instead of a Tile with an index of -1.
     * @param {boolean} recalculateFaces - `true` if the faces data should be recalculated.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile object that was removed.
     */
    static public function RemoveTileAt(tileX:Float, tileY:Float, replaceWithNull:Bool, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * Removes the tile at the given world coordinates in the specified layer and updates the layer's
     * collision information.
     *
     * @function Phaser.Tilemaps.Components.RemoveTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {boolean} replaceWithNull - If true, this will replace the tile at the specified location with null instead of a Tile with an index of -1.
     * @param {boolean} recalculateFaces - `true` if the faces data should be recalculated.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Tilemaps.Tile} The Tile object that was removed.
     */
    static public function RemoveTileAtWorldXY(worldX:Float, worldY:Float, replaceWithNull:Bool, recalculateFaces:Bool, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.tilemaps.Tile;
    /**
     * Draws a debug representation of the layer to the given Graphics. This is helpful when you want to
     * get a quick idea of which of your tiles are colliding and which have interesting faces. The tiles
     * are drawn starting at (0, 0) in the Graphics, allowing you to place the debug representation
     * wherever you want on the screen.
     *
     * @function Phaser.Tilemaps.Components.RenderDebug
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Graphics} graphics - The target Graphics object to draw upon.
     * @param {Phaser.Types.Tilemaps.DebugStyleOptions} styleConfig - An object specifying the colors to use for the debug drawing.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function RenderDebug(graphics:phaser.gameobjects.Graphics, styleConfig:phaser.types.tilemaps.DebugStyleOptions, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Scans the given rectangular area (given in tile coordinates) for tiles with an index matching
     * `findIndex` and updates their index to match `newIndex`. This only modifies the index and does
     * not change collision information.
     *
     * @function Phaser.Tilemaps.Components.ReplaceByIndex
     * @since 3.0.0
     *
     * @param {number} findIndex - The index of the tile to search for.
     * @param {number} newIndex - The index of the tile to replace it with.
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function ReplaceByIndex(findIndex:Float, newIndex:Float, tileX:Float, tileY:Float, width:Float, height:Float, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Returns the tiles in the given layer that are within the cameras viewport. This is used internally.
     *
     * @function Phaser.Tilemaps.Components.RunCull
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {object} bounds - An object containing the `left`, `right`, `top` and `bottom` bounds.
     * @param {number} renderOrder - The rendering order constant.
     * @param {array} outputArray - The array to store the Tile objects within.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    static public function RunCull(layer:phaser.tilemaps.LayerData, bounds:Dynamic, renderOrder:Float, outputArray:Array<Dynamic>):Array<phaser.tilemaps.Tile>;
    /**
     * Sets collision on the given tile or tiles within a layer by index. You can pass in either a
     * single numeric index or an array of indexes: [2, 3, 15, 20]. The `collides` parameter controls if
     * collision will be enabled (true) or disabled (false).
     *
     * @function Phaser.Tilemaps.Components.SetCollision
     * @since 3.0.0
     *
     * @param {(number|array)} indexes - Either a single tile index, or an array of tile indexes.
     * @param {boolean} collides - If true it will enable collision. If false it will clear collision.
     * @param {boolean} recalculateFaces - Whether or not to recalculate the tile faces after the update.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {boolean} [updateLayer=true] - If true, updates the current tiles on the layer. Set to false if no tiles have been placed for significant performance boost.
     */
    static public function SetCollision(indexes:Dynamic, collides:Bool, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData, ?updateLayer:Bool):Void;
    /**
     * Sets collision on a range of tiles in a layer whose index is between the specified `start` and
     * `stop` (inclusive). Calling this with a start value of 10 and a stop value of 14 would set
     * collision for tiles 10, 11, 12, 13 and 14. The `collides` parameter controls if collision will be
     * enabled (true) or disabled (false).
     *
     * @function Phaser.Tilemaps.Components.SetCollisionBetween
     * @since 3.0.0
     *
     * @param {number} start - The first index of the tile to be set for collision.
     * @param {number} stop - The last index of the tile to be set for collision.
     * @param {boolean} collides - If true it will enable collision. If false it will clear collision.
     * @param {boolean} recalculateFaces - Whether or not to recalculate the tile faces after the update.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {boolean} [updateLayer=true] - If true, updates the current tiles on the layer. Set to false if no tiles have been placed for significant performance boost.
     */
    static public function SetCollisionBetween(start:Float, stop:Float, collides:Bool, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData, ?updateLayer:Bool):Void;
    /**
     * Sets collision on all tiles in the given layer, except for tiles that have an index specified in
     * the given array. The `collides` parameter controls if collision will be enabled (true) or
     * disabled (false). Tile indexes not currently in the layer are not affected.
     *
     * @function Phaser.Tilemaps.Components.SetCollisionByExclusion
     * @since 3.0.0
     *
     * @param {number[]} indexes - An array of the tile indexes to not be counted for collision.
     * @param {boolean} collides - If true it will enable collision. If false it will clear collision.
     * @param {boolean} recalculateFaces - Whether or not to recalculate the tile faces after the update.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function SetCollisionByExclusion(indexes:Array<Float>, collides:Bool, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Sets collision on the tiles within a layer by checking tile properties. If a tile has a property
     * that matches the given properties object, its collision flag will be set. The `collides`
     * parameter controls if collision will be enabled (true) or disabled (false). Passing in
     * `{ collides: true }` would update the collision flag on any tiles with a "collides" property that
     * has a value of true. Any tile that doesn't have "collides" set to true will be ignored. You can
     * also use an array of values, e.g. `{ types: ["stone", "lava", "sand" ] }`. If a tile has a
     * "types" property that matches any of those values, its collision flag will be updated.
     *
     * @function Phaser.Tilemaps.Components.SetCollisionByProperty
     * @since 3.0.0
     *
     * @param {object} properties - An object with tile properties and corresponding values that should be checked.
     * @param {boolean} collides - If true it will enable collision. If false it will clear collision.
     * @param {boolean} recalculateFaces - Whether or not to recalculate the tile faces after the update.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function SetCollisionByProperty(properties:Dynamic, collides:Bool, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Sets collision on the tiles within a layer by checking each tile's collision group data
     * (typically defined in Tiled within the tileset collision editor). If any objects are found within
     * a tile's collision group, the tile's colliding information will be set. The `collides` parameter
     * controls if collision will be enabled (true) or disabled (false).
     *
     * @function Phaser.Tilemaps.Components.SetCollisionFromCollisionGroup
     * @since 3.0.0
     *
     * @param {boolean} collides - If true it will enable collision. If false it will clear collision.
     * @param {boolean} recalculateFaces - Whether or not to recalculate the tile faces after the update.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function SetCollisionFromCollisionGroup(collides:Bool, recalculateFaces:Bool, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Internally used method to keep track of the tile indexes that collide within a layer. This
     * updates LayerData.collideIndexes to either contain or not contain the given `tileIndex`.
     *
     * @function Phaser.Tilemaps.Components.SetLayerCollisionIndex
     * @since 3.0.0
     *
     * @param {number} tileIndex - The tile index to set the collision boolean for.
     * @param {boolean} collides - Should the tile index collide or not?
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function SetLayerCollisionIndex(tileIndex:Float, collides:Bool, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Internally used method to set the colliding state of a tile. This does not recalculate
     * interesting faces.
     *
     * @function Phaser.Tilemaps.Components.SetTileCollision
     * @since 3.0.0
     *
     * @param {Phaser.Tilemaps.Tile} tile - The Tile to set the collision on.
     * @param {boolean} [collides=true] - Should the tile index collide or not?
     */
    static public function SetTileCollision(tile:phaser.tilemaps.Tile, ?collides:Bool):Void;
    /**
     * Sets a global collision callback for the given tile index within the layer. This will affect all
     * tiles on this layer that have the same index. If a callback is already set for the tile index it
     * will be replaced. Set the callback to null to remove it. If you want to set a callback for a tile
     * at a specific location on the map then see setTileLocationCallback.
     *
     * @function Phaser.Tilemaps.Components.SetTileIndexCallback
     * @since 3.0.0
     *
     * @param {(number|array)} indexes - Either a single tile index, or an array of tile indexes to have a collision callback set for.
     * @param {function} callback - The callback that will be invoked when the tile is collided with.
     * @param {object} callbackContext - The context under which the callback is called.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function SetTileIndexCallback(indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Sets a collision callback for the given rectangular area (in tile coordinates) within the layer.
     * If a callback is already set for the tile index it will be replaced. Set the callback to null to
     * remove it.
     *
     * @function Phaser.Tilemaps.Components.SetTileLocationCallback
     * @since 3.0.0
     *
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {function} callback - The callback that will be invoked when the tile is collided with.
     * @param {object} callbackContext - The context under which the callback is called.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function SetTileLocationCallback(tileX:Float, tileY:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Shuffles the tiles in a rectangular region (specified in tile coordinates) within the given
     * layer. It will only randomize the tiles in that area, so if they're all the same nothing will
     * appear to have changed! This method only modifies tile indexes and does not change collision
     * information.
     *
     * @function Phaser.Tilemaps.Components.Shuffle
     * @since 3.0.0
     *
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function Shuffle(tileX:Float, tileY:Float, width:Float, height:Float, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Returns the bounds in the given layer that are within the camera's viewport.
     * This is used internally by the cull tiles function.
     *
     * @function Phaser.Tilemaps.Components.StaggeredCullBounds
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to run the cull check against.
     *
     * @return {object} An object containing the `left`, `right`, `top` and `bottom` bounds.
     */
    static public function StaggeredCullBounds(layer:phaser.tilemaps.LayerData, camera:phaser.cameras.scene2d.Camera):Dynamic;
    /**
     * Returns the tiles in the given layer that are within the cameras viewport. This is used internally.
     *
     * @function Phaser.Tilemaps.Components.StaggeredCullTiles
     * @since 3.50.0
     *
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to run the cull check against.
     * @param {array} [outputArray] - An optional array to store the Tile objects within.
     * @param {number} [renderOrder=0] - The rendering order constant.
     *
     * @return {Phaser.Tilemaps.Tile[]} An array of Tile objects.
     */
    static public function StaggeredCullTiles(layer:phaser.tilemaps.LayerData, camera:phaser.cameras.scene2d.Camera, ?outputArray:Array<Dynamic>, ?renderOrder:Float):Array<phaser.tilemaps.Tile>;
    /**
     * Converts from staggered tile XY coordinates (tile units) to world XY coordinates (pixels), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.StaggeredTileToWorldXY
     * @since 3.50.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in world coordinates.
     */
    static public function StaggeredTileToWorldXY(tileX:Float, tileY:Float, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Converts from staggered tile Y coordinates (tile units) to world Y coordinates (pixels), factoring in the
     * layers position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.StaggeredTileToWorldY
     * @since 3.50.0
     *
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number} The Y location in world coordinates.
     */
    static public function StaggeredTileToWorldY(tileY:Float, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
    /**
     * Converts from world XY coordinates (pixels) to staggered tile XY coordinates (tile units), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.StaggeredWorldToTileXY
     * @since 3.50.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in tile units.
     */
    static public function StaggeredWorldToTileXY(worldX:Float, worldY:Float, snapToFloor:Bool, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Converts from world Y coordinates (pixels) to staggered tile Y coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.StaggeredWorldToTileY
     * @since 3.50.0
     *
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number} The Y location in tile units.
     */
    static public function StaggeredWorldToTileY(worldY:Float, snapToFloor:Bool, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
    /**
     * Scans the given rectangular area (given in tile coordinates) for tiles with an index matching
     * `indexA` and swaps then with `indexB`. This only modifies the index and does not change collision
     * information.
     *
     * @function Phaser.Tilemaps.Components.SwapByIndex
     * @since 3.0.0
     *
     * @param {number} tileA - First tile index.
     * @param {number} tileB - Second tile index.
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function SwapByIndex(tileA:Float, tileB:Float, tileX:Float, tileY:Float, width:Float, height:Float, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Converts from tile X coordinates (tile units) to world X coordinates (pixels), factoring in the
     * layer's position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.TileToWorldX
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number}
     */
    static public function TileToWorldX(tileX:Float, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
    /**
     * Converts from tile XY coordinates (tile units) to world XY coordinates (pixels), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.TileToWorldXY
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in world coordinates.
     */
    static public function TileToWorldXY(tileX:Float, tileY:Float, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Converts from tile Y coordinates (tile units) to world Y coordinates (pixels), factoring in the
     * layer's position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.TileToWorldY
     * @since 3.0.0
     *
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number} The Y location in world coordinates.
     */
    static public function TileToWorldY(tileY:Float, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
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
     * @function Phaser.Tilemaps.Components.WeightedRandomize
     * @since 3.0.0
     *
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {object[]} weightedIndexes - An array of objects to randomly draw from during
     * randomization. They should be in the form: { index: 0, weight: 4 } or
     * { index: [0, 1], weight: 4 } if you wish to draw from multiple tile indexes.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     */
    static public function WeightedRandomize(tileX:Float, tileY:Float, width:Float, height:Float, weightedIndexes:Array<Dynamic>, layer:phaser.tilemaps.LayerData):Void;
    /**
     * Converts from world X coordinates (pixels) to tile X coordinates (tile units), factoring in the
     * layer's position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.WorldToTileX
     * @since 3.0.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {?Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number} The X location in tile units.
     */
    static public function WorldToTileX(worldX:Float, snapToFloor:Bool, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
    /**
     * Converts from world XY coordinates (pixels) to tile XY coordinates (tile units), factoring in the
     * layer's position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * @function Phaser.Tilemaps.Components.WorldToTileXY
     * @since 3.0.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Math.Vector2} point - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {Phaser.Math.Vector2} The XY location in tile units.
     */
    static public function WorldToTileXY(worldX:Float, worldY:Float, snapToFloor:Bool, point:phaser.math.Vector2, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):phaser.math.Vector2;
    /**
     * Converts from world Y coordinates (pixels) to tile Y coordinates (tile units), factoring in the
     * layer's position, scale and scroll.
     *
     * @function Phaser.Tilemaps.Components.WorldToTileY
     * @since 3.0.0
     *
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} snapToFloor - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {?Phaser.Cameras.Scene2D.Camera} camera - The Camera to use when calculating the tile index from the world values.
     * @param {Phaser.Tilemaps.LayerData} layer - The Tilemap Layer to act upon.
     *
     * @return {number} The Y location in tile units.
     */
    static public function WorldToTileY(worldY:Float, snapToFloor:Bool, camera:phaser.cameras.scene2d.Camera, layer:phaser.tilemaps.LayerData):Float;
}
