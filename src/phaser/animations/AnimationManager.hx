package phaser.animations;

@:native("Phaser.Animations.AnimationManager")
extern class AnimationManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    public var game:phaser.Game;
    public var textureManager:phaser.textures.TextureManager;
    public var globalTimeScale:Float;
    public var anims:Dynamic;
    public var paused:Bool;
    public var name:String;
    public function boot():Void;
    public function add(key:String, animation:phaser.animations.Animation):phaser.animations.AnimationManager;
    public function create(config:AnimationConfig):phaser.animations.Animation;
    public function fromJSON(data:Dynamic, ?clearCurrentAnimations:Bool):Array<phaser.animations.Animation>;
    public function generateFrameNames(key:String, ?config:GenerateFrameNamesConfig):Array<AnimationFrameConfig>;
    public function generateFrameNumbers(key:String, config:GenerateFrameNumbersConfig):Array<AnimationFrameConfig>;
    public function get(key:String):phaser.animations.Animation;
    public function load(child:phaser.gameobjects.GameObject, key:String, ?startFrame:Dynamic):phaser.gameobjects.GameObject;
    public function pauseAll():phaser.animations.AnimationManager;
    public function play(key:String, child:phaser.gameobjects.GameObject):phaser.animations.AnimationManager;
    public function remove(key:String):phaser.animations.Animation;
    public function resumeAll():phaser.animations.AnimationManager;
    public function staggerPlay(key:String, children:Array<phaser.gameobjects.GameObject>, ?stagger:Float):phaser.animations.AnimationManager;
    public function toJSON(key:String):JSONAnimationManager;
}
