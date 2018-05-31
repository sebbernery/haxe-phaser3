package phaser.renderer.webgl.pipelines;

@:native("Phaser.Renderer.WebGL.Pipelines.ForwardDiffuseLightPipeline")
extern class ForwardDiffuseLightPipeline extends phaser.renderer.webgl.pipelines.TextureTintPipeline {
    public function new(config:Dynamic);
    public function onBind():phaser.renderer.webgl.pipelines.ForwardDiffuseLightPipeline;
    public function drawStaticTilemapLayer(tilemap:phaser.tilemaps.StaticTilemapLayer, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
}
