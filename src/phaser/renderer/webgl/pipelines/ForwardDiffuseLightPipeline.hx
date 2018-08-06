package phaser.renderer.webgl.pipelines;

@:native("Phaser.Renderer.WebGL.Pipelines.ForwardDiffuseLightPipeline")
extern class ForwardDiffuseLightPipeline extends phaser.renderer.webgl.pipelines.TextureTintPipeline {
    public function new(config:Dynamic);
    public function boot():Void;
    public function onBind(?gameObject:phaser.gameobjects.GameObject):phaser.renderer.webgl.pipelines.ForwardDiffuseLightPipeline;
    public function setNormalMap(gameObject:phaser.gameobjects.GameObject):Void;
}
