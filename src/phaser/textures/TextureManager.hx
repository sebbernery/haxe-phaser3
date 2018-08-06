package phaser.textures;

@:native("Phaser.Textures.TextureManager")
extern class TextureManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    public var width:Int;
    public var height:Int;
    public var game:phaser.Game;
    public var name:String;
    public var list:Dynamic;
    public function boot():Void;
    public function updatePending():Void;
    public function checkKey(key:String):Bool;
    public function remove(key:Dynamic):phaser.textures.TextureManager;
    public function addBase64(key:String, data:Dynamic):Void;
    public function addImage(key:String, source:js.html.ImageElement, ?dataSource:js.html.ImageElement):phaser.textures.Texture;
    public function generate(key:String, config:Dynamic):phaser.textures.Texture;
    public function createCanvas(key:String, ?width:Int, ?height:Int):phaser.textures.CanvasTexture;
    public function addCanvas(key:String, source:js.html.CanvasElement):phaser.textures.CanvasTexture;
    public function addAtlas(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:js.html.ImageElement):phaser.textures.Texture;
    public function addAtlasJSONArray(key:String, source:Dynamic, data:Dynamic, ?dataSource:js.html.ImageElement):phaser.textures.Texture;
    public function addAtlasJSONHash(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:js.html.ImageElement):phaser.textures.Texture;
    public function addAtlasXML(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:js.html.ImageElement):phaser.textures.Texture;
    public function addUnityAtlas(key:String, source:js.html.ImageElement, data:Dynamic, ?dataSource:js.html.ImageElement):phaser.textures.Texture;
    public function addSpriteSheet(key:String, source:js.html.ImageElement, config:SpriteSheetConfig):phaser.textures.Texture;
    public function addSpriteSheetFromAtlas(key:String, config:SpriteSheetFromAtlasConfig):phaser.textures.Texture;
    public function create(key:String, source:js.html.ImageElement, width:Int, height:Int):phaser.textures.Texture;
    public function exists(key:String):Bool;
    public function get(key:String):phaser.textures.Texture;
    public function cloneFrame(key:String, frame:Dynamic):phaser.textures.Frame;
    public function getFrame(key:String, ?frame:Dynamic):phaser.textures.Frame;
    public function getTextureKeys():Array<String>;
    public function getPixel(x:Int, y:Int, key:String, frame:Dynamic):phaser.display.Color;
    public function getPixelAlpha(x:Int, y:Int, key:String, frame:Dynamic):Int;
    public function setTexture(gameObject:phaser.gameobjects.GameObject, key:String, frame:Dynamic):phaser.gameobjects.GameObject;
    public function each(callback:EachTextureCallback, scope:Dynamic, ?args:Dynamic):Void;
    public function canvas():Void;
}
