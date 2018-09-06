package phaser;

@:native("Phaser.Scene")
extern class Scene {
    public function new();
    public var sys:phaser.scenes.Systems;
    public var game:phaser.Game;
    public var anims:phaser.animations.AnimationManager;
    public var cache:phaser.cache.CacheManager;
    public var registry:phaser.data.DataManager;
    public var sound:phaser.sound.BaseSoundManager;
    public var textures:phaser.textures.TextureManager;
    public var events:phaser.events.EventEmitter;
    public var cameras:phaser.cameras.scene2d.CameraManager;
    public var cameras3d:Dynamic;
    public var add:phaser.gameobjects.GameObjectFactory;
    public var make:phaser.gameobjects.GameObjectCreator;
    public var scene:phaser.scenes.ScenePlugin;
    public var children:phaser.gameobjects.DisplayList;
    public var lights:phaser.gameobjects.LightsManager;
    public var data:phaser.data.DataManager;
    public var input:phaser.input.InputPlugin;
    public var load:phaser.loader.LoaderPlugin;
    public var time:phaser.time.Clock;
    public var tweens:phaser.tweens.TweenManager;
    public var physics:phaser.physics.arcade.ArcadePhysics;
    public var impact:phaser.physics.impact.ImpactPhysics;
    public var matter:phaser.physics.matter.MatterPhysics;
    public function update(time:Float, delta:Float):Void;
}
