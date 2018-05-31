package phaser.sound;

@:native("Phaser.Sound.HTML5AudioSoundManager")
extern class HTML5AudioSoundManager extends phaser.sound.BaseSoundManager {
    public function new(game:phaser.Game);
    public var override:Bool;
    public var audioPlayDelay:Float;
    public var loopEndOffset:Float;
    public function isLocked(sound:phaser.sound.HTML5AudioSound, prop:String, ?value:Dynamic):Bool;
    public function setMute(value:Bool):phaser.sound.HTML5AudioSoundManager;
    public function setVolume(value:Float):phaser.sound.HTML5AudioSoundManager;
}
