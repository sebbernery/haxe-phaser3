package phaser.gameobjects;

@:native("Phaser.GameObjects.GameObjectCreator")
extern class GameObjectCreator {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var displayList:phaser.gameobjects.DisplayList;
    public var updateList:phaser.gameobjects.UpdateList;
    public function dynamicBitmapText(config:BitmapTextConfig, ?addToScene:Bool):phaser.gameobjects.DynamicBitmapText;
    public function bitmapText(config:BitmapTextConfig, ?addToScene:Bool):phaser.gameobjects.BitmapText;
    public function blitter(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Blitter;
    public function container(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Container;
    public function graphics(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Graphics;
    public function group(config:GroupConfig):phaser.gameobjects.Group;
    public function image(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Image;
    public function mesh(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Mesh;
    public function particles(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.particles.ParticleEmitterManager;
    public function quad(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Quad;
    public function renderTexture(config:RenderTextureConfig, ?addToScene:Bool):phaser.gameobjects.RenderTexture;
    public function sprite(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Sprite;
    public function sprite3D(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Sprite3D;
    public function text(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.Text;
    public function tileSprite(config:Dynamic, ?addToScene:Bool):phaser.gameobjects.TileSprite;
    public function zone(config:Dynamic):phaser.gameobjects.Zone;
    public function tilemap(?config:TilemapConfig):phaser.tilemaps.Tilemap;
    public function tween(config:Dynamic):phaser.tweens.Tween;
}
