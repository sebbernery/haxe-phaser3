package phaser.animations;

@:native("Phaser.Animations.Animation")
extern class Animation {
    public function new(manager:phaser.animations.AnimationManager, key:String, config:AnimationConfig);
    public var manager:phaser.animations.AnimationManager;
    public var key:String;
    public var type:String;
    public var frames:Array<phaser.animations.AnimationFrame>;
    public var frameRate:Int;
    public var duration:Int;
    public var msPerFrame:Int;
    public var skipMissedFrames:Bool;
    public var delay:Int;
    public var repeat:Int;
    public var repeatDelay:Int;
    public var yoyo:Bool;
    public var showOnStart:Bool;
    public var hideOnComplete:Bool;
    public var paused:Bool;
    public function addFrame(config:Dynamic):phaser.animations.Animation;
    public function addFrameAt(index:Int, config:Dynamic):phaser.animations.Animation;
    public function checkFrame(index:Int):Bool;
    public function completeAnimation(component:phaser.gameobjects.components.Animation):Void;
    public function getFirstTick(component:phaser.gameobjects.components.Animation, ?includeDelay:Bool):Void;
    public function getFrameAt(index:Int):phaser.animations.AnimationFrame;
    public function getFrames(textureManager:phaser.textures.TextureManager, frames:Dynamic, ?defaultTextureKey:String):Array<phaser.animations.AnimationFrame>;
    public function getNextTick(component:phaser.gameobjects.components.Animation):Void;
    public function getFrameByProgress(value:Float):phaser.animations.AnimationFrame;
    public function nextFrame(component:phaser.gameobjects.components.Animation):Void;
    public function _handleYoyoFrame(component:phaser.gameobjects.components.Animation, isReverse:Bool):Void;
    public function getLastFrame():phaser.animations.AnimationFrame;
    public function previousFrame(component:phaser.gameobjects.components.Animation):Void;
    public function _updateAndGetNextTick(frame:phaser.animations.AnimationFrame):Void;
    public function removeFrame(frame:phaser.animations.AnimationFrame):phaser.animations.Animation;
    public function removeFrameAt(index:Int):phaser.animations.Animation;
    public function repeatAnimation(component:phaser.gameobjects.components.Animation):Void;
    public function setFrame(component:phaser.gameobjects.components.Animation):Void;
    public function toJSON():JSONAnimation;
    public function updateFrameSequence():phaser.animations.Animation;
    public function pause():phaser.animations.Animation;
    public function resume():phaser.animations.Animation;
    public function destroy():Void;
}
