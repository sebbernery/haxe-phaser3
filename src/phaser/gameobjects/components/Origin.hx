package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Origin")
extern class Origin {
    public function new();
    public var originX:Float;
    public var originY:Float;
    public var displayOriginX:Float;
    public var displayOriginY:Float;
    public function setAlpha(?value:Float):Dynamic;
    public function setOriginFromFrame():Dynamic;
    public function setDisplayOrigin(?x:Float, ?y:Float):Dynamic;
    public function updateDisplayOrigin():Dynamic;
    @:overload(function(?x:Float, ?y:Float):this{})    @:overload(function(?x:Float, ?y:Float):this{})    public function setOrigin():Void;
}
