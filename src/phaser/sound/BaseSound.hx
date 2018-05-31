package phaser.sound;

@:native("Phaser.Sound.BaseSound")
extern class BaseSound extends phaser.events.EventEmitter {
    public function new(manager:phaser.sound.BaseSoundManager, key:String, ?config:SoundConfig);
    public var key:String;
    public var isPlaying:Bool;
    public var isPaused:Bool;
    public var totalRate:Float;
    public var duration:Float;
    public var totalDuration:Float;
    public var markers:Dynamic;
    public var currentMarker:SoundMarker;
    public function addMarker(marker:SoundMarker):Bool;
    public function updateMarker(marker:SoundMarker):Bool;
    public function removeMarker(markerName:String):SoundMarker;
    public function play(?markerName:String, ?config:SoundConfig):Bool;
    public function pause():Bool;
    public function resume():Bool;
    public function stop():Bool;
    public function applyConfig():Void;
    public function resetConfig():Void;
    public function update(time:Float, delta:Float):Void;
    public function calculateRate():Void;
}
