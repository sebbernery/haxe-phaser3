package phaser.display.masks;

@:native("Phaser.Display.Masks.GeometryMask")
extern class GeometryMask {
    public function new(scene:phaser.Scene, graphicsGeometry:phaser.gameobjects.Graphics);
    public var geometryMask:phaser.gameobjects.Graphics;
    public function setShape(graphicsGeometry:phaser.gameobjects.Graphics):Void;
    public function preRenderWebGL(renderer:phaser.renderer.webgl.WebGLRenderer, mask:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    public function postRenderWebGL(renderer:phaser.renderer.webgl.WebGLRenderer):Void;
    public function preRenderCanvas(renderer:phaser.renderer.canvas.CanvasRenderer, mask:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    public function postRenderCanvas(renderer:phaser.renderer.canvas.CanvasRenderer):Void;
    public function destroy():Void;
}
