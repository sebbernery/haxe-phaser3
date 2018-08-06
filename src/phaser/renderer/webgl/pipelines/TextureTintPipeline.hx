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
    public function batchSprite(sprite:Dynamic, camera:phaser.cameras.scene2d.Camera, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchVertices(tx0:Float, ty0:Float, tx1:Float, ty1:Float, tx2:Float, ty2:Float, tx3:Float, ty3:Float, u0:Float, v0:Float, u1:Float, v1:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintBR:Float, tintEffect:Dynamic):Bool;
    public function drawTexture(texture:js.html.webgl.Texture, x:Float, y:Float, tint:Float, alpha:Float, transformMatrix:Array<Dynamic>, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):phaser.renderer.webgl.pipelines.TextureTintPipeline;
    @:overload(function(gameObject:phaser.gameobjects.GameObject, texture:js.html.webgl.Texture, textureWidth:Int, textureHeight:Int, srcX:Float, srcY:Float, srcWidth:Float, srcHeight:Float, scaleX:Float, scaleY:Float, rotation:Float, flipX:Bool, flipY:Bool, scrollFactorX:Float, scrollFactorY:Float, displayOriginX:Float, displayOriginY:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, tintTL:Int, tintTR:Int, tintBL:Int, tintBR:Int, tintEffect:Float, uOffset:Float, vOffset:Float, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void{})    @:overload(function(gameObject:phaser.gameobjects.GameObject, texture:js.html.webgl.Texture, textureWidth:Int, textureHeight:Int, srcX:Float, srcY:Float, srcWidth:Float, srcHeight:Float, scaleX:Float, scaleY:Float, rotation:Float, flipX:Bool, flipY:Bool, scrollFactorX:Float, scrollFactorY:Float, displayOriginX:Float, displayOriginY:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, tintTL:Int, tintTR:Int, tintBL:Int, tintBR:Int, tintEffect:Float, uOffset:Float, vOffset:Float, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void{})    public function batchTexture():Void;
}
