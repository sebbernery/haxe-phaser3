package phaser.scenes;

@:native("Phaser.Scenes.Systems")
extern class Systems {
    public function new(scene:phaser.Scene, config:Dynamic);
    public var scene:phaser.Scene;
    public var game:phaser.Game;
    public var facebook:Dynamic;
    public var config:Dynamic;
    public var settings:phaser.scenes.settings.Object;
    public var canvas:js.html.CanvasElement;
    public var context:js.html.CanvasRenderingContext2D;
    public var anims:phaser.animations.AnimationManager;
    public var cache:phaser.cache.CacheManager;
    public var plugins:phaser.plugins.PluginManager;
    public var registry:phaser.data.DataManager;
    public var sound:phaser.sound.BaseSoundManager;
    public var textures:phaser.textures.TextureManager;
    public var add:phaser.gameobjects.GameObjectFactory;
    public var cameras:phaser.cameras.scene2d.CameraManager;
    public var displayList:phaser.gameobjects.DisplayList;
    public var events:phaser.events.EventEmitter;
    public var make:phaser.gameobjects.GameObjectCreator;
    public var scenePlugin:phaser.scenes.ScenePlugin;
    public var updateList:phaser.gameobjects.UpdateList;
    public function init(game:phaser.Game):Void;
    public function step(time:Float, delta:Float):Void;
    public function render(renderer:Dynamic):Void;
    public function queueDepthSort():Void;
    public function depthSort():Void;
    public function pause(?data:Dynamic):phaser.scenes.Systems;
    public function resume(?data:Dynamic):phaser.scenes.Systems;
    public function sleep(?data:Dynamic):phaser.scenes.Systems;
    public function wake(?data:Dynamic):phaser.scenes.Systems;
    public function isSleeping():Bool;
    public function isActive():Bool;
    public function isPaused():Bool;
    public function isTransitioning():Bool;
    public function isTransitionOut():Bool;
    public function isTransitionIn():Bool;
    public function isVisible():Bool;
    public function setVisible(value:Bool):phaser.scenes.Systems;
    public function setActive(value:Bool, ?data:Dynamic):phaser.scenes.Systems;
    public function start(data:Dynamic):Void;
    public function resize(width:Float, height:Float):Void;
    public function shutdown(?data:Dynamic):Void;
}
