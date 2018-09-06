package phaser.gameobjects;

@:native("Phaser.GameObjects.GameObjectFactory")
extern class GameObjectFactory {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var displayList:phaser.gameobjects.DisplayList;
    public var updateList:phaser.gameobjects.UpdateList;
    public function path(x:Float, y:Float):phaser.curves.Path;
    public function existing(child:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    public function dynamicBitmapText(x:Float, y:Float, font:String, ?text:Dynamic, ?size:Float):phaser.gameobjects.DynamicBitmapText;
    public function bitmapText(x:Float, y:Float, font:String, ?text:Dynamic, ?size:Float, ?align:Int):phaser.gameobjects.BitmapText;
    public function blitter(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.gameobjects.Blitter;
    public function container(x:Float, y:Float, ?children:Dynamic):phaser.gameobjects.Container;
    public function dom(x:Float, y:Float, element:String):phaser.gameobjects.DOMElement;
    public function graphics(?config:GraphicsOptions):phaser.gameobjects.Graphics;
    public function group(?children:Dynamic, ?config:GroupConfig):phaser.gameobjects.Group;
    public function image(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.Image;
    public function mesh(x:Float, y:Float, vertices:Array<Float>, uv:Array<Float>, colors:Array<Float>, alphas:Array<Float>, texture:String, ?frame:Dynamic):phaser.gameobjects.Mesh;
    public function particles(texture:String, ?frame:Dynamic, ?emitters:Dynamic):phaser.gameobjects.particles.ParticleEmitterManager;
    public function follower(path:phaser.curves.Path, x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.PathFollower;
    public function quad(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.Quad;
    public function renderTexture(x:Float, y:Float, ?width:Int, ?height:Int):phaser.gameobjects.RenderTexture;
    public function sprite(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.Sprite;
    public function text(x:Float, y:Float, text:Dynamic, ?style:Dynamic):phaser.gameobjects.Text;
    public function tileSprite(x:Float, y:Float, width:Float, height:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.TileSprite;
    public function zone(x:Float, y:Float, width:Float, height:Float):phaser.gameobjects.Zone;
    public function tilemap(?key:String, ?tileWidth:Int, ?tileHeight:Int, ?width:Int, ?height:Int, ?data:Array<Array<Int>>, ?insertNull:Bool):phaser.tilemaps.Tilemap;
    public function tween(config:Dynamic):phaser.tweens.Tween;
}
