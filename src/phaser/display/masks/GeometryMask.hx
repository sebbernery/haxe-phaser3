package phaser.display.masks;

@:native("Phaser.Display.Masks.GeometryMask")
extern class GeometryMask {
    public function new(scene:phaser.Scene, graphicsGeometry:phaser.gameobjects.Graphics);
    public var geometryMask:phaser.gameobjects.Graphics;
    public function setShape(graphicsGeometry:phaser.gameobjects.Graphics):Void;
    public function preRenderWebGL(renderer:Dynamic, mask:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    public function postRenderWebGL(renderer:Dynamic):Void;
    public function preRenderCanvas(renderer:Dynamic, mask:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    public function postRenderCanvas(renderer:Dynamic):Void;
    public function destroy():Void;
}
