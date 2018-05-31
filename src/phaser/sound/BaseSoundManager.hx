package phaser.sound;

@:native("Phaser.Sound.BaseSoundManager")
extern class BaseSoundManager extends phaser.events.EventEmitter {
    public function new(game:phaser.Game);
    public var game:phaser.Game;
    public var jsonCache:phaser.cache.BaseCache;
    public var mute:Bool;
    public var volume:Float;
    public var pauseOnBlur:Bool;
    public var locked:Bool;
    public var rate:Float;
    public var detune:Float;
    public function add(key:String, ?config:SoundConfig):phaser.sound.BaseSound;
    public function addAudioSprite(key:String, ?config:SoundConfig):phaser.sound.basesound.AudioSpriteSound;
    public function play(key:String, ?extra:Dynamic):Bool;
    public function playAudioSprite(key:String, spriteName:String, ?config:SoundConfig):Bool;
    public function remove(sound:phaser.sound.BaseSound):Bool;
    public function removeByKey(key:String):Float;
    public function pauseAll():Void;
    public function resumeAll():Void;
    public function stopAll():Void;
    public function unlock():Void;
    public function onBlur():Void;
    public function onFocus():Void;
    public function update(time:Float, delta:Float):Void;
    public function setRate(value:Float):phaser.sound.BaseSoundManager;
    public function setDetune(value:Float):phaser.sound.BaseSoundManager;
}
