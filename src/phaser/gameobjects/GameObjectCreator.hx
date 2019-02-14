package phaser.gameobjects;

/**
 * @classdesc
 * The Game Object Creator is a Scene plugin that allows you to quickly create many common
 * types of Game Objects and return them. Unlike the Game Object Factory, they are not automatically
 * added to the Scene.
 *
 * Game Objects directly register themselves with the Creator and inject their own creation
 * methods into the class.
 *
 * @class GameObjectCreator
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object Factory belongs.
 */
@:native("Phaser.GameObjects.GameObjectCreator")
extern class GameObjectCreator {
    public function new(scene:phaser.Scene);
    /**
     * The Scene to which this Game Object Creator belongs.
     *
     * @name Phaser.GameObjects.GameObjectCreator#scene
     * @type {Phaser.Scene}
     * @protected
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene.Systems.
     *
     * @name Phaser.GameObjects.GameObjectCreator#systems
     * @type {Phaser.Scenes.Systems}
     * @protected
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * A reference to the Scene Display List.
     *
     * @name Phaser.GameObjects.GameObjectCreator#displayList
     * @type {Phaser.GameObjects.DisplayList}
     * @protected
     * @since 3.0.0
     */
    public var displayList:phaser.gameobjects.DisplayList;
    /**
     * A reference to the Scene Update List.
     *
     * @name Phaser.GameObjects.GameObjectCreator#updateList;
     * @type {Phaser.GameObjects.UpdateList}
     * @protected
     * @since 3.0.0
     */
    public var updateList:phaser.gameobjects.UpdateList;
    /**
     * Creates a new Dynamic Bitmap Text Game Object and returns it.
     *
     * Note: This method will only be available if the Dynamic Bitmap Text Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#dynamicBitmapText
     * @since 3.0.0
     *²
     * @param {BitmapTextConfig} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.DynamicBitmapText} The Game Object that was created.
     */
    public function dynamicBitmapText(config:BitmapTextConfig, ?addToScene:Bool):phaser.gameobjects.DynamicBitmapText;
    /**
     * Creates a new Bitmap Text Game Object and returns it.
     *
     * Note: This method will only be available if the Bitmap Text Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#bitmapText
     * @since 3.0.0
     *
     * @param {BitmapTextConfig} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.BitmapText} The Game Object that was created.
     */
    public function bitmapText(config:BitmapTextConfig, ?addToScene:Bool):phaser.gameobjects.BitmapText;
    /**
     * Creates a new Blitter Game Object and returns it.
     *
     * Note: This method will only be available if the Blitter Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#blitter
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Blitter} The Game Object that was created.
     */
    public function blitter(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Blitter;
    /**
     * Creates a new Container Game Object and returns it.
     *
     * Note: This method will only be available if the Container Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#container
     * @since 3.4.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Container} The Game Object that was created.
     */
    public function container(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Container;
    /**
     * Creates a new Graphics Game Object and returns it.
     *
     * Note: This method will only be available if the Graphics Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#graphics
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Graphics} The Game Object that was created.
     */
    public function graphics(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Graphics;
    /**
     * Creates a new Group Game Object and returns it.
     *
     * Note: This method will only be available if the Group Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#group
     * @since 3.0.0
     *
     * @param {GroupConfig|GroupCreateConfig} config - The configuration object this Game Object will use to create itself.
     *
     * @return {Phaser.GameObjects.Group} The Game Object that was created.
     */
    public function group(config:Dynamic):phaser.gameobjects.Group;
    /**
     * Creates a new Image Game Object and returns it.
     *
     * Note: This method will only be available if the Image Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#image
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Image} The Game Object that was created.
     */
    public function image(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Image;
    /**
     * Creates a new Mesh Game Object and returns it.
     *
     * Note: This method will only be available if the Mesh Game Object and WebGL support have been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#mesh
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Mesh} The Game Object that was created.
     */
    public function mesh(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Mesh;
    /**
     * Creates a new Particle Emitter Manager Game Object and returns it.
     *
     * Note: This method will only be available if the Particles Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#particles
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitterManager} The Game Object that was created.
     */
    public function particles(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.particles.ParticleEmitterManager;
    /**
     * Creates a new Quad Game Object and returns it.
     *
     * Note: This method will only be available if the Quad Game Object and WebGL support have been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#quad
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Quad} The Game Object that was created.
     */
    public function quad(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Quad;
    /**
     * Creates a new Render Texture Game Object and returns it.
     *
     * Note: This method will only be available if the Render Texture Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#renderTexture
     * @since 3.2.0
     *
     * @param {RenderTextureConfig} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.RenderTexture} The Game Object that was created.
     */
    public function renderTexture(config:RenderTextureConfig, ?addToScene:Bool):phaser.gameobjects.RenderTexture;
    /**
     * Creates a new Sprite Game Object and returns it.
     *
     * Note: This method will only be available if the Sprite Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#sprite
     * @since 3.0.0
     *
     * @param {SpriteConfig} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Sprite} The Game Object that was created.
     */
    public function sprite(config:SpriteConfig, ?addToScene:Bool):phaser.gameobjects.Sprite;
    /**
     * Creates a new Text Game Object and returns it.
     *
     * Note: This method will only be available if the Text Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#text
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.Text} The Game Object that was created.
     */
    public function text(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Text;
    /**
     * Creates a new TileSprite Game Object and returns it.
     *
     * Note: This method will only be available if the TileSprite Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#tileSprite
     * @since 3.0.0
     *
     * @param {TileSprite} config - The configuration object this Game Object will use to create itself.
     * @param {boolean} [addToScene] - Add this Game Object to the Scene after creating it? If set this argument overrides the `add` property in the config object.
     *
     * @return {Phaser.GameObjects.TileSprite} The Game Object that was created.
     */
    public function tileSprite(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.TileSprite;
    /**
     * Creates a new Zone Game Object and returns it.
     *
     * Note: This method will only be available if the Zone Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#zone
     * @since 3.0.0
     *
     * @param {object} config - The configuration object this Game Object will use to create itself.
     *
     * @return {Phaser.GameObjects.Zone} The Game Object that was created.
     */
    public function zone(config:Dynamic):phaser.gameobjects.Zone;
    /**
     * Creates a Tilemap from the given key or data, or creates a blank Tilemap if no key/data provided.
     * When loading from CSV or a 2D array, you should specify the tileWidth & tileHeight. When parsing
     * from a map from Tiled, the tileWidth, tileHeight, width & height will be pulled from the map
     * data. For an empty map, you should specify tileWidth, tileHeight, width & height.
     *
     * @method Phaser.GameObjects.GameObjectCreator#tilemap
     * @since 3.0.0
     *
     * @param {TilemapConfig} [config] - The config options for the Tilemap.
     *
     * @return {Phaser.Tilemaps.Tilemap}
     */
    public function tilemap(?config:TilemapConfig):phaser.tilemaps.Tilemap;
    /**
     * Creates a new Tween object and returns it.
     *
     * Note: This method will only be available if Tweens have been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectCreator#tween
     * @since 3.0.0
     *
     * @param {object} config - The Tween configuration.
     *
     * @return {Phaser.Tweens.Tween} The Tween that was created.
     */
    public function tween(config:Dynamic):phaser.tweens.Tween;
}
