package phaser.sound;

@:native("Phaser.Sound.WebAudioSound")
extern class WebAudioSound extends phaser.sound.BaseSound {
    public function new(manager:phaser.sound.WebAudioSoundManager, key:String, ?config:SoundConfig);
    public var rate:Float;
    public var detune:Float;
    public var mute:Bool;
    public var volume:Float;
    public var seek:Float;
    public var loop:Bool;
    public function setRate(value:Float):phaser.sound.WebAudioSound;
    public function setDetune(value:Float):phaser.sound.WebAudioSound;
    public function setMute(value:Bool):phaser.sound.WebAudioSound;
    public function setVolume(value:Float):phaser.sound.WebAudioSound;
    public function setSeek(value:Float):phaser.sound.WebAudioSound;
    public function setLoop(value:Bool):phaser.sound.WebAudioSound;
}
