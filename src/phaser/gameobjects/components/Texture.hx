package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Texture")
extern class Texture {
    public function new();
    public var texture:Dynamic;
    public var frame:phaser.textures.Frame;
    public function setTexture(key:String, ?frame:Dynamic):Dynamic;
    public function setFrame(frame:Dynamic, ?updateSize:Bool, ?updateOrigin:Bool):Dynamic;
}
