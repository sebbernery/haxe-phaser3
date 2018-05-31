package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Origin")
extern class Origin {
    public function new();
    public var originX:Float;
    public var originY:Float;
    public var displayOriginX:Float;
    public var displayOriginY:Float;
    public function setOrigin(?x:Float, ?y:Float):Dynamic;
    public function setOriginFromFrame():Dynamic;
    public function setDisplayOrigin(?x:Float, ?y:Float):Dynamic;
    public function updateDisplayOrigin():Dynamic;
}
