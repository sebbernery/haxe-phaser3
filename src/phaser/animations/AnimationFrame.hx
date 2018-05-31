package phaser.animations;

@:native("Phaser.Animations.AnimationFrame")
extern class AnimationFrame {
    public function new(textureKey:String, textureFrame:Dynamic, index:Int, frame:phaser.textures.Frame);
    public var textureKey:String;
    public var textureFrame:Dynamic;
    public var index:Int;
    public var frame:phaser.textures.Frame;
    public var isFirst:Bool;
    public var isLast:Bool;
    public var prevFrame:phaser.animations.AnimationFrame;
    public var nextFrame:phaser.animations.AnimationFrame;
    public var duration:Float;
    public var progress:Float;
    public function toJSON():JSONAnimationFrame;
    public function destroy():Void;
}
