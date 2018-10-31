package phaser;

@:native("Phaser.Game")
extern class Game {
    public function new(?GameConfig:GameConfig);
    public var config:phaser.boot.Config;
    public var renderer:Dynamic;
    public var domContainer:js.html.DivElement;
    public var canvas:js.html.CanvasElement;
    public var context:Dynamic;
    public var isBooted:Bool;
    public var isRunning:Bool;
    public var events:phaser.events.EventEmitter;
    public var anims:phaser.animations.AnimationManager;
    public var textures:phaser.textures.TextureManager;
    public var cache:phaser.cache.CacheManager;
    public var registry:phaser.data.DataManager;
    public var input:phaser.input.InputManager;
    public var scene:phaser.scenes.SceneManager;
    public var device:phaser.DeviceConf;
    public var sound:phaser.sound.BaseSoundManager;
    public var loop:phaser.boot.TimeStep;
    public var plugins:phaser.plugins.PluginManager;
    public var facebook:phaser.FacebookInstantGamesPlugin;
    public var hasFocus:Bool;
    public var isOver:Bool;
    public function boot():Void;
    public function start():Void;
    public function step(time:Float, delta:Float):Void;
    public function headlessStep(time:Float, delta:Float):Void;
    public function onHidden():Void;
    public function onVisible():Void;
    public function onBlur():Void;
    public function onFocus():Void;
    public function resize(width:Float, height:Float):Void;
    public function destroy(removeCanvas:Bool, ?noReturn:Bool):Void;
}
