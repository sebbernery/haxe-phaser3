package phaser.textures;

@:native("Phaser.Textures.CanvasTexture")
extern class CanvasTexture extends phaser.textures.Texture {
    public function new(manager:phaser.textures.CanvasTexture, key:String, source:js.html.CanvasElement, width:Int, height:Int);
    public var width:Int;
    public var height:Int;
    public var imageData:js.html.ImageData;
    public var data:js.html.Uint8ClampedArray;
    public var pixels:js.html.Uint32Array;
    public var buffer:js.html.ArrayBuffer;
    public function update():phaser.textures.CanvasTexture;
    public function draw(x:Int, y:Int, source:Dynamic):phaser.textures.CanvasTexture;
    public function getPixel(x:Int, y:Int, ?out:phaser.display.Color):phaser.display.Color;
    public function refresh():phaser.textures.CanvasTexture;
    public function getCanvas():js.html.CanvasElement;
    public function getContext():js.html.CanvasRenderingContext2D;
    public function clear():phaser.textures.CanvasTexture;
    public function setSize(width:Int, ?height:Int):phaser.textures.CanvasTexture;
    public function canvas():Void;
}
