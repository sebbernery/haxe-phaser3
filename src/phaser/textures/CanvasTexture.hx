package phaser.textures;

@:native("Phaser.Textures.CanvasTexture")
extern class CanvasTexture extends phaser.textures.Texture {
    public function new(manager:phaser.textures.TextureManager, key:String, source:js.html.CanvasElement, width:Int, height:Int);
    public function refresh():phaser.textures.CanvasTexture;
    public function getCanvas():js.html.CanvasElement;
    public function getContext():js.html.CanvasRenderingContext2D;
    public function clear():phaser.textures.CanvasTexture;
    public function setSize(width:Int, ?height:Int):phaser.textures.CanvasTexture;
}
