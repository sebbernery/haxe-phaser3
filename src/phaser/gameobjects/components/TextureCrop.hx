package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.TextureCrop")
extern class TextureCrop {
    public function new();
    public var texture:Dynamic;
    public var frame:phaser.textures.Frame;
    public var isCropped:Bool;
    public function setCrop(?x:Dynamic, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    public function setTexture(key:String, ?frame:Dynamic):Dynamic;
    public function setFrame(frame:Dynamic, ?updateSize:Bool, ?updateOrigin:Bool):Dynamic;
}
