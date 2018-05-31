package phaser.sound;

@:native("Phaser.Sound.WebAudioSoundManager")
extern class WebAudioSoundManager extends phaser.sound.BaseSoundManager {
    public function new(game:phaser.Game);
    public function setMute(value:Bool):phaser.sound.WebAudioSoundManager;
    public function setVolume(value:Float):phaser.sound.WebAudioSoundManager;
}
