package phaser.textures;

@:native("Phaser.Textures.Frame")
extern class Frame {
    public function new(texture:phaser.textures.Texture, name:Dynamic, sourceIndex:Int, x:Float, y:Float, width:Float, height:Float);
    public var texture:phaser.textures.Texture;
    public var name:String;
    public var source:phaser.textures.TextureSource;
    public var sourceIndex:Int;
    public var cutX:Int;
    public var cutY:Int;
    public var cutWidth:Int;
    public var cutHeight:Int;
    public var x:Int;
    public var y:Int;
    public var width:Int;
    public var height:Int;
    public var halfWidth:Int;
    public var halfHeight:Int;
    public var centerX:Int;
    public var centerY:Int;
    public var pivotX:Float;
    public var pivotY:Float;
    public var customPivot:Bool;
    public var rotated:Bool;
    public var autoRound:Int;
    public var customData:Dynamic;
    public var realWidth:Float;
    public var realHeight:Float;
    public var uvs:Dynamic;
    public var radius:Float;
    public var trimmed:Bool;
    public var canvasData:Dynamic;
    public function setSize(width:Int, height:Int, ?x:Int, ?y:Int):phaser.textures.Frame;
    public function setTrim(actualWidth:Float, actualHeight:Float, destX:Float, destY:Float, destWidth:Float, destHeight:Float):phaser.textures.Frame;
    public function updateUVs():phaser.textures.Frame;
    public function updateUVsInverted():phaser.textures.Frame;
    public function clone():phaser.textures.Frame;
    public function destroy():Void;
}
