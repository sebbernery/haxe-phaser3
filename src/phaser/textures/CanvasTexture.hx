package phaser.textures;

/**
 * @classdesc
 * A Canvas Texture is a special kind of Texture that is backed by an HTML Canvas Element as its source.
 *
 * You can use the properties of this texture to draw to the canvas element directly, using all of the standard
 * canvas operations available in the browser. Any Game Object can be given this texture and will render with it.
 *
 * Note: When running under WebGL the Canvas Texture needs to re-generate its base WebGLTexture and reupload it to
 * the GPU every time you modify it, otherwise the changes you make to this texture will not be visible. To do this
 * you should call `CanvasTexture.refresh()` once you are finished with your changes to the canvas. Try and keep
 * this to a minimum, especially on large canvas sizes, or you may inadvertently thrash the GPU by constantly uploading
 * texture data to it. This restriction does not apply if using the Canvas Renderer.
 *
 * It starts with only one frame that covers the whole of the canvas. You can add further frames, that specify
 * sections of the canvas using the `add` method.
 *
 * Should you need to resize the canvas use the `setSize` method so that it accurately updates all of the underlying
 * texture data as well. Forgetting to do this (i.e. by changing the canvas size directly from your code) could cause
 * graphical errors.
 *
 * @class CanvasTexture
 * @extends Phaser.Textures.Texture
 * @memberof Phaser.Textures
 * @constructor
 * @since 3.7.0
 *
 * @param {Phaser.Textures.TextureManager} manager - A reference to the Texture Manager this Texture belongs to.
 * @param {string} key - The unique string-based key of this Texture.
 * @param {HTMLCanvasElement} source - The canvas element that is used as the base of this texture.
 * @param {integer} width - The width of the canvas.
 * @param {integer} height - The height of the canvas.
 */
