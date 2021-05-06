package phaser.tilemaps;

/**
 * @classdesc
 * A Tile is a representation of a single tile within the Tilemap. This is a lightweight data
 * representation, so its position information is stored without factoring in scroll, layer
 * scale or layer position.
 *
 * @class Tile
 * @memberof Phaser.Tilemaps
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.GameObjects.Components.Alpha
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Tilemaps.LayerData} layer - The LayerData object in the Tilemap that this tile belongs to.
 * @param {number} index - The unique index of this tile within the map.
 * @param {number} x - The x coordinate of this tile in tile coordinates.
 * @param {number} y - The y coordinate of this tile in tile coordinates.
 * @param {number} width - Width of the tile in pixels.
 * @param {number} height - Height of the tile in pixels.
 * @param {number} baseWidth - The base width a tile in the map (in pixels). Tiled maps support
 * multiple tileset sizes within one map, but they are still placed at intervals of the base
 * tile width.
 * @param {number} baseHeight - The base height of the tile in pixels (in pixels). Tiled maps
 * support multiple tileset sizes within one map, but they are still placed at intervals of the
 * base tile height.
 */
@:native("Phaser.Tilemaps.Tile")
extern class Tile extends phaser.gameobjects.components.Alpha {
    public function new(layer:phaser.tilemaps.LayerData, index:Float, x:Float, y:Float, width:Float, height:Float, baseWidth:Float, baseHeight:Float);
    /**
     * The LayerData in the Tilemap data that this tile belongs to.
     *
     * @name Phaser.Tilemaps.Tile#layer
     * @type {Phaser.Tilemaps.LayerData}
     * @since 3.0.0
     */
    public var layer:phaser.tilemaps.LayerData;
    /**
     * The index of this tile within the map data corresponding to the tileset, or -1 if this
     * represents a blank tile.
     *
     * @name Phaser.Tilemaps.Tile#index
     * @type {number}
     * @since 3.0.0
     */
    public var index:Float;
    /**
     * The x map coordinate of this tile in tile units.
     *
     * @name Phaser.Tilemaps.Tile#x
     * @type {number}
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y map coordinate of this tile in tile units.
     *
     * @name Phaser.Tilemaps.Tile#y
     * @type {number}
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The width of the tile in pixels.
     *
     * @name Phaser.Tilemaps.Tile#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The height of the tile in pixels.
     *
     * @name Phaser.Tilemaps.Tile#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The right of the tile in pixels.
     *
     * Set in the `updatePixelXY` method.
     *
     * @name Phaser.Tilemaps.Tile#right
     * @type {number}
     * @since 3.50.0
     */
    public var right:Float;
    /**
     * The bottom of the tile in pixels.
     *
     * Set in the `updatePixelXY` method.
     *
     * @name Phaser.Tilemaps.Tile#bottom
     * @type {number}
     * @since 3.50.0
     */
    public var bottom:Float;
    /**
     * The maps base width of a tile in pixels. Tiled maps support multiple tileset sizes
     * within one map, but they are still placed at intervals of the base tile size.
     *
     * @name Phaser.Tilemaps.Tile#baseWidth
     * @type {number}
     * @since 3.0.0
     */
    public var baseWidth:Float;
    /**
     * The maps base height of a tile in pixels. Tiled maps support multiple tileset sizes
     * within one map, but they are still placed at intervals of the base tile size.
     *
     * @name Phaser.Tilemaps.Tile#baseHeight
     * @type {number}
     * @since 3.0.0
     */
    public var baseHeight:Float;
    /**
     * The x coordinate of the top left of this tile in pixels. This is relative to the top left
     * of the layer this tile is being rendered within. This property does NOT factor in camera
     * scroll, layer scale or layer position.
     *
     * @name Phaser.Tilemaps.Tile#pixelX
     * @type {number}
     * @since 3.0.0
     */
    public var pixelX:Float;
    /**
     * The y coordinate of the top left of this tile in pixels. This is relative to the top left
     * of the layer this tile is being rendered within. This property does NOT factor in camera
     * scroll, layer scale or layer position.
     *
     * @name Phaser.Tilemaps.Tile#pixelY
     * @type {number}
     * @since 3.0.0
     */
    public var pixelY:Float;
    /**
     * Tile specific properties. These usually come from Tiled.
     *
     * @name Phaser.Tilemaps.Tile#properties
     * @type {any}
     * @since 3.0.0
     */
    public var properties:Dynamic;
    /**
     * The rotation angle of this tile.
     *
     * @name Phaser.Tilemaps.Tile#rotation
     * @type {number}
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Whether the tile should collide with any object on the left side.
     *
     * This property is used by Arcade Physics only, however, you can also use it
     * in your own checks.
     *
     * @name Phaser.Tilemaps.Tile#collideLeft
     * @type {boolean}
     * @since 3.0.0
     */
    public var collideLeft:Bool;
    /**
     * Whether the tile should collide with any object on the right side.
     *
     * This property is used by Arcade Physics only, however, you can also use it
     * in your own checks.
     *
     * @name Phaser.Tilemaps.Tile#collideRight
     * @type {boolean}
     * @since 3.0.0
     */
    public var collideRight:Bool;
    /**
     * Whether the tile should collide with any object on the top side.
     *
     * This property is used by Arcade Physics only, however, you can also use it
     * in your own checks.
     *
     * @name Phaser.Tilemaps.Tile#collideUp
     * @type {boolean}
     * @since 3.0.0
     */
    public var collideUp:Bool;
    /**
     * Whether the tile should collide with any object on the bottom side.
     *
     * This property is used by Arcade Physics only, however, you can also use it
     * in your own checks.
     *
     * @name Phaser.Tilemaps.Tile#collideDown
     * @type {boolean}
     * @since 3.0.0
     */
    public var collideDown:Bool;
    /**
     * Whether the tiles left edge is interesting for collisions.
     *
     * @name Phaser.Tilemaps.Tile#faceLeft
     * @type {boolean}
     * @since 3.0.0
     */
    public var faceLeft:Bool;
    /**
     * Whether the tiles right edge is interesting for collisions.
     *
     * @name Phaser.Tilemaps.Tile#faceRight
     * @type {boolean}
     * @since 3.0.0
     */
    public var faceRight:Bool;
    /**
     * Whether the tiles top edge is interesting for collisions.
     *
     * @name Phaser.Tilemaps.Tile#faceTop
     * @type {boolean}
     * @since 3.0.0
     */
    public var faceTop:Bool;
    /**
     * Whether the tiles bottom edge is interesting for collisions.
     *
     * @name Phaser.Tilemaps.Tile#faceBottom
     * @type {boolean}
     * @since 3.0.0
     */
    public var faceBottom:Bool;
    /**
     * Tile collision callback.
     *
     * @name Phaser.Tilemaps.Tile#collisionCallback
     * @type {function}
     * @since 3.0.0
     */
    public var collisionCallback:Dynamic;
    /**
     * The context in which the collision callback will be called.
     *
     * @name Phaser.Tilemaps.Tile#collisionCallbackContext
     * @type {object}
     * @since 3.0.0
     */
    public var collisionCallbackContext:Dynamic;
    /**
     * The tint to apply to this tile. Note: tint is currently a single color value instead of
     * the 4 corner tint component on other GameObjects.
     *
     * @name Phaser.Tilemaps.Tile#tint
     * @type {number}
     * @default
     * @since 3.0.0
     */
    public var tint:Float;
    /**
     * An empty object where physics-engine specific information (e.g. bodies) may be stored.
     *
     * @name Phaser.Tilemaps.Tile#physics
     * @type {object}
     * @since 3.0.0
     */
    public var physics:Dynamic;
    /**
     * True if this tile can collide on any of its faces or has a collision callback set.
     *
     * @name Phaser.Tilemaps.Tile#canCollide
     * @type {boolean}
     * @readonly
     * @since 3.0.0
     */
    public var canCollide:Bool;
    /**
     * True if this tile can collide on any of its faces.
     *
     * @name Phaser.Tilemaps.Tile#collides
     * @type {boolean}
     * @readonly
     * @since 3.0.0
     */
    public var collides:Bool;
    /**
     * True if this tile has any interesting faces.
     *
     * @name Phaser.Tilemaps.Tile#hasInterestingFace
     * @type {boolean}
     * @readonly
     * @since 3.0.0
     */
    public var hasInterestingFace:Bool;
    /**
     * The tileset that contains this Tile. This is null if accessed from a LayerData instance
     * before the tile is placed in a TilemapLayer, or if the tile has an index that doesn't correspond
     * to any of the maps tilesets.
     *
     * @name Phaser.Tilemaps.Tile#tileset
     * @type {?Phaser.Tilemaps.Tileset}
     * @readonly
     * @since 3.0.0
     */
    public var tileset:phaser.tilemaps.Tileset;
    /**
     * The tilemap layer that contains this Tile. This will only return null if accessed from a
     * LayerData instance before the tile is placed within a TilemapLayer.
     *
     * @name Phaser.Tilemaps.Tile#tilemapLayer
     * @type {?Phaser.Tilemaps.TilemapLayer}
     * @readonly
     * @since 3.0.0
     */
    public var tilemapLayer:phaser.tilemaps.TilemapLayer;
    /**
     * The tilemap that contains this Tile. This will only return null if accessed from a LayerData
     * instance before the tile is placed within a TilemapLayer.
     *
     * @name Phaser.Tilemaps.Tile#tilemap
     * @type {?Phaser.Tilemaps.Tilemap}
     * @readonly
     * @since 3.0.0
     */
    public var tilemap:phaser.tilemaps.Tilemap;
    /**
     * Check if the given x and y world coordinates are within this Tile. This does not factor in
     * camera scroll, layer scale or layer position.
     *
     * @method Phaser.Tilemaps.Tile#containsPoint
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to test.
     * @param {number} y - The y coordinate to test.
     *
     * @return {boolean} True if the coordinates are within this Tile, otherwise false.
     */
    public function containsPoint(x:Float, y:Float):Bool;
    /**
     * Copies the tile data & properties from the given tile to this tile. This copies everything
     * except for position and interesting faces.
     *
     * @method Phaser.Tilemaps.Tile#copy
     * @since 3.0.0
     *
     * @param {Phaser.Tilemaps.Tile} tile - The tile to copy from.
     *
     * @return {this} This Tile object instance.
     */
    public function copy(tile:phaser.tilemaps.Tile):Dynamic;
    /**
     * The collision group for this Tile, defined within the Tileset. This returns a reference to
     * the collision group stored within the Tileset, so any modification of the returned object
     * will impact all tiles that have the same index as this tile.
     *
     * @method Phaser.Tilemaps.Tile#getCollisionGroup
     * @since 3.0.0
     *
     * @return {?object} The collision group for this Tile, as defined in the Tileset, or `null` if no group was defined.
     */
    public function getCollisionGroup():Dynamic;
    /**
     * The tile data for this Tile, defined within the Tileset. This typically contains Tiled
     * collision data, tile animations and terrain information. This returns a reference to the tile
     * data stored within the Tileset, so any modification of the returned object will impact all
     * tiles that have the same index as this tile.
     *
     * @method Phaser.Tilemaps.Tile#getTileData
     * @since 3.0.0
     *
     * @return {?object} The tile data for this Tile, as defined in the Tileset, or `null` if no data was defined.
     */
    public function getTileData():Dynamic;
    /**
     * Gets the world X position of the left side of the tile, factoring in the layers position,
     * scale and scroll.
     *
     * @method Phaser.Tilemaps.Tile#getLeft
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use to perform the check.
     *
     * @return {number} The left (x) value of this tile.
     */
    public function getLeft(?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Gets the world X position of the right side of the tile, factoring in the layer's position,
     * scale and scroll.
     *
     * @method Phaser.Tilemaps.Tile#getRight
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use to perform the check.
     *
     * @return {number} The right (x) value of this tile.
     */
    public function getRight(?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Gets the world Y position of the top side of the tile, factoring in the layer's position,
     * scale and scroll.
     *
     * @method Phaser.Tilemaps.Tile#getTop
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use to perform the check.
     *
     * @return {number} The top (y) value of this tile.
     */
    public function getTop(?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Gets the world Y position of the bottom side of the tile, factoring in the layer's position,
     * scale and scroll.
     
     * @method Phaser.Tilemaps.Tile#getBottom
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use to perform the check.
     *
     * @return {number} The bottom (y) value of this tile.
     */
    public function getBottom(?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Gets the world rectangle bounding box for the tile, factoring in the layers position,
     * scale and scroll.
     *
     * @method Phaser.Tilemaps.Tile#getBounds
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use to perform the check.
     * @param {Phaser.Geom.Rectangle} [output] - Optional Rectangle object to store the results in.
     *
     * @return {(Phaser.Geom.Rectangle|object)} The bounds of this Tile.
     */
    public function getBounds(?camera:phaser.cameras.scene2d.Camera, ?output:phaser.geom.Rectangle):phaser.geom.Rectangle;
    /**
     * Gets the world X position of the center of the tile, factoring in the layer's position,
     * scale and scroll.
     *
     * @method Phaser.Tilemaps.Tile#getCenterX
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use to perform the check.
     *
     * @return {number} The center x position of this Tile.
     */
    public function getCenterX(?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Gets the world Y position of the center of the tile, factoring in the layer's position,
     * scale and scroll.
     *
     * @method Phaser.Tilemaps.Tile#getCenterY
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera to use to perform the check.
     *
     * @return {number} The center y position of this Tile.
     */
    public function getCenterY(?camera:phaser.cameras.scene2d.Camera):Float;
    /**
     * Check for intersection with this tile. This does not factor in camera scroll, layer scale or
     * layer position.
     *
     * @method Phaser.Tilemaps.Tile#intersects
     * @since 3.0.0
     *
     * @param {number} x - The x axis in pixels.
     * @param {number} y - The y axis in pixels.
     * @param {number} right - The right point.
     * @param {number} bottom - The bottom point.
     *
     * @return {boolean} `true` if the Tile intersects with the given dimensions, otherwise `false`.
     */
    public function intersects(x:Float, y:Float, right:Float, bottom:Float):Bool;
    /**
     * Checks if the tile is interesting.
     *
     * @method Phaser.Tilemaps.Tile#isInteresting
     * @since 3.0.0
     *
     * @param {boolean} collides - If true, will consider the tile interesting if it collides on any side.
     * @param {boolean} faces - If true, will consider the tile interesting if it has an interesting face.
     *
     * @return {boolean} True if the Tile is interesting, otherwise false.
     */
    public function isInteresting(collides:Bool, faces:Bool):Bool;
    /**
     * Reset collision status flags.
     *
     * @method Phaser.Tilemaps.Tile#resetCollision
     * @since 3.0.0
     *
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate interesting faces for this tile and its neighbors.
     *
     * @return {this} This Tile object instance.
     */
    public function resetCollision(?recalculateFaces:Bool):Dynamic;
    /**
     * Reset faces.
     *
     * @method Phaser.Tilemaps.Tile#resetFaces
     * @since 3.0.0
     *
     * @return {this} This Tile object instance.
     */
    public function resetFaces():Dynamic;
    /**
     * Sets the collision flags for each side of this tile and updates the interesting faces list.
     *
     * @method Phaser.Tilemaps.Tile#setCollision
     * @since 3.0.0
     *
     * @param {boolean} left - Indicating collide with any object on the left.
     * @param {boolean} [right] - Indicating collide with any object on the right.
     * @param {boolean} [up] - Indicating collide with any object on the top.
     * @param {boolean} [down] - Indicating collide with any object on the bottom.
     * @param {boolean} [recalculateFaces=true] - Whether or not to recalculate interesting faces for this tile and its neighbors.
     *
     * @return {this} This Tile object instance.
     */
    public function setCollision(left:Bool, ?right:Bool, ?up:Bool, ?down:Bool, ?recalculateFaces:Bool):Dynamic;
    /**
     * Set a callback to be called when this tile is hit by an object. The callback must true for
     * collision processing to take place.
     *
     * @method Phaser.Tilemaps.Tile#setCollisionCallback
     * @since 3.0.0
     *
     * @param {function} callback - Callback function.
     * @param {object} context - Callback will be called within this context.
     *
     * @return {this} This Tile object instance.
     */
    public function setCollisionCallback(callback:Dynamic, context:Dynamic):Dynamic;
    /**
     * Sets the size of the tile and updates its pixelX and pixelY.
     *
     * @method Phaser.Tilemaps.Tile#setSize
     * @since 3.0.0
     *
     * @param {number} tileWidth - The width of the tile in pixels.
     * @param {number} tileHeight - The height of the tile in pixels.
     * @param {number} baseWidth - The base width a tile in the map (in pixels).
     * @param {number} baseHeight - The base height of the tile in pixels (in pixels).
     *
     * @return {this} This Tile object instance.
     */
    public function setSize(tileWidth:Float, tileHeight:Float, baseWidth:Float, baseHeight:Float):Dynamic;
    /**
     * Used internally. Updates the tiles world XY position based on the current tile size.
     *
     * @method Phaser.Tilemaps.Tile#updatePixelXY
     * @since 3.0.0
     *
     * @return {this} This Tile object instance.
     */
    public function updatePixelXY():Dynamic;
    /**
     * Clean up memory.
     *
     * @method Phaser.Tilemaps.Tile#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
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
