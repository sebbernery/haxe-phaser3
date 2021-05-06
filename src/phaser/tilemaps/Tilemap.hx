package phaser.tilemaps;

/**
 * @classdesc
 * A Tilemap is a container for Tilemap data. This isn't a display object, rather, it holds data
 * about the map and allows you to add tilesets and tilemap layers to it. A map can have one or
 * more tilemap layers, which are the display objects that actually render the tiles.
 *
 * The Tilemap data can be parsed from a Tiled JSON file, a CSV file or a 2D array. Tiled is a free
 * software package specifically for creating tile maps, and is available from:
 * http://www.mapeditor.org
 *
 * As of Phaser 3.50.0 the Tilemap API now supports the following types of map:
 *
 * 1) Orthogonal
 * 2) Isometric
 * 3) Hexagonal
 * 4) Staggered
 *
 * Prior to this release, only orthogonal maps were supported.
 *
 * Another large change in 3.50 was the consolidation of Tilemap Layers. Previously, you created
 * either a Static or Dynamic Tilemap Layer. However, as of 3.50 the features of both have been
 * merged and the API simplified, so now there is just the single `TilemapLayer` class.
 *
 * A Tilemap has handy methods for getting and manipulating the tiles within a layer, allowing
 * you to build or modify the tilemap data at runtime.
 *
 * Note that all Tilemaps use a base tile size to calculate dimensions from, but that a
 * TilemapLayer may have its own unique tile size that overrides this.
 *
 * As of Phaser 3.21.0, if your tilemap includes layer groups (a feature of Tiled 1.2.0+) these
 * will be traversed and the following properties will impact children:
 *
 * - Opacity (blended with parent) and visibility (parent overrides child)
 * - Vertical and horizontal offset
 *
 * The grouping hierarchy is not preserved and all layers will be flattened into a single array.
 *
 * Group layers are parsed during Tilemap construction but are discarded after parsing so dynamic
 * layers will NOT continue to be affected by a parent.
 *
 * To avoid duplicate layer names, a layer that is a child of a group layer will have its parent
 * group name prepended with a '/'.  For example, consider a group called 'ParentGroup' with a
 * child called 'Layer 1'. In the Tilemap object, 'Layer 1' will have the name
 * 'ParentGroup/Layer 1'.
 *
 * @class Tilemap
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Tilemap belongs.
 * @param {Phaser.Tilemaps.MapData} mapData - A MapData instance containing Tilemap data.
 */
