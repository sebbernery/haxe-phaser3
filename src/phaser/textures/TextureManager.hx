package phaser.textures;

/**
 * @classdesc
 * Textures are managed by the global TextureManager. This is a singleton class that is
 * responsible for creating and delivering Textures and their corresponding Frames to Game Objects.
 *
 * Sprites and other Game Objects get the texture data they need from the TextureManager.
 *
 * Access it via `scene.textures`.
 *
 * @class TextureManager
 * @extends Phaser.Events.EventEmitter
 * @memberof Phaser.Textures
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - The Phaser.Game instance this Texture Manager belongs to.
 */
@:native("Phaser.Textures.TextureManager")
extern class TextureManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    /**
     * The Game that this TextureManager belongs to.
     *
     * @name Phaser.Textures.TextureManager#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * The name of this manager.
     *
     * @name Phaser.Textures.TextureManager#name
     * @type {string}
     * @since 3.0.0
     */
    public var name:String;
    /**
     * An object that has all of textures that Texture Manager creates.
     * Textures are assigned to keys so we can access to any texture that this object has directly by key value without iteration.
     *
     * @name Phaser.Textures.TextureManager#list
     * @type {object}
     * @default {}
     * @since 3.0.0
     */
    public var list:Dynamic;
    /**
     * Checks the given texture key and throws a console.warn if the key is already in use, then returns false.
     * If you wish to avoid the console.warn then use `TextureManager.exists` instead.
     *
     * @method Phaser.Textures.TextureManager#checkKey
     * @since 3.7.0
     *
     * @param {string} key - The texture key to check.
     *
     * @return {boolean} `true` if it's safe to use the texture key, otherwise `false`.
     */
    public function checkKey(key:String):Bool;
    /**
     * Removes a Texture from the Texture Manager and destroys it. This will immediately
     * clear all references to it from the Texture Manager, and if it has one, destroy its
     * WebGLTexture. This will emit a `removetexture` event.
     *
     * Note: If you have any Game Objects still using this texture they will start throwing
     * errors the next time they try to render. Make sure that removing the texture is the final
     * step when clearing down to avoid this.
     *
     * @method Phaser.Textures.TextureManager#remove
     * @fires Phaser.Textures.Events#REMOVE
     * @since 3.7.0
     *
     * @param {(string|Phaser.Textures.Texture)} key - The key of the Texture to remove, or a reference to it.
     *
     * @return {Phaser.Textures.TextureManager} The Texture Manager.
     */
    public function remove(key:Dynamic):phaser.textures.TextureManager;
    /**
     * Adds a new Texture to the Texture Manager created from the given Base64 encoded data.
     *
     * @method Phaser.Textures.TextureManager#addBase64
     * @fires Phaser.Textures.Events#ADD
     * @fires Phaser.Textures.Events#ERROR
     * @fires Phaser.Textures.Events#LOAD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {*} data - The Base64 encoded data.
     *
     * @return {this} This Texture Manager instance.
     */
    public function addBase64(key:String, data:Dynamic):Dynamic;
    /**
     * Gets an existing texture frame and converts it into a base64 encoded image and returns the base64 data.
     *
     * You can also provide the image type and encoder options.
     *
     * @method Phaser.Textures.TextureManager#getBase64
     * @since 3.12.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(string|integer)} [frame] - The string-based name, or integer based index, of the Frame to get from the Texture.
     * @param {string} [type='image/png'] - [description]
     * @param {number} [encoderOptions=0.92] - [description]
     *
     * @return {string} The base64 encoded data, or an empty string if the texture frame could not be found.
     */
    public function getBase64(key:String, ?frame:Dynamic, ?type:String, ?encoderOptions:Float):String;
    /**
     * Adds a new Texture to the Texture Manager created from the given Image element.
     *
     * @method Phaser.Textures.TextureManager#addImage
     * @fires Phaser.Textures.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLImageElement} source - The source Image element.
     * @param {HTMLImageElement|HTMLCanvasElement} [dataSource] - An optional data Image element.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addImage(key:String, source:js.html.ImageElement, ?dataSource:Dynamic):phaser.textures.Texture;
    /**
     * Adds a Render Texture to the Texture Manager using the given key.
     * This allows you to then use the Render Texture as a normal texture for texture based Game Objects like Sprites.
     *
     * @method Phaser.Textures.TextureManager#addRenderTexture
     * @fires Phaser.Textures.Events#ADD
     * @since 3.12.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {Phaser.GameObjects.RenderTexture} renderTexture - The source Render Texture.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addRenderTexture(key:String, renderTexture:phaser.gameobjects.RenderTexture):phaser.textures.Texture;
    /**
     * Creates a new Texture using the given config values.
     * Generated textures consist of a Canvas element to which the texture data is drawn.
     * See the Phaser.Create function for the more direct way to create textures.
     *
     * @method Phaser.Textures.TextureManager#generate
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {object} config - The configuration object needed to generate the texture.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function generate(key:String, config:Dynamic):phaser.textures.Texture;
    /**
     * Creates a new Texture using a blank Canvas element of the size given.
     *
     * Canvas elements are automatically pooled and calling this method will
     * extract a free canvas from the CanvasPool, or create one if none are available.
     *
     * @method Phaser.Textures.TextureManager#createCanvas
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {integer} [width=256] - The width of the Canvas element.
     * @param {integer} [height=256] - The height of the Canvas element.
     *
     * @return {?Phaser.Textures.CanvasTexture} The Canvas Texture that was created, or `null` if the key is already in use.
     */
    public function createCanvas(key:String, ?width:Int, ?height:Int):phaser.textures.CanvasTexture;
    /**
     * Creates a new Canvas Texture object from an existing Canvas element
     * and adds it to this Texture Manager, unless `skipCache` is true.
     *
     * @method Phaser.Textures.TextureManager#addCanvas
     * @fires Phaser.Textures.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLCanvasElement} source - The Canvas element to form the base of the new Texture.
     * @param {boolean} [skipCache=false] - Skip adding this Texture into the Cache?
     *
     * @return {?Phaser.Textures.CanvasTexture} The Canvas Texture that was created, or `null` if the key is already in use.
     */
    public function addCanvas(key:String, source:js.html.CanvasElement, ?skipCache:Bool):phaser.textures.CanvasTexture;
    /**
     * Adds a new Texture Atlas to this Texture Manager.
     * It can accept either JSON Array or JSON Hash formats, as exported by Texture Packer and similar software.
     *
     * @method Phaser.Textures.TextureManager#addAtlas
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLImageElement} source - The source Image element.
     * @param {object} data - The Texture Atlas data.
     * @param {HTMLImageElement|HTMLCanvasElement|HTMLImageElement[]|HTMLCanvasElement[]} [dataSource] - An optional data Image element.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addAtlas(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:Dynamic):phaser.textures.Texture;
    /**
     * Adds a Texture Atlas to this Texture Manager.
     * The frame data of the atlas must be stored in an Array within the JSON.
     * This is known as a JSON Array in software such as Texture Packer.
     *
     * @method Phaser.Textures.TextureManager#addAtlasJSONArray
     * @fires Phaser.Textures.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(HTMLImageElement|HTMLImageElement[])} source - The source Image element/s.
     * @param {(object|object[])} data - The Texture Atlas data/s.
     * @param {HTMLImageElement|HTMLCanvasElement|HTMLImageElement[]|HTMLCanvasElement[]} [dataSource] - An optional data Image element.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addAtlasJSONArray(key:String, source:Dynamic, data:Dynamic, ?dataSource:Dynamic):phaser.textures.Texture;
    /**
     * Adds a Texture Atlas to this Texture Manager.
     * The frame data of the atlas must be stored in an Object within the JSON.
     * This is known as a JSON Hash in software such as Texture Packer.
     *
     * @method Phaser.Textures.TextureManager#addAtlasJSONHash
     * @fires Phaser.Textures.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLImageElement} source - The source Image element.
     * @param {object} data - The Texture Atlas data.
     * @param {HTMLImageElement|HTMLCanvasElement|HTMLImageElement[]|HTMLCanvasElement[]} [dataSource] - An optional data Image element.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addAtlasJSONHash(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:Dynamic):phaser.textures.Texture;
    /**
     * Adds a Texture Atlas to this Texture Manager, where the atlas data is given
     * in the XML format.
     *
     * @method Phaser.Textures.TextureManager#addAtlasXML
     * @fires Phaser.Textures.Events#ADD
     * @since 3.7.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLImageElement} source - The source Image element.
     * @param {object} data - The Texture Atlas XML data.
     * @param {HTMLImageElement|HTMLCanvasElement|HTMLImageElement[]|HTMLCanvasElement[]} [dataSource] - An optional data Image element.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addAtlasXML(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:Dynamic):phaser.textures.Texture;
    /**
     * Adds a Unity Texture Atlas to this Texture Manager.
     * The data must be in the form of a Unity YAML file.
     *
     * @method Phaser.Textures.TextureManager#addUnityAtlas
     * @fires Phaser.Textures.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLImageElement} source - The source Image element.
     * @param {object} data - The Texture Atlas data.
     * @param {HTMLImageElement|HTMLCanvasElement|HTMLImageElement[]|HTMLCanvasElement[]} [dataSource] - An optional data Image element.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addUnityAtlas(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:Dynamic):phaser.textures.Texture;
    /**
     * Adds a Sprite Sheet to this Texture Manager.
     *
     * In Phaser terminology a Sprite Sheet is a texture containing different frames, but each frame is the exact
     * same size and cannot be trimmed or rotated.
     *
     * @method Phaser.Textures.TextureManager#addSpriteSheet
     * @fires Phaser.Textures.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLImageElement} source - The source Image element.
     * @param {SpriteSheetConfig} config - The configuration object for this Sprite Sheet.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addSpriteSheet(key:String, source:js.html.ImageElement, config:SpriteSheetConfig):phaser.textures.Texture;
    /**
     * Adds a Sprite Sheet to this Texture Manager, where the Sprite Sheet exists as a Frame within a Texture Atlas.
     *
     * In Phaser terminology a Sprite Sheet is a texture containing different frames, but each frame is the exact
     * same size and cannot be trimmed or rotated.
     *
     * @method Phaser.Textures.TextureManager#addSpriteSheetFromAtlas
     * @fires Phaser.Textures.Events#ADD
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {SpriteSheetFromAtlasConfig} config - The configuration object for this Sprite Sheet.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function addSpriteSheetFromAtlas(key:String, config:SpriteSheetFromAtlasConfig):phaser.textures.Texture;
    /**
     * Creates a new Texture using the given source and dimensions.
     *
     * @method Phaser.Textures.TextureManager#create
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {HTMLImageElement} source - The source Image element.
     * @param {integer} width - The width of the Texture.
     * @param {integer} height - The height of the Texture.
     *
     * @return {?Phaser.Textures.Texture} The Texture that was created, or `null` if the key is already in use.
     */
    public function create(key:String, source:js.html.ImageElement, width:Int, height:Int):phaser.textures.Texture;
    /**
     * Checks the given key to see if a Texture using it exists within this Texture Manager.
     *
     * @method Phaser.Textures.TextureManager#exists
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     *
     * @return {boolean} Returns `true` if a Texture matching the given key exists in this Texture Manager.
     */
    public function exists(key:String):Bool;
    /**
     * Returns a Texture from the Texture Manager that matches the given key.
     * If the key is undefined it will return the `__DEFAULT` Texture.
     * If the key is given, but not found, it will return the `__MISSING` Texture.
     *
     * @method Phaser.Textures.TextureManager#get
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     *
     * @return {Phaser.Textures.Texture} The Texture that was created.
     */
    public function get(key:String):phaser.textures.Texture;
    /**
     * Takes a Texture key and Frame name and returns a clone of that Frame if found.
     *
     * @method Phaser.Textures.TextureManager#cloneFrame
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(string|integer)} frame - The string or index of the Frame to be cloned.
     *
     * @return {Phaser.Textures.Frame} A Clone of the given Frame.
     */
    public function cloneFrame(key:String, frame:Dynamic):phaser.textures.Frame;
    /**
     * Takes a Texture key and Frame name and returns a reference to that Frame, if found.
     *
     * @method Phaser.Textures.TextureManager#getFrame
     * @since 3.0.0
     *
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(string|integer)} [frame] - The string-based name, or integer based index, of the Frame to get from the Texture.
     *
     * @return {Phaser.Textures.Frame} A Texture Frame object.
     */
    public function getFrame(key:String, ?frame:Dynamic):phaser.textures.Frame;
    /**
     * Returns an array with all of the keys of all Textures in this Texture Manager.
     * The output array will exclude the `__DEFAULT` and `__MISSING` keys.
     *
     * @method Phaser.Textures.TextureManager#getTextureKeys
     * @since 3.0.0
     *
     * @return {string[]} An array containing all of the Texture keys stored in this Texture Manager.
     */
    public function getTextureKeys():Array<String>;
    /**
     * Given a Texture and an `x` and `y` coordinate this method will return a new
     * Color object that has been populated with the color and alpha values of the pixel
     * at that location in the Texture.
     *
     * @method Phaser.Textures.TextureManager#getPixel
     * @since 3.0.0
     *
     * @param {integer} x - The x coordinate of the pixel within the Texture.
     * @param {integer} y - The y coordinate of the pixel within the Texture.
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(string|integer)} [frame] - The string or index of the Frame.
     *
     * @return {?Phaser.Display.Color} A Color object populated with the color values of the requested pixel,
     * or `null` if the coordinates were out of bounds.
     */
    public function getPixel(x:Int, y:Int, key:String, ?frame:Dynamic):phaser.display.Color;
    /**
     * Given a Texture and an `x` and `y` coordinate this method will return a value between 0 and 255
     * corresponding to the alpha value of the pixel at that location in the Texture. If the coordinate
     * is out of bounds it will return null.
     *
     * @method Phaser.Textures.TextureManager#getPixelAlpha
     * @since 3.10.0
     *
     * @param {integer} x - The x coordinate of the pixel within the Texture.
     * @param {integer} y - The y coordinate of the pixel within the Texture.
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(string|integer)} [frame] - The string or index of the Frame.
     *
     * @return {integer} A value between 0 and 255, or `null` if the coordinates were out of bounds.
     */
    public function getPixelAlpha(x:Int, y:Int, key:String, ?frame:Dynamic):Int;
    /**
     * Sets the given Game Objects `texture` and `frame` properties so that it uses
     * the Texture and Frame specified in the `key` and `frame` arguments to this method.
     *
     * @method Phaser.Textures.TextureManager#setTexture
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - The Game Object the texture would be set on.
     * @param {string} key - The unique string-based key of the Texture.
     * @param {(string|integer)} [frame] - The string or index of the Frame.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object the texture was set on.
     */
    public function setTexture(gameObject:phaser.gameobjects.GameObject, key:String, ?frame:Dynamic):phaser.gameobjects.GameObject;
    /**
     * Changes the key being used by a Texture to the new key provided.
     *
     * The old key is removed, allowing it to be re-used.
     *
     * Game Objects are linked to Textures by a reference to the Texture object, so
     * all existing references will be retained.
     *
     * @method Phaser.Textures.TextureManager#renameTexture
     * @since 3.12.0
     *
     * @param {string} currentKey - The current string-based key of the Texture you wish to rename.
     * @param {string} newKey - The new unique string-based key to use for the Texture.
     *
     * @return {boolean} `true` if the Texture key was successfully renamed, otherwise `false`.
     */
    public function renameTexture(currentKey:String, newKey:String):Bool;
    /**
     * Passes all Textures to the given callback.
     *
     * @method Phaser.Textures.TextureManager#each
     * @since 3.0.0
     *
     * @param {EachTextureCallback} callback - The callback function to be sent the Textures.
     * @param {object} scope - The value to use as `this` when executing the callback.
     * @param {...*} [args] - Additional arguments that will be passed to the callback, after the child.
     */
    public function each(callback:EachTextureCallback, scope:Dynamic, ?args:Dynamic):Void;
}
