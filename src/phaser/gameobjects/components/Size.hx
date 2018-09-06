package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Size")
extern class Size {
    public function new();
    public var width:Float;
    public var height:Float;
    public var displayWidth:Float;
    public var displayHeight:Float;
    public function setSizeToFrame(frame:phaser.textures.Frame):Dynamic;
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    @:overload(function(width:Float, height:Float):this{})    @:overload(function(width:Float, height:Float):this{})    public function setSize():Void;
}