@:native("Phaser.Tilemaps.Tilemap")
extern class Tilemap {
    public function new(scene:phaser.Scene, mapData:phaser.tilemaps.MapData);
    /**
     * @name Phaser.Tilemaps.Tilemap#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * The base width of a tile in pixels. Note that individual layers may have a different tile
     * width.
     *
     * @name Phaser.Tilemaps.Tilemap#tileWidth
     * @type {number}
     * @since 3.0.0
     */
    public var tileWidth:Float;
    /**
     * The base height of a tile in pixels. Note that individual layers may have a different
     * tile height.
     *
     * @name Phaser.Tilemaps.Tilemap#tileHeight
     * @type {number}
     * @since 3.0.0
     */
    public var tileHeight:Float;
    /**
     * The width of the map (in tiles).
     *
     * @name Phaser.Tilemaps.Tilemap#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the map (in tiles).
     *
     * @name Phaser.Tilemaps.Tilemap#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The orientation of the map data (as specified in Tiled), usually 'orthogonal'.
     *
     * @name Phaser.Tilemaps.Tilemap#orientation
     * @type {string}
     * @since 3.0.0
     */
    public var orientation:String;
    /**
     * The render (draw) order of the map data (as specified in Tiled), usually 'right-down'.
     *
     * The draw orders are:
     *
     * right-down
     * left-down
     * right-up
     * left-up
     *
     * This can be changed via the `setRenderOrder` method.
     *
     * @name Phaser.Tilemaps.Tilemap#renderOrder
     * @type {string}
     * @since 3.12.0
     */
    public var renderOrder:String;
    /**
     * The format of the map data.
     *
     * @name Phaser.Tilemaps.Tilemap#format
     * @type {number}
     * @since 3.0.0
     */
    public var format:Float;
    /**
     * The version of the map data (as specified in Tiled, usually 1).
     *
     * @name Phaser.Tilemaps.Tilemap#version
     * @type {number}
     * @since 3.0.0
     */
    public var version:Float;
    /**
     * Map specific properties as specified in Tiled.
     *
     * @name Phaser.Tilemaps.Tilemap#properties
     * @type {object}
     * @since 3.0.0
     */
    public var properties:Dynamic;
    /**
     * The width of the map in pixels based on width * tileWidth.
     *
     * @name Phaser.Tilemaps.Tilemap#widthInPixels
     * @type {number}
     * @since 3.0.0
     */
    public var widthInPixels:Float;
    /**
     * The height of the map in pixels based on height * tileHeight.
     *
     * @name Phaser.Tilemaps.Tilemap#heightInPixels
     * @type {number}
     * @since 3.0.0
     */
    public var heightInPixels:Float;
    /**
     * A collection of Images, as parsed from Tiled map data.
     *
     * @name Phaser.Tilemaps.Tilemap#imageCollections
     * @type {Phaser.Tilemaps.ImageCollection[]}
     * @since 3.0.0
     */
    public var imageCollections:Array<phaser.tilemaps.ImageCollection>;
    /**
     * An array of Tiled Image Layers.
     *
     * @name Phaser.Tilemaps.Tilemap#images
     * @type {array}
     * @since 3.0.0
     */
    public var images:Array<Dynamic>;
    /**
     * An array of Tilemap layer data.
     *
     * @name Phaser.Tilemaps.Tilemap#layers
     * @type {Phaser.Tilemaps.LayerData[]}
     * @since 3.0.0
     */
    public var layers:Array<phaser.tilemaps.LayerData>;
    /**
     * An array of Tilesets used in the map.
     *
     * @name Phaser.Tilemaps.Tilemap#tilesets
     * @type {Phaser.Tilemaps.Tileset[]}
     * @since 3.0.0
     */
    public var tilesets:Array<phaser.tilemaps.Tileset>;
    /**
     * An array of ObjectLayer instances parsed from Tiled object layers.
     *
     * @name Phaser.Tilemaps.Tilemap#objects
     * @type {Phaser.Tilemaps.ObjectLayer[]}
     * @since 3.0.0
     */
    public var objects:Array<phaser.tilemaps.ObjectLayer>;
    /**
     * The index of the currently selected LayerData object.
     *
     * @name Phaser.Tilemaps.Tilemap#currentLayerIndex
     * @type {number}
     * @since 3.0.0
     */
    public var currentLayerIndex:Float;
    /**
     * The length of the horizontal sides of the hexagon.
     * Only used for hexagonal orientation Tilemaps.
     *
     * @name Phaser.Tilemaps.Tilemap#hexSideLength
     * @type {number}
     * @since 3.50.0
     */
    public var hexSideLength:Float;
    /**
     * The LayerData object that is currently selected in the map. You can set this property using
     * any type supported by setLayer.
     *
     * @name Phaser.Tilemaps.Tilemap#layer
     * @type {Phaser.Tilemaps.LayerData}
     * @since 3.0.0
     */
    public var layer:phaser.tilemaps.LayerData;
    /**
     * Sets the rendering (draw) order of the tiles in this map.
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
     * Calling this method _after_ creating Tilemap Layers will **not** automatically
     * update them to use the new render order. If you call this method after creating layers, use their
     * own `setRenderOrder` methods to change them as needed.
     *
     * @method Phaser.Tilemaps.Tilemap#setRenderOrder
     * @since 3.12.0
     *
     * @param {(number|string)} renderOrder - The render (draw) order value. Either an integer between 0 and 3, or a string: 'right-down', 'left-down', 'right-up' or 'left-up'.
     *
     * @return {this} This Tilemap object.
     */
    public function setRenderOrder(renderOrder:Dynamic):Dynamic;
    /**
     * Adds an image to the map to be used as a tileset. A single map may use multiple tilesets.
     * Note that the tileset name can be found in the JSON file exported from Tiled, or in the Tiled
     * editor.
     *
     * @method Phaser.Tilemaps.Tilemap#addTilesetImage
     * @since 3.0.0
     *
     * @param {string} tilesetName - The name of the tileset as specified in the map data.
     * @param {string} [key] - The key of the Phaser.Cache image used for this tileset. If
     * `undefined` or `null` it will look for an image with a key matching the tilesetName parameter.
     * @param {number} [tileWidth] - The width of the tile (in pixels) in the Tileset Image. If not
     * given it will default to the map's tileWidth value, or the tileWidth specified in the Tiled
     * JSON file.
     * @param {number} [tileHeight] - The height of the tiles (in pixels) in the Tileset Image. If
     * not given it will default to the map's tileHeight value, or the tileHeight specified in the
     * Tiled JSON file.
     * @param {number} [tileMargin] - The margin around the tiles in the sheet (in pixels). If not
     * specified, it will default to 0 or the value specified in the Tiled JSON file.
     * @param {number} [tileSpacing] - The spacing between each the tile in the sheet (in pixels).
     * If not specified, it will default to 0 or the value specified in the Tiled JSON file.
     * @param {number} [gid=0] - If adding multiple tilesets to a blank map, specify the starting
     * GID this set will use here.
     *
     * @return {?Phaser.Tilemaps.Tileset} Returns the Tileset object that was created or updated, or null if it
     * failed.
     */
    public function addTilesetImage(tilesetName:String, ?key:String, ?tileWidth:Float, ?tileHeight:Float, ?tileMargin:Float, ?tileSpacing:Float, ?gid:Float):phaser.tilemaps.Tileset;
    /**
     * Copies the tiles in the source rectangular area to a new destination (all specified in tile
     * coordinates) within the layer. This copies all tile properties & recalculates collision
     * information in the destination region.
     *
     * If no layer specified, the map's current layer is used. This cannot be applied to StaticTilemapLayers.
     *
     * @method Phaser.Tilemaps.Tilemap#copy
     * @since 3.0.0
     *
     * @param {number} srcTileX - The x coordinate of the area to copy from, in tiles, not pixels.
     * @param {number} srcTileY - The y coordinate of the area to copy from, in tiles, not pixels.
     * @param {number} width - The width of the area to copy, in tiles, not pixels.
     * @param {number} height - The height of the area to copy, in tiles, not pixels.
     * @param {number} destTileX - The x coordinate of the area to copy to, in tiles, not pixels.
     * @param {number} destTileY - The y coordinate of the area to copy to, in tiles, not pixels.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function copy(srcTileX:Float, srcTileY:Float, width:Float, height:Float, destTileX:Float, destTileY:Float, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Creates a new and empty Tilemap Layer. The currently selected layer in the map is set to this new layer.
     *
     * Prior to v3.50.0 this method was called `createBlankDynamicLayer`.
     *
     * @method Phaser.Tilemaps.Tilemap#createBlankLayer
     * @since 3.0.0
     *
     * @param {string} name - The name of this layer. Must be unique within the map.
     * @param {(string|string[]|Phaser.Tilemaps.Tileset|Phaser.Tilemaps.Tileset[])} tileset - The tileset, or an array of tilesets, used to render this layer. Can be a string or a Tileset object.
     * @param {number} [x=0] - The world x position where the top left of this layer will be placed.
     * @param {number} [y=0] - The world y position where the top left of this layer will be placed.
     * @param {number} [width] - The width of the layer in tiles. If not specified, it will default to the map's width.
     * @param {number} [height] - The height of the layer in tiles. If not specified, it will default to the map's height.
     * @param {number} [tileWidth] - The width of the tiles the layer uses for calculations. If not specified, it will default to the map's tileWidth.
     * @param {number} [tileHeight] - The height of the tiles the layer uses for calculations. If not specified, it will default to the map's tileHeight.
     *
     * @return {?Phaser.Tilemaps.TilemapLayer} Returns the new layer that was created, or `null` if it failed.
     */
    public function createBlankLayer(name:String, tileset:Dynamic, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?tileWidth:Float, ?tileHeight:Float):phaser.tilemaps.TilemapLayer;
    /**
     * Creates a new Tilemap Layer that renders the LayerData associated with the given
     * `layerID`. The currently selected layer in the map is set to this new layer.
     *
     * The `layerID` is important. If you've created your map in Tiled then you can get this by
     * looking in Tiled and looking at the layer name. Or you can open the JSON file it exports and
     * look at the layers[].name value. Either way it must match.
     *
     * Prior to v3.50.0 this method was called `createDynamicLayer`.
     *
     * @method Phaser.Tilemaps.Tilemap#createLayer
     * @since 3.0.0
     *
     * @param {(number|string)} layerID - The layer array index value, or if a string is given, the layer name from Tiled.
     * @param {(string|string[]|Phaser.Tilemaps.Tileset|Phaser.Tilemaps.Tileset[])} tileset - The tileset, or an array of tilesets, used to render this layer. Can be a string or a Tileset object.
     * @param {number} [x=0] - The x position to place the layer in the world. If not specified, it will default to the layer offset from Tiled or 0.
     * @param {number} [y=0] - The y position to place the layer in the world. If not specified, it will default to the layer offset from Tiled or 0.
     *
     * @return {?Phaser.Tilemaps.TilemapLayer} Returns the new layer was created, or null if it failed.
     */
    public function createLayer(layerID:Dynamic, tileset:Dynamic, ?x:Float, ?y:Float):phaser.tilemaps.TilemapLayer;
    /**
     * This method will iterate through all of the objects defined in a Tiled Object Layer and then
     * convert the matching results into Phaser Game Objects (by default, Sprites)
     *
     * Objects are matched on one of 3 criteria: The Object ID, the Object GID or the Object Name.
     *
     * Within Tiled, Object IDs are unique per Object. Object GIDs, however, are shared by all objects
     * using the same image. Finally, Object Names are strings and the same name can be used on multiple
     * Objects in Tiled, they do not have to be unique.
     *
     * You set the configuration parameter accordingly, based on which type of criteria you wish
     * to match against. For example, to convert all items on an Object Layer with a `gid` of 26:
     *
     * ```javascript
     * createFromObjects(layerName, {
     *   gid: 26
     * });
     * ```
     *
     * Or, to convert objects with the name 'bonus':
     *
     * ```javascript
     * createFromObjects(layerName, {
     *   name: 'bonus'
     * });
     * ```
     *
     * Or, to convert an object with a specific id:
     *
     * ```javascript
     * createFromObjects(layerName, {
     *   id: 9
     * });
     * ```
     *
     * You should only specify either `id`, `gid`, `name`, or none of them. Do not add more than
     * one criteria to your config. If you do not specify any criteria, then _all_ objects in the
     * Object Layer will be converted.
     *
     * By default this method will convert objects into `Sprite` instances, but you can override
     * this by providing your own class type:
     *
     * ```javascript
     * createFromObjects(layerName, {
     *   gid: 26,
     *   classType: Coin
     * });
     * ```
     *
     * This will convert all Objects with a gid of 26 into your custom `Coin` class. You can pass
     * any class type here, but it _must_ extend `Phaser.GameObjects.GameObject` as its base class.
     * Your class will always be passed 1 parameter: `scene`, which is a reference to either the Scene
     * specified in the config object or, if not given, the Scene to which this Tilemap belongs.
     *
     * All properties from object are copied into the Game Object, so you can use this as an easy
     * way to configure properties from within the map editor. For example giving an object a
     * property of `alpha: 0.5` in Tiled will be reflected in the Game Object that is created.
     *
     * Custom object properties that do not exist as a Game Object property are set in the
     * Game Objects {@link Phaser.GameObjects.GameObject#data data store}.
     *
     * You can use set a `container` property in the config. If given, the class will be added to
     * the Container instance instead of the Scene.
     *
     * Finally, you can provide an array of config objects, to convert multiple types of object in
     * a single call:
     *
     * ```javascript
     * createFromObjects(layerName, [
     *   {
     *     gid: 26,
     *     classType: Coin
     *   },
     *   {
     *     id: 9,
     *     classType: BossMonster
     *   },
     *   {
     *     name: 'lava',
     *     classType: LavaTile
     *   }
     * ]);
     * ```
     *
     * The signature of this method changed significantly in v3.50.0. Prior to this, it did not take config objects.
     *
     * @method Phaser.Tilemaps.Tilemap#createFromObjects
     * @since 3.0.0
     *
     * @param {string} objectLayerName - The name of the Tiled object layer to create the Game Objects from.
     * @param {Phaser.Types.Tilemaps.CreateFromObjectLayerConfig|Phaser.Types.Tilemaps.CreateFromObjectLayerConfig[]} config - A CreateFromObjects configuration object, or an array of them.
     *
     * @return {Phaser.GameObjects.GameObject[]} An array containing the Game Objects that were created. Empty if invalid object layer, or no matching id/gid/name was found.
     */
    public function createFromObjects(objectLayerName:String, config:Dynamic):Array<phaser.gameobjects.GameObject>;
    /**
     * Creates a Sprite for every object matching the given tile indexes in the layer. You can
     * optionally specify if each tile will be replaced with a new tile after the Sprite has been
     * created. This is useful if you want to lay down special tiles in a level that are converted to
     * Sprites, but want to replace the tile itself with a floor tile or similar once converted.
     *
     * @method Phaser.Tilemaps.Tilemap#createFromTiles
     * @since 3.0.0
     *
     * @param {(number|array)} indexes - The tile index, or array of indexes, to create Sprites from.
     * @param {(number|array)} replacements - The tile index, or array of indexes, to change a converted
     * tile to. Set to `null` to leave the tiles unchanged. If an array is given, it is assumed to be a
     * one-to-one mapping with the indexes array.
     * @param {Phaser.Types.GameObjects.Sprite.SpriteConfig} spriteConfig - The config object to pass into the Sprite creator (i.e. scene.make.sprite).
     * @param {Phaser.Scene} [scene] - The Scene to create the Sprites within.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.GameObjects.Sprite[]} Returns an array of Tiles, or null if the layer given was invalid.
     */
    public function createFromTiles(indexes:Dynamic, replacements:Dynamic, spriteConfig:phaser.types.gameobjects.sprite.SpriteConfig, ?scene:phaser.Scene, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Array<phaser.gameobjects.Sprite>;
    /**
     * Sets the tiles in the given rectangular area (in tile coordinates) of the layer with the
     * specified index. Tiles will be set to collide if the given index is a colliding index.
     * Collision information in the region will be recalculated.
     *
     * If no layer specified, the map's current layer is used.
     * This cannot be applied to StaticTilemapLayers.
     *
     * @method Phaser.Tilemaps.Tilemap#fill
     * @since 3.0.0
     *
     * @param {number} index - The tile index to fill the area with.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function fill(index:Float, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * For each object in the given object layer, run the given filter callback function. Any
     * objects that pass the filter test (i.e. where the callback returns true) will returned as a
     * new array. Similar to Array.prototype.Filter in vanilla JS.
     *
     * @method Phaser.Tilemaps.Tilemap#filterObjects
     * @since 3.0.0
     *
     * @param {(Phaser.Tilemaps.ObjectLayer|string)} objectLayer - The name of an object layer (from Tiled) or an ObjectLayer instance.
     * @param {TilemapFilterCallback} callback - The callback. Each object in the given area will be passed to this callback as the first and only parameter.
     * @param {object} [context] - The context under which the callback should be run.
     *
     * @return {?Phaser.Types.Tilemaps.TiledObject[]} An array of object that match the search, or null if the objectLayer given was invalid.
     */
    public function filterObjects(objectLayer:Dynamic, callback:TilemapFilterCallback, ?context:Dynamic):Array<phaser.types.tilemaps.TiledObject>;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * filter callback function. Any tiles that pass the filter test (i.e. where the callback returns
     * true) will returned as a new array. Similar to Array.prototype.Filter in vanilla JS.
     * If no layer specified, the map's current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#filterTiles
     * @since 3.0.0
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
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile[]} Returns an array of Tiles, or null if the layer given was invalid.
     */
    public function filterTiles(callback:Dynamic, ?context:Dynamic, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?layer:Dynamic):Array<phaser.tilemaps.Tile>;
    /**
     * Searches the entire map layer for the first tile matching the given index, then returns that Tile
     * object. If no match is found, it returns null. The search starts from the top-left tile and
     * continues horizontally until it hits the end of the row, then it drops down to the next column.
     * If the reverse boolean is true, it scans starting from the bottom-right corner traveling up to
     * the top-left.
     * If no layer specified, the map's current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#findByIndex
     * @since 3.0.0
     *
     * @param {number} index - The tile index value to search for.
     * @param {number} [skip=0] - The number of times to skip a matching tile before returning.
     * @param {boolean} [reverse=false] - If true it will scan the layer in reverse, starting at the bottom-right. Otherwise it scans from the top-left.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns a Tiles, or null if the layer given was invalid.
     */
    public function findByIndex(index:Float, ?skip:Float, ?reverse:Bool, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * Find the first object in the given object layer that satisfies the provided testing function.
     * I.e. finds the first object for which `callback` returns true. Similar to
     * Array.prototype.find in vanilla JS.
     *
     * @method Phaser.Tilemaps.Tilemap#findObject
     * @since 3.0.0
     *
     * @param {(Phaser.Tilemaps.ObjectLayer|string)} objectLayer - The name of an object layer (from Tiled) or an ObjectLayer instance.
     * @param {TilemapFindCallback} callback - The callback. Each object in the given area will be passed to this callback as the first and only parameter.
     * @param {object} [context] - The context under which the callback should be run.
     *
     * @return {?Phaser.Types.Tilemaps.TiledObject} An object that matches the search, or null if no object found.
     */
    public function findObject(objectLayer:Dynamic, callback:TilemapFindCallback, ?context:Dynamic):phaser.types.tilemaps.TiledObject;
    /**
     * Find the first tile in the given rectangular area (in tile coordinates) of the layer that
     * satisfies the provided testing function. I.e. finds the first tile for which `callback` returns
     * true. Similar to Array.prototype.find in vanilla JS.
     * If no layer specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#findTile
     * @since 3.0.0
     *
     * @param {FindTileCallback} callback - The callback. Each tile in the given area will be passed to this callback as the first and only parameter.
     * @param {object} [context] - The context under which the callback should be run.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The Tile layer to run the search on. If not provided will use the current layer.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns a Tiles, or null if the layer given was invalid.
     */
    public function findTile(callback:FindTileCallback, ?context:Dynamic, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * For each tile in the given rectangular area (in tile coordinates) of the layer, run the given
     * callback. Similar to Array.prototype.forEach in vanilla JS.
     *
     * If no layer specified, the map's current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#forEachTile
     * @since 3.0.0
     *
     * @param {EachTileCallback} callback - The callback. Each tile in the given area will be passed to this callback as the first and only parameter.
     * @param {object} [context] - The context under which the callback should be run.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area to search.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The Tile layer to run the search on. If not provided will use the current layer.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function forEachTile(callback:EachTileCallback, ?context:Dynamic, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Gets the image layer index based on its name.
     *
     * @method Phaser.Tilemaps.Tilemap#getImageIndex
     * @since 3.0.0
     *
     * @param {string} name - The name of the image to get.
     *
     * @return {number} The index of the image in this tilemap, or null if not found.
     */
    public function getImageIndex(name:String):Float;
    /**
     * Return a list of all valid imagelayer names loaded in this Tilemap.
     *
     * @method Phaser.Tilemaps.Tilemap#getImageLayerNames
     * @since 3.21.0
     *
     * @return {string[]} Array of valid imagelayer names / IDs loaded into this Tilemap.
     */
    public function getImageLayerNames():Array<String>;
    /**
     * Internally used. Returns the index of the object in one of the Tilemaps arrays whose name
     * property matches the given `name`.
     *
     * @method Phaser.Tilemaps.Tilemap#getIndex
     * @since 3.0.0
     *
     * @param {array} location - The Tilemap array to search.
     * @param {string} name - The name of the array element to get.
     *
     * @return {number} The index of the element in the array, or null if not found.
     */
    public function getIndex(location:Array<Dynamic>, name:String):Float;
    /**
     * Gets the LayerData from `this.layers` that is associated with the given `layer`, or null if the layer is invalid.
     *
     * @method Phaser.Tilemaps.Tilemap#getLayer
     * @since 3.0.0
     *
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The name of the layer from Tiled, the index of the layer in the map or Tilemap Layer. If not given will default to the maps current layer index.
     *
     * @return {Phaser.Tilemaps.LayerData} The corresponding LayerData within this.layers.
     */
    public function getLayer(?layer:Dynamic):phaser.tilemaps.LayerData;
    /**
     * Gets the ObjectLayer from `this.objects` that has the given `name`, or null if no ObjectLayer is found with that name.
     *
     * @method Phaser.Tilemaps.Tilemap#getObjectLayer
     * @since 3.0.0
     *
     * @param {string} [name] - The name of the object layer from Tiled.
     *
     * @return {?Phaser.Tilemaps.ObjectLayer} The corresponding `ObjectLayer` within `this.objects`, or null.
     */
    public function getObjectLayer(?name:String):phaser.tilemaps.ObjectLayer;
    /**
     * Return a list of all valid objectgroup names loaded in this Tilemap.
     *
     * @method Phaser.Tilemaps.Tilemap#getObjectLayerNames
     * @since 3.21.0
     *
     * @return {string[]} Array of valid objectgroup names / IDs loaded into this Tilemap.
     */
    public function getObjectLayerNames():Array<String>;
    /**
     * Gets the LayerData index of the given `layer` within this.layers, or null if an invalid
     * `layer` is given.
     *
     * @method Phaser.Tilemaps.Tilemap#getLayerIndex
     * @since 3.0.0
     *
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The name of the layer from Tiled, the index of the layer in the map or a Tilemap Layer. If not given will default to the map's current layer index.
     *
     * @return {number} The LayerData index within this.layers.
     */
    public function getLayerIndex(?layer:Dynamic):Float;
    /**
     * Gets the index of the LayerData within this.layers that has the given `name`, or null if an
     * invalid `name` is given.
     *
     * @method Phaser.Tilemaps.Tilemap#getLayerIndexByName
     * @since 3.0.0
     *
     * @param {string} name - The name of the layer to get.
     *
     * @return {number} The LayerData index within this.layers.
     */
    public function getLayerIndexByName(name:String):Float;
    /**
     * Gets a tile at the given tile coordinates from the given layer.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#getTileAt
     * @since 3.0.0
     *
     * @param {number} tileX - X position to get the tile from (given in tile units, not pixels).
     * @param {number} tileY - Y position to get the tile from (given in tile units, not pixels).
     * @param {boolean} [nonNull] - If true getTile won't return null for empty tiles, but a Tile object with an index of -1.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns a Tile, or null if the layer given was invalid.
     */
    public function getTileAt(tileX:Float, tileY:Float, ?nonNull:Bool, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * Gets a tile at the given world coordinates from the given layer.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#getTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - X position to get the tile from (given in pixels)
     * @param {number} worldY - Y position to get the tile from (given in pixels)
     * @param {boolean} [nonNull] - If true, function won't return null for empty tiles, but a Tile object with an index of -1.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns a Tile, or null if the layer given was invalid.
     */
    public function getTileAtWorldXY(worldX:Float, worldY:Float, ?nonNull:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * Return a list of all valid tilelayer names loaded in this Tilemap.
     *
     * @method Phaser.Tilemaps.Tilemap#getTileLayerNames
     * @since 3.21.0
     *
     * @return {string[]} Array of valid tilelayer names / IDs loaded into this Tilemap.
     */
    public function getTileLayerNames():Array<String>;
    /**
     * Gets the tiles in the given rectangular area (in tile coordinates) of the layer.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#getTilesWithin
     * @since 3.0.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile[]} Returns an array of Tiles, or null if the layer given was invalid.
     */
    public function getTilesWithin(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?layer:Dynamic):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles that overlap with the given shape in the given layer. The shape must be a Circle,
     * Line, Rectangle or Triangle. The shape should be in world coordinates.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#getTilesWithinShape
     * @since 3.0.0
     *
     * @param {(Phaser.Geom.Circle|Phaser.Geom.Line|Phaser.Geom.Rectangle|Phaser.Geom.Triangle)} shape - A shape in world (pixel) coordinates
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when factoring in which tiles to return.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile[]} Returns an array of Tiles, or null if the layer given was invalid.
     */
    public function getTilesWithinShape(shape:Dynamic, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the tiles in the given rectangular area (in world coordinates) of the layer.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#getTilesWithinWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The world x coordinate for the top-left of the area.
     * @param {number} worldY - The world y coordinate for the top-left of the area.
     * @param {number} width - The width of the area.
     * @param {number} height - The height of the area.
     * @param {Phaser.Types.Tilemaps.FilteringOptions} [filteringOptions] - Optional filters to apply when getting the tiles.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when factoring in which tiles to return.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile[]} Returns an array of Tiles, or null if the layer given was invalid.
     */
    public function getTilesWithinWorldXY(worldX:Float, worldY:Float, width:Float, height:Float, ?filteringOptions:phaser.types.tilemaps.FilteringOptions, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Array<phaser.tilemaps.Tile>;
    /**
     * Gets the Tileset that has the given `name`, or null if an invalid `name` is given.
     *
     * @method Phaser.Tilemaps.Tilemap#getTileset
     * @since 3.14.0
     *
     * @param {string} name - The name of the Tileset to get.
     *
     * @return {?Phaser.Tilemaps.Tileset} The Tileset, or `null` if no matching named tileset was found.
     */
    public function getTileset(name:String):phaser.tilemaps.Tileset;
    /**
     * Gets the index of the Tileset within this.tilesets that has the given `name`, or null if an
     * invalid `name` is given.
     *
     * @method Phaser.Tilemaps.Tilemap#getTilesetIndex
     * @since 3.0.0
     *
     * @param {string} name - The name of the Tileset to get.
     *
     * @return {number} The Tileset index within this.tilesets.
     */
    public function getTilesetIndex(name:String):Float;
    /**
     * Checks if there is a tile at the given location (in tile coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#hasTileAt
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?boolean} Returns a boolean, or null if the layer given was invalid.
     */
    public function hasTileAt(tileX:Float, tileY:Float, ?layer:Dynamic):Bool;
    /**
     * Checks if there is a tile at the given location (in world coordinates) in the given layer. Returns
     * false if there is no tile or if the tile at that location has an index of -1.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#hasTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when factoring in which tiles to return.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?boolean} Returns a boolean, or null if the layer given was invalid.
     */
    public function hasTileAtWorldXY(worldX:Float, worldY:Float, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Bool;
    /**
     * Puts a tile at the given tile coordinates in the specified layer. You can pass in either an index
     * or a Tile object. If you pass in a Tile, all attributes will be copied over to the specified
     * location. If you pass in an index, only the index at the specified location will be changed.
     * Collision information will be recalculated at the specified location.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#putTileAt
     * @since 3.0.0
     *
     * @param {(number|Phaser.Tilemaps.Tile)} tile - The index of this tile to set or a Tile object.
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} [recalculateFaces] - `true` if the faces data should be recalculated.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns a Tile, or null if the layer given was invalid or the coordinates were out of bounds.
     */
    public function putTileAt(tile:Dynamic, tileX:Float, tileY:Float, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * Puts a tile at the given world coordinates (pixels) in the specified layer. You can pass in either
     * an index or a Tile object. If you pass in a Tile, all attributes will be copied over to the
     * specified location. If you pass in an index, only the index at the specified location will be
     * changed. Collision information will be recalculated at the specified location.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#putTileAtWorldXY
     * @since 3.0.0
     *
     * @param {(number|Phaser.Tilemaps.Tile)} tile - The index of this tile to set or a Tile object.
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {boolean} [recalculateFaces] - `true` if the faces data should be recalculated.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns a Tile, or null if the layer given was invalid.
     */
    public function putTileAtWorldXY(tile:Dynamic, worldX:Float, worldY:Float, ?recalculateFaces:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * Puts an array of tiles or a 2D array of tiles at the given tile coordinates in the specified
     * layer. The array can be composed of either tile indexes or Tile objects. If you pass in a Tile,
     * all attributes will be copied over to the specified location. If you pass in an index, only the
     * index at the specified location will be changed. Collision information will be recalculated
     * within the region tiles were changed.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#putTilesAt
     * @since 3.0.0
     *
     * @param {(number[]|number[][]|Phaser.Tilemaps.Tile[]|Phaser.Tilemaps.Tile[][])} tile - A row (array) or grid (2D array) of Tiles or tile indexes to place.
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} [recalculateFaces] - `true` if the faces data should be recalculated.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function putTilesAt(tile:Dynamic, tileX:Float, tileY:Float, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Randomizes the indexes of a rectangular region of tiles (in tile coordinates) within the
     * specified layer. Each tile will receive a new index. If an array of indexes is passed in, then
     * those will be used for randomly assigning new tile indexes. If an array is not provided, the
     * indexes found within the region (excluding -1) will be used for randomly assigning new tile
     * indexes. This method only modifies tile indexes and does not change collision information.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#randomize
     * @since 3.0.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {number[]} [indexes] - An array of indexes to randomly draw from during randomization.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function randomize(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?indexes:Array<Float>, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Calculates interesting faces at the given tile coordinates of the specified layer. Interesting
     * faces are used internally for optimizing collisions against tiles. This method is mostly used
     * internally to optimize recalculating faces when only one tile has been changed.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#calculateFacesAt
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function calculateFacesAt(tileX:Float, tileY:Float, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Calculates interesting faces within the rectangular area specified (in tile coordinates) of the
     * layer. Interesting faces are used internally for optimizing collisions against tiles. This method
     * is mostly used internally.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#calculateFacesWithin
     * @since 3.0.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function calculateFacesWithin(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Removes the given TilemapLayer from this Tilemap without destroying it.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#removeLayer
     * @since 3.17.0
     *
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to be removed.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function removeLayer(?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Destroys the given TilemapLayer and removes it from this Tilemap.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#destroyLayer
     * @since 3.17.0
     *
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to be destroyed.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Returns this, or null if the layer given was invalid.
     */
    public function destroyLayer(?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Removes all Tilemap Layers from this Tilemap and calls `destroy` on each of them.
     *
     * @method Phaser.Tilemaps.Tilemap#removeAllLayers
     * @since 3.0.0
     *
     * @return {this} This Tilemap object.
     */
    public function removeAllLayers():Dynamic;
    /**
     * Removes the given Tile, or an array of Tiles, from the layer to which they belong,
     * and optionally recalculates the collision information.
     *
     * @method Phaser.Tilemaps.Tilemap#removeTile
     * @since 3.17.0
     *
     * @param {(Phaser.Tilemaps.Tile|Phaser.Tilemaps.Tile[])} tiles - The Tile to remove, or an array of Tiles.
     * @param {number} [replaceIndex=-1] - After removing the Tile, insert a brand new Tile into its location with the given index. Leave as -1 to just remove the tile.
     * @param {boolean} [recalculateFaces=true] - `true` if the faces data should be recalculated.
     *
     * @return {Phaser.Tilemaps.Tile[]} Returns an array of Tiles that were removed.
     */
    public function removeTile(tiles:Dynamic, ?replaceIndex:Float, ?recalculateFaces:Bool):Array<phaser.tilemaps.Tile>;
    /**
     * Removes the tile at the given tile coordinates in the specified layer and updates the layers collision information.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#removeTileAt
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {boolean} [replaceWithNull] - If `true` (the default), this will replace the tile at the specified location with null instead of a Tile with an index of -1.
     * @param {boolean} [recalculateFaces] - If `true` (the default), the faces data will be recalculated.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns the Tile that was removed, or null if the layer given was invalid.
     */
    public function removeTileAt(tileX:Float, tileY:Float, ?replaceWithNull:Bool, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * Removes the tile at the given world coordinates in the specified layer and updates the layers collision information.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#removeTileAtWorldXY
     * @since 3.0.0
     *
     * @param {number} worldX - The x coordinate, in pixels.
     * @param {number} worldY - The y coordinate, in pixels.
     * @param {boolean} [replaceWithNull] - If `true` (the default), this will replace the tile at the specified location with null instead of a Tile with an index of -1.
     * @param {boolean} [recalculateFaces] - If `true` (the default), the faces data will be recalculated.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tile} Returns a Tile, or null if the layer given was invalid.
     */
    public function removeTileAtWorldXY(worldX:Float, worldY:Float, ?replaceWithNull:Bool, ?recalculateFaces:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):phaser.tilemaps.Tile;
    /**
     * Draws a debug representation of the layer to the given Graphics object. This is helpful when you want to
     * get a quick idea of which of your tiles are colliding and which have interesting faces. The tiles
     * are drawn starting at (0, 0) in the Graphics, allowing you to place the debug representation
     * wherever you want on the screen.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * **Note:** This method currently only works with orthogonal tilemap layers.
     *
     * @method Phaser.Tilemaps.Tilemap#renderDebug
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Graphics} graphics - The target Graphics object to draw upon.
     * @param {Phaser.Types.Tilemaps.StyleConfig} [styleConfig] - An object specifying the colors to use for the debug drawing.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function renderDebug(graphics:phaser.gameobjects.Graphics, ?styleConfig:phaser.types.tilemaps.StyleConfig, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Draws a debug representation of all layers within this Tilemap to the given Graphics object.
     *
     * This is helpful when you want to get a quick idea of which of your tiles are colliding and which
     * have interesting faces. The tiles are drawn starting at (0, 0) in the Graphics, allowing you to
     * place the debug representation wherever you want on the screen.
     *
     * @method Phaser.Tilemaps.Tilemap#renderDebugFull
     * @since 3.17.0
     *
     * @param {Phaser.GameObjects.Graphics} graphics - The target Graphics object to draw upon.
     * @param {Phaser.Types.Tilemaps.StyleConfig} [styleConfig] - An object specifying the colors to use for the debug drawing.
     *
     * @return {this} This Tilemap instance.
     */
    public function renderDebugFull(graphics:phaser.gameobjects.Graphics, ?styleConfig:phaser.types.tilemaps.StyleConfig):Dynamic;
    /**
     * Scans the given rectangular area (given in tile coordinates) for tiles with an index matching
     * `findIndex` and updates their index to match `newIndex`. This only modifies the index and does
     * not change collision information.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#replaceByIndex
     * @since 3.0.0
     *
     * @param {number} findIndex - The index of the tile to search for.
     * @param {number} newIndex - The index of the tile to replace it with.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function replaceByIndex(findIndex:Float, newIndex:Float, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Sets collision on the given tile or tiles within a layer by index. You can pass in either a
     * single numeric index or an array of indexes: [2, 3, 15, 20]. The `collides` parameter controls if
     * collision will be enabled (true) or disabled (false).
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#setCollision
     * @since 3.0.0
     *
     * @param {(number|array)} indexes - Either a single tile index, or an array of tile indexes.
     * @param {boolean} [collides] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces] - Whether or not to recalculate the tile faces after the update.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     * @param {boolean} [updateLayer=true] - If true, updates the current tiles on the layer. Set to false if no tiles have been placed for significant performance boost.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function setCollision(indexes:Dynamic, ?collides:Bool, ?recalculateFaces:Bool, ?layer:Dynamic, ?updateLayer:Bool):phaser.tilemaps.Tilemap;
    /**
     * Sets collision on a range of tiles in a layer whose index is between the specified `start` and
     * `stop` (inclusive). Calling this with a start value of 10 and a stop value of 14 would set
     * collision for tiles 10, 11, 12, 13 and 14. The `collides` parameter controls if collision will be
     * enabled (true) or disabled (false).
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#setCollisionBetween
     * @since 3.0.0
     *
     * @param {number} start - The first index of the tile to be set for collision.
     * @param {number} stop - The last index of the tile to be set for collision.
     * @param {boolean} [collides] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces] - Whether or not to recalculate the tile faces after the update.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function setCollisionBetween(start:Float, stop:Float, ?collides:Bool, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Sets collision on the tiles within a layer by checking tile properties. If a tile has a property
     * that matches the given properties object, its collision flag will be set. The `collides`
     * parameter controls if collision will be enabled (true) or disabled (false). Passing in
     * `{ collides: true }` would update the collision flag on any tiles with a "collides" property that
     * has a value of true. Any tile that doesn't have "collides" set to true will be ignored. You can
     * also use an array of values, e.g. `{ types: ["stone", "lava", "sand" ] }`. If a tile has a
     * "types" property that matches any of those values, its collision flag will be updated.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#setCollisionByProperty
     * @since 3.0.0
     *
     * @param {object} properties - An object with tile properties and corresponding values that should be checked.
     * @param {boolean} [collides] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces] - Whether or not to recalculate the tile faces after the update.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function setCollisionByProperty(properties:Dynamic, ?collides:Bool, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Sets collision on all tiles in the given layer, except for tiles that have an index specified in
     * the given array. The `collides` parameter controls if collision will be enabled (true) or
     * disabled (false). Tile indexes not currently in the layer are not affected.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#setCollisionByExclusion
     * @since 3.0.0
     *
     * @param {number[]} indexes - An array of the tile indexes to not be counted for collision.
     * @param {boolean} [collides] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces] - Whether or not to recalculate the tile faces after the update.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function setCollisionByExclusion(indexes:Array<Float>, ?collides:Bool, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Sets collision on the tiles within a layer by checking each tiles collision group data
     * (typically defined in Tiled within the tileset collision editor). If any objects are found within
     * a tiles collision group, the tiles colliding information will be set. The `collides` parameter
     * controls if collision will be enabled (true) or disabled (false).
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#setCollisionFromCollisionGroup
     * @since 3.0.0
     *
     * @param {boolean} [collides] - If true it will enable collision. If false it will clear collision.
     * @param {boolean} [recalculateFaces] - Whether or not to recalculate the tile faces after the update.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function setCollisionFromCollisionGroup(?collides:Bool, ?recalculateFaces:Bool, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Sets a global collision callback for the given tile index within the layer. This will affect all
     * tiles on this layer that have the same index. If a callback is already set for the tile index it
     * will be replaced. Set the callback to null to remove it. If you want to set a callback for a tile
     * at a specific location on the map then see `setTileLocationCallback`.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#setTileIndexCallback
     * @since 3.0.0
     *
     * @param {(number|number[])} indexes - Either a single tile index, or an array of tile indexes to have a collision callback set for. All values should be integers.
     * @param {function} callback - The callback that will be invoked when the tile is collided with.
     * @param {object} callbackContext - The context under which the callback is called.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function setTileIndexCallback(indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Sets a collision callback for the given rectangular area (in tile coordinates) within the layer.
     * If a callback is already set for the tile index it will be replaced. Set the callback to null to
     * remove it.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#setTileLocationCallback
     * @since 3.0.0
     *
     * @param {number} tileX - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} tileY - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} width - How many tiles wide from the `tileX` index the area will be.
     * @param {number} height - How many tiles tall from the `tileY` index the area will be.
     * @param {function} callback - The callback that will be invoked when the tile is collided with.
     * @param {object} [callbackContext] - The context under which the callback is called.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function setTileLocationCallback(tileX:Float, tileY:Float, width:Float, height:Float, callback:Dynamic, ?callbackContext:Dynamic, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Sets the current layer to the LayerData associated with `layer`.
     *
     * @method Phaser.Tilemaps.Tilemap#setLayer
     * @since 3.0.0
     *
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The name of the layer from Tiled, the index of the layer in the map or a TilemapLayer. If not given will default to the maps current layer index.
     *
     * @return {this} This Tilemap object.
     */
    public function setLayer(?layer:Dynamic):Dynamic;
    /**
     * Sets the base tile size for the map. Note: this does not necessarily match the tileWidth and
     * tileHeight for all layers. This also updates the base size on all tiles across all layers.
     *
     * @method Phaser.Tilemaps.Tilemap#setBaseTileSize
     * @since 3.0.0
     *
     * @param {number} tileWidth - The width of the tiles the map uses for calculations.
     * @param {number} tileHeight - The height of the tiles the map uses for calculations.
     *
     * @return {this} This Tilemap object.
     */
    public function setBaseTileSize(tileWidth:Float, tileHeight:Float):Dynamic;
    /**
     * Sets the tile size for a specific `layer`. Note: this does not necessarily match the maps
     * tileWidth and tileHeight for all layers. This will set the tile size for the layer and any
     * tiles the layer has.
     *
     * @method Phaser.Tilemaps.Tilemap#setLayerTileSize
     * @since 3.0.0
     *
     * @param {number} tileWidth - The width of the tiles (in pixels) in the layer.
     * @param {number} tileHeight - The height of the tiles (in pixels) in the layer.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The name of the layer from Tiled, the index of the layer in the map or a TilemapLayer. If not given will default to the maps current layer index.
     *
     * @return {this} This Tilemap object.
     */
    public function setLayerTileSize(tileWidth:Float, tileHeight:Float, ?layer:Dynamic):Dynamic;
    /**
     * Shuffles the tiles in a rectangular region (specified in tile coordinates) within the given
     * layer. It will only randomize the tiles in that area, so if they're all the same nothing will
     * appear to have changed! This method only modifies tile indexes and does not change collision
     * information.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#shuffle
     * @since 3.0.0
     *
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function shuffle(?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Scans the given rectangular area (given in tile coordinates) for tiles with an index matching
     * `indexA` and swaps then with `indexB`. This only modifies the index and does not change collision
     * information.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#swapByIndex
     * @since 3.0.0
     *
     * @param {number} tileA - First tile index.
     * @param {number} tileB - Second tile index.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function swapByIndex(tileA:Float, tileB:Float, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Converts from tile X coordinates (tile units) to world X coordinates (pixels), factoring in the
     * layers position, scale and scroll.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#tileToWorldX
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?number} Returns a number, or null if the layer given was invalid.
     */
    public function tileToWorldX(tileX:Float, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Float;
    /**
     * Converts from tile Y coordinates (tile units) to world Y coordinates (pixels), factoring in the
     * layers position, scale and scroll.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#tileToWorldY
     * @since 3.0.0
     *
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?number} Returns a number, or null if the layer given was invalid.
     */
    public function tileToWorldY(tileY:Float, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Float;
    /**
     * Converts from tile XY coordinates (tile units) to world XY coordinates (pixels), factoring in the
     * layers position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#tileToWorldXY
     * @since 3.0.0
     *
     * @param {number} tileX - The x coordinate, in tiles, not pixels.
     * @param {number} tileY - The y coordinate, in tiles, not pixels.
     * @param {Phaser.Math.Vector2} [vec2] - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Math.Vector2} Returns a Vector2, or null if the layer given was invalid.
     */
    public function tileToWorldXY(tileX:Float, tileY:Float, ?vec2:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):phaser.math.Vector2;
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
     * The probability of any index being picked is (the indexs weight) / (sum of all weights). This
     * method only modifies tile indexes and does not change collision information.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#weightedRandomize
     * @since 3.0.0
     *
     * @param {object[]} weightedIndexes - An array of objects to randomly draw from during randomization. They should be in the form: { index: 0, weight: 4 } or { index: [0, 1], weight: 4 } if you wish to draw from multiple tile indexes.
     * @param {number} [tileX] - The left most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [tileY] - The top most tile index (in tile coordinates) to use as the origin of the area.
     * @param {number} [width] - How many tiles wide from the `tileX` index the area will be.
     * @param {number} [height] - How many tiles tall from the `tileY` index the area will be.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Tilemaps.Tilemap} Return this Tilemap object, or null if the layer given was invalid.
     */
    public function weightedRandomize(weightedIndexes:Array<Dynamic>, ?tileX:Float, ?tileY:Float, ?width:Float, ?height:Float, ?layer:Dynamic):phaser.tilemaps.Tilemap;
    /**
     * Converts from world X coordinates (pixels) to tile X coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#worldToTileX
     * @since 3.0.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {boolean} [snapToFloor] - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?number} Returns a number, or null if the layer given was invalid.
     */
    public function worldToTileX(worldX:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Float;
    /**
     * Converts from world Y coordinates (pixels) to tile Y coordinates (tile units), factoring in the
     * layers position, scale and scroll.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#worldToTileY
     * @since 3.0.0
     *
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} [snapToFloor] - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?number} Returns a number, or null if the layer given was invalid.
     */
    public function worldToTileY(worldY:Float, ?snapToFloor:Bool, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):Float;
    /**
     * Converts from world XY coordinates (pixels) to tile XY coordinates (tile units), factoring in the
     * layers position, scale and scroll. This will return a new Vector2 object or update the given
     * `point` object.
     *
     * If no layer is specified, the maps current layer is used.
     *
     * @method Phaser.Tilemaps.Tilemap#worldToTileXY
     * @since 3.0.0
     *
     * @param {number} worldX - The x coordinate to be converted, in pixels, not tiles.
     * @param {number} worldY - The y coordinate to be converted, in pixels, not tiles.
     * @param {boolean} [snapToFloor] - Whether or not to round the tile coordinate down to the nearest integer.
     * @param {Phaser.Math.Vector2} [vec2] - A Vector2 to store the coordinates in. If not given a new Vector2 is created.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use when calculating the tile index from the world values.
     * @param {(string|number|Phaser.Tilemaps.TilemapLayer)} [layer] - The tile layer to use. If not given the current layer is used.
     *
     * @return {?Phaser.Math.Vector2} Returns a vec2, or null if the layer given was invalid.
     */
    public function worldToTileXY(worldX:Float, worldY:Float, ?snapToFloor:Bool, ?vec2:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera, ?layer:Dynamic):phaser.math.Vector2;
    /**
     * Removes all layer data from this Tilemap and nulls the scene reference. This will destroy any
     * TilemapLayers that have been created.
     *
     * @method Phaser.Tilemaps.Tilemap#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
