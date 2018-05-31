package phaser.renderer.webgl;

@:native("Phaser.Renderer.WebGL.WebGLPipeline")
extern class WebGLPipeline {
    public function new(config:Dynamic);
    public var name:String;
    public var game:phaser.Game;
    public var view:js.html.CanvasElement;
    public var resolution:Float;
    public var width:Float;
    public var height:Float;
    public var gl:js.html.webgl.RenderingContext;
    public var vertexCount:Float;
    public var vertexCapacity:Int;
    public var renderer:phaser.renderer.webgl.WebGLRenderer;
    public var vertexData:js.html.ArrayBuffer;
    public var vertexBuffer:js.html.webgl.Buffer;
    public var program:js.html.webgl.Program;
    public var attributes:Dynamic;
    public var vertexSize:Int;
    public var topology:Int;
    public var bytes:js.html.Uint8Array;
    public var vertexComponentCount:Int;
    public var flushLocked:Bool;
    public function addAttribute(name:String, size:Int, type:Int, normalized:Bool, offset:Int):phaser.renderer.webgl.WebGLPipeline;
    public function shouldFlush():Bool;
    public function resize(width:Float, height:Float, resolution:Float):phaser.renderer.webgl.WebGLPipeline;
    public function bind():phaser.renderer.webgl.WebGLPipeline;
    public function onBind():phaser.renderer.webgl.WebGLPipeline;
    public function onPreRender():phaser.renderer.webgl.WebGLPipeline;
    public function onRender(scene:phaser.Scene, camera:phaser.cameras.scene2d.Camera):phaser.renderer.webgl.WebGLPipeline;
    public function onPostRender():phaser.renderer.webgl.WebGLPipeline;
    public function flush():phaser.renderer.webgl.WebGLPipeline;
    public function destroy():phaser.renderer.webgl.WebGLPipeline;
    public function setFloat1(name:String, x:Float):phaser.renderer.webgl.WebGLPipeline;
    public function setFloat2(name:String, x:Float, y:Float):phaser.renderer.webgl.WebGLPipeline;
    public function setFloat3(name:String, x:Float, y:Float, z:Float):phaser.renderer.webgl.WebGLPipeline;
    public function setFloat4(name:String, x:Float, y:Float, z:Float, w:Float):phaser.renderer.webgl.WebGLPipeline;
    public function setInt1(name:String, x:Int):phaser.renderer.webgl.WebGLPipeline;
    public function setInt2(name:String, x:Int, y:Int):phaser.renderer.webgl.WebGLPipeline;
    public function setInt3(name:String, x:Int, y:Int, z:Int):phaser.renderer.webgl.WebGLPipeline;
    public function setInt4(name:String, x:Int, y:Int, z:Int, w:Int):phaser.renderer.webgl.WebGLPipeline;
    public function setMatrix2(name:String, transpose:Bool, matrix:js.html.Float32Array):phaser.renderer.webgl.WebGLPipeline;
    public function setMatrix3(name:String, transpose:Bool, matrix:js.html.Float32Array):phaser.renderer.webgl.WebGLPipeline;
    public function setMatrix4(name:String, transpose:Bool, matrix:js.html.Float32Array):phaser.renderer.webgl.WebGLPipeline;
}
