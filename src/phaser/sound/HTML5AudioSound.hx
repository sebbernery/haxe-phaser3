package phaser.sound;

@:native("Phaser.Sound.HTML5AudioSound")
extern class HTML5AudioSound extends phaser.sound.BaseSound {
    public function new(manager:phaser.sound.HTML5AudioSoundManager, key:String, ?config:SoundConfig);
    public var mute:Bool;
    public var volume:Float;
    public var rate:Float;
    public var detune:Float;
    public var seek:Float;
    public var loop:Bool;
    public function setMute(value:Bool):phaser.sound.HTML5AudioSound;
    public function setVolume(value:Float):phaser.sound.HTML5AudioSound;
    public function setRate(value:Float):phaser.sound.HTML5AudioSound;
    public function setDetune(value:Float):phaser.sound.HTML5AudioSound;
    public function setSeek(value:Float):phaser.sound.HTML5AudioSound;
    public function setLoop(value:Bool):phaser.sound.HTML5AudioSound;
}
