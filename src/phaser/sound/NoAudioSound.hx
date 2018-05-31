package phaser.sound;

@:native("Phaser.Sound.NoAudioSound")
extern class NoAudioSound extends phaser.sound.BaseSound {
    public function new(manager:phaser.sound.NoAudioSoundManager, key:String, ?config:SoundConfig);
}
