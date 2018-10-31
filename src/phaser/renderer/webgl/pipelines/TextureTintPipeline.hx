package phaser.renderer.webgl.pipelines;

@:native("Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline")
extern class TextureTintPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:Dynamic);
    public var vertexViewF32:js.html.Float32Array;
    public var vertexViewU32:js.html.Uint32Array;
    public var maxQuads:Int;
    public function setTexture2D(texture:js.html.webgl.Texture, textureUnit:Int):phaser.renderer.webgl.pipelines.TextureTintPipeline;
    public function batchSprite(sprite:Dynamic, camera:phaser.cameras.scene2d.Camera, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchQuad(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, u0:Float, v0:Float, u1:Float, v1:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintBR:Float, tintEffect:Dynamic):Bool;
    public function batchTri(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, u0:Float, v0:Float, u1:Float, v1:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintEffect:Dynamic):Bool;
    public function batchTextureFrame(frame:phaser.textures.Frame, x:Float, y:Float, tint:Float, alpha:Float, transformMatrix:phaser.gameobjects.components.TransformMatrix, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function drawFillRect(x:Float, y:Float, width:Float, height:Float, color:Float, alpha:Float):Void;
    public function batchFillRect(x:Float, y:Float, width:Float, height:Float, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchFillTriangle(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchStrokeTriangle(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, lineWidth:Float, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchFillPath(path:Array<Dynamic>, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchStrokePath(path:Array<Dynamic>, lineWidth:Float, pathOpen:Bool, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    public function batchLine(ax:Float, ay:Float, bx:Float, by:Float, aLineWidth:Float, bLineWidth:Float, currentMatrix:js.html.Float32Array):Void;
    @:overload(function(gameObject:phaser.gameobjects.GameObject, texture:js.html.webgl.Texture, textureWidth:Int, textureHeight:Int, srcX:Float, srcY:Float, srcWidth:Float, srcHeight:Float, scaleX:Float, scaleY:Float, rotation:Float, flipX:Bool, flipY:Bool, scrollFactorX:Float, scrollFactorY:Float, displayOriginX:Float, displayOriginY:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, tintTL:Int, tintTR:Int, tintBL:Int, tintBR:Int, tintEffect:Float, uOffset:Float, vOffset:Float, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void{})    @:overload(function(gameObject:phaser.gameobjects.GameObject, texture:js.html.webgl.Texture, textureWidth:Int, textureHeight:Int, srcX:Float, srcY:Float, srcWidth:Float, srcHeight:Float, scaleX:Float, scaleY:Float, rotation:Float, flipX:Bool, flipY:Bool, scrollFactorX:Float, scrollFactorY:Float, displayOriginX:Float, displayOriginY:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, tintTL:Int, tintTR:Int, tintBL:Int, tintBR:Int, tintEffect:Float, uOffset:Float, vOffset:Float, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix, ?skipFlip:Bool):Void{})    public function batchTexture():Void;
}
