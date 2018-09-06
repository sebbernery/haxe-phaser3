package phaser.textures;

@:native("Phaser.Textures.TextureSource")
extern class TextureSource {
    public function new(texture:phaser.textures.Texture, source:Dynamic, ?width:Int, ?height:Int);
    public var renderer:Dynamic;
    public var texture:phaser.textures.Texture;
    public var source:Dynamic;
    public var image:Dynamic;
    public var compressionAlgorithm:Int;
    public var resolution:Float;
    public var width:Int;
    public var height:Int;
    public var scaleMode:Float;
    public var isCanvas:Bool;
    public var isRenderTexture:Bool;
    public var isPowerOf2:Bool;
    public var glTexture:js.html.webgl.Texture;
    public function init(game:phaser.Game):Void;
    public function setFilter(filterMode:Dynamic):Void;
    public function update():Void;
    public function destroy():Void;
}
