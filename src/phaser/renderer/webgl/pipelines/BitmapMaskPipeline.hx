package phaser.renderer.webgl.pipelines;

@:native("Phaser.Renderer.WebGL.Pipelines.BitmapMaskPipeline")
extern class BitmapMaskPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:Dynamic);
    public var vertexViewF32:js.html.Float32Array;
    public var maxQuads:Float;
    public var resolutionDirty:Bool;
    public function beginMask(mask:phaser.gameobjects.GameObject, maskedObject:phaser.gameobjects.GameObject, camera:phaser.cameras.scene2d.Camera):Void;
    public function endMask(mask:phaser.gameobjects.GameObject):Void;
}
