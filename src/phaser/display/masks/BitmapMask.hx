package phaser.display.masks;

@:native("Phaser.Display.Masks.BitmapMask")
extern class BitmapMask {
    public function new(scene:phaser.Scene, renderable:phaser.gameobjects.GameObject);
    public var bitmapMask:phaser.gameobjects.GameObject;
    public var maskTexture:js.html.webgl.Texture;
    public var mainTexture:js.html.webgl.Texture;
    public var dirty:Bool;
    public var mainFramebuffer:js.html.webgl.Framebuffer;
    public var maskFramebuffer:js.html.webgl.Framebuffer;
    public var invertAlpha:Bool;
    public function setBitmap(renderable:phaser.gameobjects.GameObject):Void;
    public function preRenderWebGL(renderer:Dynamic, maskedObject:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    public function postRenderWebGL(renderer:Dynamic):Void;
    public function preRenderCanvas(renderer:Dynamic, mask:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    public function postRenderCanvas(renderer:Dynamic):Void;
    public function destroy():Void;
}
