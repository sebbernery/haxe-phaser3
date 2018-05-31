package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.MatrixStack")
extern class MatrixStack {
    public function new();
    public function initMatrixStack():Dynamic;
    public function save():Dynamic;
    public function restore():Dynamic;
    public function loadIdentity():Dynamic;
    public function transform(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Dynamic;
    public function setTransform(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Dynamic;
    public function translate(x:Float, y:Float):Dynamic;
    public function scale(x:Float, y:Float):Dynamic;
    public function rotate(t:Float):Dynamic;
}