@:native("Phaser.Textures.CanvasTexture")
extern class CanvasTexture extends phaser.textures.Texture {
    public function new(manager:phaser.textures.TextureManager, key:String, source:js.html.CanvasElement, width:Int, height:Int);
    /**
     * The source Canvas Element.
     *
     * @name Phaser.Textures.CanvasTexture#canvas
     * @readonly
     * @type {HTMLCanvasElement}
     * @since 3.7.0
     */
    public var canvas:js.html.CanvasElement;
    /**
     * The 2D Canvas Rendering Context.
     *
     * @name Phaser.Textures.CanvasTexture#context
     * @readonly
     * @type {CanvasRenderingContext2D}
     * @since 3.7.0
     */
    public var context:js.html.CanvasRenderingContext2D;
    /**
     * The width of the Canvas.
     * This property is read-only, if you wish to change it use the `setSize` method.
     *
     * @name Phaser.Textures.CanvasTexture#width
     * @readonly
     * @type {integer}
     * @since 3.7.0
     */
    public var width:Int;
    /**
     * The height of the Canvas.
     * This property is read-only, if you wish to change it use the `setSize` method.
     *
     * @name Phaser.Textures.CanvasTexture#height
     * @readonly
     * @type {integer}
     * @since 3.7.0
     */
    public var height:Int;
    /**
     * The context image data.
     * Use the `update` method to populate this when the canvas changes.
     *
     * @name Phaser.Textures.CanvasTexture#imageData
     * @type {ImageData}
     * @since 3.13.0
     */
    public var imageData:js.html.ImageData;
    /**
     * A Uint8ClampedArray view into the `buffer`.
     * Use the `update` method to populate this when the canvas changes.
     * Note that this is unavailable in some browsers, such as Epic Browser, due to their security restrictions.
     *
     * @name Phaser.Textures.CanvasTexture#data
     * @type {Uint8ClampedArray}
     * @since 3.13.0
     */
    public var data:js.html.Uint8ClampedArray;
    /**
     * An Uint32Array view into the `buffer`.
     *
     * @name Phaser.Textures.CanvasTexture#pixels
     * @type {Uint32Array}
     * @since 3.13.0
     */
    public var pixels:js.html.Uint32Array;
    /**
     * An ArrayBuffer the same size as the context ImageData.
     *
     * @name Phaser.Textures.CanvasTexture#buffer
     * @type {ArrayBuffer}
     * @since 3.13.0
     */
    public var buffer:js.html.ArrayBuffer;
    /**
     * This re-creates the `imageData` from the current context.
     * It then re-builds the ArrayBuffer, the `data` Uint8ClampedArray reference and the `pixels` Int32Array.
     *
     * Warning: This is a very expensive operation, so use it sparingly.
     *
     * @method Phaser.Textures.CanvasTexture#update
     * @since 3.13.0
     *
     * @return {Phaser.Textures.CanvasTexture} This CanvasTexture.
     */
    public function update():phaser.textures.CanvasTexture;
    /**
     * Draws the given Image or Canvas element to this CanvasTexture, then updates the internal
     * ImageData buffer and arrays.
     *
     * @method Phaser.Textures.CanvasTexture#draw
     * @since 3.13.0
     *
     * @param {integer} x - The x coordinate to draw the source at.
     * @param {integer} y - The y coordinate to draw the source at.
     * @param {(HTMLImageElement|HTMLCanvasElement)} source - The element to draw to this canvas.
     *
     * @return {Phaser.Textures.CanvasTexture} This CanvasTexture.
     */
    public function draw(x:Int, y:Int, source:Dynamic):phaser.textures.CanvasTexture;
    /**
     * Draws the given texture frame to this CanvasTexture, then updates the internal
     * ImageData buffer and arrays.
     *
     * @method Phaser.Textures.CanvasTexture#drawFrame
     * @since 3.16.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(string|integer)} [frame] - The string-based name, or integer based index, of the Frame to get from the Texture.
     * @param {integer} [x=0] - The x coordinate to draw the source at.
     * @param {integer} [y=0] - The y coordinate to draw the source at.
     *
     * @return {Phaser.Textures.CanvasTexture} This CanvasTexture.
     */
    public function drawFrame(key:String, ?frame:Dynamic, ?x:Int, ?y:Int):phaser.textures.CanvasTexture;
    /**
     * Sets a pixel in the CanvasTexture to the given color and alpha values.
     *
     * This is an expensive operation to run in large quantities, so use sparingly.
     *
     * @method Phaser.Textures.CanvasTexture#setPixel
     * @since 3.16.0
     *
     * @param {integer} x - The x coordinate of the pixel to get. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} y - The y coordinate of the pixel to get. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} red - The red color value. A number between 0 and 255.
     * @param {integer} green - The green color value. A number between 0 and 255.
     * @param {integer} blue - The blue color value. A number between 0 and 255.
     * @param {integer} [alpha=255] - The alpha value. A number between 0 and 255.
     *
     * @return {this} This CanvasTexture.
     */
    public function setPixel(x:Int, y:Int, red:Int, green:Int, blue:Int, ?alpha:Int):Dynamic;
    /**
     * Puts the ImageData into the context of this CanvasTexture at the given coordinates.
     *
     * @method Phaser.Textures.CanvasTexture#putData
     * @since 3.16.0
     *
     * @param {ImageData} imageData - The ImageData to put at the given location.
     * @param {integer} x - The x coordinate to put the imageData. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} y - The y coordinate to put the imageData. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} [dirtyX=0] - Horizontal position (x coordinate) of the top-left corner from which the image data will be extracted.
     * @param {integer} [dirtyY=0] - Vertical position (x coordinate) of the top-left corner from which the image data will be extracted.
     * @param {integer} [dirtyWidth] - Width of the rectangle to be painted. Defaults to the width of the image data.
     * @param {integer} [dirtyHeight] - Height of the rectangle to be painted. Defaults to the height of the image data.
     *
     * @return {this} This CanvasTexture.
     */
    public function putData(imageData:js.html.ImageData, x:Int, y:Int, ?dirtyX:Int, ?dirtyY:Int, ?dirtyWidth:Int, ?dirtyHeight:Int):Dynamic;
    /**
     * Gets an ImageData region from this CanvasTexture from the position and size specified.
     * You can write this back using `CanvasTexture.putData`, or manipulate it.
     *
     * @method Phaser.Textures.CanvasTexture#getData
     * @since 3.16.0
     *
     * @param {integer} x - The x coordinate of the top-left of the area to get the ImageData from. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} y - The y coordinate of the top-left of the area to get the ImageData from. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} width - The width of the rectangle from which the ImageData will be extracted. Positive values are to the right, and negative to the left.
     * @param {integer} height - The height of the rectangle from which the ImageData will be extracted. Positive values are down, and negative are up.
     *
     * @return {ImageData} The ImageData extracted from this CanvasTexture.
     */
    public function getData(x:Int, y:Int, width:Int, height:Int):js.html.ImageData;
    /**
     * Get the color of a specific pixel from this texture and store it in a Color object.
     *
     * If you have drawn anything to this CanvasTexture since it was created you must call `CanvasTexture.update` to refresh the array buffer,
     * otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
     *
     * @method Phaser.Textures.CanvasTexture#getPixel
     * @since 3.13.0
     *
     * @param {integer} x - The x coordinate of the pixel to get. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} y - The y coordinate of the pixel to get. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {Phaser.Display.Color} [out] - A Color object to store the pixel values in. If not provided a new Color object will be created.
     *
     * @return {Phaser.Display.Color} An object with the red, green, blue and alpha values set in the r, g, b and a properties.
     */
    public function getPixel(x:Int, y:Int, ?out:phaser.display.Color):phaser.display.Color;
    /**
     * Returns an array containing all of the pixels in the given region.
     *
     * If the requested region extends outside the bounds of this CanvasTexture,
     * the region is truncated to fit.
     *
     * If you have drawn anything to this CanvasTexture since it was created you must call `CanvasTexture.update` to refresh the array buffer,
     * otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
     *
     * @method Phaser.Textures.CanvasTexture#getPixels
     * @since 3.16.0
     *
     * @param {integer} [x=0] - The x coordinate of the top-left of the region. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} [y=0] - The y coordinate of the top-left of the region. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} [width] - The width of the region to get. Must be an integer. Defaults to the canvas width if not given.
     * @param {integer} [height] - The height of the region to get. Must be an integer. If not given will be set to the `width`.
     *
     * @return {Phaser.Types.Textures.PixelConfig[]} An array of Pixel objects.
     */
    public function getPixels(?x:Int, ?y:Int, ?width:Int, ?height:Int):Array<phaser.types.textures.PixelConfig>;
    /**
     * Returns the Image Data index for the given pixel in this CanvasTexture.
     *
     * The index can be used to read directly from the `this.data` array.
     *
     * The index points to the red value in the array. The subsequent 3 indexes
     * point to green, blue and alpha respectively.
     *
     * @method Phaser.Textures.CanvasTexture#getIndex
     * @since 3.16.0
     *
     * @param {integer} x - The x coordinate of the pixel to get. Must lay within the dimensions of this CanvasTexture and be an integer.
     * @param {integer} y - The y coordinate of the pixel to get. Must lay within the dimensions of this CanvasTexture and be an integer.
     *
     * @return {integer}
     */
    public function getIndex(x:Int, y:Int):Int;
    /**
     * This should be called manually if you are running under WebGL.
     * It will refresh the WebGLTexture from the Canvas source. Only call this if you know that the
     * canvas has changed, as there is a significant GPU texture allocation cost involved in doing so.
     *
     * @method Phaser.Textures.CanvasTexture#refresh
     * @since 3.7.0
     *
     * @return {Phaser.Textures.CanvasTexture} This CanvasTexture.
     */
    public function refresh():phaser.textures.CanvasTexture;
    /**
     * Gets the Canvas Element.
     *
     * @method Phaser.Textures.CanvasTexture#getCanvas
     * @since 3.7.0
     *
     * @return {HTMLCanvasElement} The Canvas DOM element this texture is using.
     */
    public function getCanvas():js.html.CanvasElement;
    /**
     * Gets the 2D Canvas Rendering Context.
     *
     * @method Phaser.Textures.CanvasTexture#getContext
     * @since 3.7.0
     *
     * @return {CanvasRenderingContext2D} The Canvas Rendering Context this texture is using.
     */
    public function getContext():js.html.CanvasRenderingContext2D;
    /**
     * Clears the given region of this Canvas Texture, resetting it back to transparent.
     * If no region is given, the whole Canvas Texture is cleared.
     *
     * @method Phaser.Textures.CanvasTexture#clear
     * @since 3.7.0
     *
     * @param {integer} [x=0] - The x coordinate of the top-left of the region to clear.
     * @param {integer} [y=0] - The y coordinate of the top-left of the region to clear.
     * @param {integer} [width] - The width of the region.
     * @param {integer} [height] - The height of the region.
     *
     * @return {Phaser.Textures.CanvasTexture} The Canvas Texture.
     */
    public function clear(?x:Int, ?y:Int, ?width:Int, ?height:Int):phaser.textures.CanvasTexture;
    /**
     * Changes the size of this Canvas Texture.
     *
     * @method Phaser.Textures.CanvasTexture#setSize
     * @since 3.7.0
     *
     * @param {integer} width - The new width of the Canvas.
     * @param {integer} [height] - The new height of the Canvas. If not given it will use the width as the height.
     *
     * @return {Phaser.Textures.CanvasTexture} The Canvas Texture.
     */
    public function setSize(width:Int, ?height:Int):phaser.textures.CanvasTexture;
}
