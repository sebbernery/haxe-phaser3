package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Pipeline")
extern class Pipeline {
    public function new();
    public var defaultPipeline:phaser.renderer.webgl.WebGLPipeline;
    public var pipeline:phaser.renderer.webgl.WebGLPipeline;
    public function initPipeline(pipelineName:String):Bool;
    public function setPipeline(pipelineName:String):Dynamic;
    public function resetPipeline():Bool;
    public function getPipelineName():String;
}
