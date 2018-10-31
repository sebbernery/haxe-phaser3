package phaser.textures;

@:native("Phaser.Textures.TextureManager")
extern class TextureManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    public var game:phaser.Game;
    public var name:String;
    public var list:Dynamic;
    public function checkKey(key:String):Bool;
    public function remove(key:Dynamic):phaser.textures.TextureManager;
    public function addBase64(key:String, data:Dynamic):Dynamic;
    public function getBase64(key:String, ?frame:Dynamic, ?type:String, ?encoderOptions:Float):String;
    public function addImage(key:String, source:js.html.ImageElement, ?dataSource:js.html.ImageElement):phaser.textures.Texture;
    public function addRenderTexture(key:String, renderTexture:phaser.gameobjects.RenderTexture):phaser.textures.Texture;
    public function generate(key:String, config:Dynamic):phaser.textures.Texture;
    public function createCanvas(key:String, ?width:Int, ?height:Int):phaser.textures.CanvasTexture;
    public function addCanvas(key:String, source:js.html.CanvasElement, ?skipCache:Bool):phaser.textures.CanvasTexture;
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
    public function renameTexture(currentKey:String, newKey:String):Bool;
    public function each(callback:EachTextureCallback, scope:Dynamic, ?args:Dynamic):Void;
}
