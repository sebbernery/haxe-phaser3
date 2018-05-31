package phaser.renderer.webgl.pipelines;

@:native("Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline")
extern class TextureTintPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:Dynamic);
    public var vertexViewF32:js.html.Float32Array;
    public var vertexViewU32:js.html.Uint32Array;
    public var maxQuads:Int;
    public var batches:Array<Dynamic>;
    public function setTexture2D(texture:js.html.webgl.Texture, textureUnit:Int):phaser.renderer.webgl.pipelines.TextureTintPipeline;
    public function pushBatch():Void;
    public function drawStaticTilemapLayer(tilemap:phaser.tilemaps.StaticTilemapLayer, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function drawEmitterManager(emitterManager:phaser.gameobjects.particles.ParticleEmitterManager, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function drawBlitter(blitter:phaser.gameobjects.Blitter, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchSprite(sprite:phaser.gameobjects.Sprite, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchMesh(mesh:phaser.gameobjects.Mesh, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchBitmapText(bitmapText:phaser.gameobjects.BitmapText, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchDynamicBitmapText(bitmapText:phaser.gameobjects.DynamicBitmapText, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchText(text:phaser.gameobjects.Text, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchDynamicTilemapLayer(tilemapLayer:phaser.tilemaps.DynamicTilemapLayer, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchTileSprite(tileSprite:phaser.gameobjects.TileSprite, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchTexture(gameObject:phaser.gameobjects.GameObject, texture:js.html.webgl.Texture, textureWidth:Int, textureHeight:Int, srcX:Float, srcY:Float, srcWidth:Float, srcHeight:Float, scaleX:Float, scaleY:Float, rotation:Float, flipX:Bool, flipY:Bool, scrollFactorX:Float, scrollFactorY:Float, displayOriginX:Float, displayOriginY:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, tintTL:Int, tintTR:Int, tintBL:Int, tintBR:Int, uOffset:Float, vOffset:Float, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function drawTexture(texture:js.html.webgl.Texture, srcX:Float, srcY:Float, tint:Float, alpha:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, transformMatrix:phaser.gameobjects.components.TransformMatrix, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):phaser.renderer.webgl.pipelines.TextureTintPipeline;
    public function batchGraphics(graphics:phaser.gameobjects.Graphics, camera:phaser.cameras.scene2d.Camera):Void;
}
