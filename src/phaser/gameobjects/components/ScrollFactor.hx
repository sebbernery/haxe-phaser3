package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.ScrollFactor")
extern class ScrollFactor {
    public function new();
    public var scrollFactorX:Float;
    public var scrollFactorY:Float;
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
}
