package phaser.renderer.webgl.pipelines;

@:native("Phaser.Renderer.WebGL.Pipelines.FlatTintPipeline")
extern class FlatTintPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:Dynamic);
    public var vertexViewF32:js.html.Float32Array;
    public var vertexViewU32:js.html.Uint32Array;
    public var tempTriangle:Array<Dynamic>;
    public var polygonCache:Array<Dynamic>;
    public function batchFillRect(srcX:Float, srcY:Float, srcScaleX:Float, srcScaleY:Float, srcRotation:Float, x:Float, y:Float, width:Float, height:Float, fillColor:Int, fillAlpha:Float, a1:Float, b1:Float, c1:Float, d1:Float, e1:Float, f1:Float, currentMatrix:js.html.Float32Array):Void;
    public function batchFillTriangle(srcX:Float, srcY:Float, srcScaleX:Float, srcScaleY:Float, srcRotation:Float, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, fillColor:Int, fillAlpha:Float, a1:Float, b1:Float, c1:Float, d1:Float, e1:Float, f1:Float, currentMatrix:js.html.Float32Array):Void;
    public function batchStrokeTriangle(srcX:Float, srcY:Float, srcScaleX:Float, srcScaleY:Float, srcRotation:Float, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, lineWidth:Float, lineColor:Int, lineAlpha:Float, a:Float, b:Float, c:Float, d:Float, e:Float, f:Float, currentMatrix:js.html.Float32Array):Void;
    public function batchFillPath(srcX:Float, srcY:Float, srcScaleX:Float, srcScaleY:Float, srcRotation:Float, path:Float, fillColor:Int, fillAlpha:Float, a1:Float, b1:Float, c1:Float, d1:Float, e1:Float, f1:Float, currentMatrix:js.html.Float32Array):Void;
    public function batchStrokePath(srcX:Float, srcY:Float, srcScaleX:Float, srcScaleY:Float, srcRotation:Float, path:Array<Dynamic>, lineWidth:Float, lineColor:Int, lineAlpha:Float, a:Float, b:Float, c:Float, d:Float, e:Float, f:Float, isLastPath:Bool, currentMatrix:js.html.Float32Array):Void;
    public function batchLine(srcX:Float, srcY:Float, srcScaleX:Float, srcScaleY:Float, srcRotation:Float, ax:Float, ay:Float, bx:Float, by:Float, aLineWidth:Float, bLineWidth:Float, aLineColor:Int, bLineColor:Int, lineAlpha:Float, a1:Float, b1:Float, c1:Float, d1:Float, e1:Float, f1:Float, currentMatrix:js.html.Float32Array):Void;
    public function batchGraphics(graphics:phaser.gameobjects.Graphics, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function drawStaticTilemapLayer(tilemap:phaser.tilemaps.StaticTilemapLayer, camera:phaser.cameras.scene2d.Camera):Void;
    public function drawEmitterManager(emitterManager:phaser.gameobjects.particles.ParticleEmitterManager, camera:phaser.cameras.scene2d.Camera):Void;
    public function drawBlitter(blitter:phaser.gameobjects.Blitter, camera:phaser.cameras.scene2d.Camera):Void;
    public function batchSprite(sprite:phaser.gameobjects.Sprite, camera:phaser.cameras.scene2d.Camera):Void;
    public function batchMesh(mesh:phaser.gameobjects.Mesh, camera:phaser.cameras.scene2d.Camera):Void;
    public function batchBitmapText(bitmapText:phaser.gameobjects.BitmapText, camera:phaser.cameras.scene2d.Camera):Void;
    public function batchDynamicBitmapText(bitmapText:phaser.gameobjects.DynamicBitmapText, camera:phaser.cameras.scene2d.Camera):Void;
    public function batchText(text:phaser.gameobjects.Text, camera:phaser.cameras.scene2d.Camera):Void;
    public function batchDynamicTilemapLayer(tilemapLayer:phaser.tilemaps.DynamicTilemapLayer, camera:phaser.cameras.scene2d.Camera):Void;
    public function batchTileSprite(tileSprite:phaser.gameobjects.TileSprite, camera:phaser.cameras.scene2d.Camera):Void;
}
