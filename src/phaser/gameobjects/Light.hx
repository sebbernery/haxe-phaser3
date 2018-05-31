package phaser.gameobjects;

@:native("Phaser.GameObjects.Light")
extern class Light {
    public function new(x:Float, y:Float, radius:Float, r:Float, g:Float, b:Float, intensity:Float);
    public var x:Float;
    public var y:Float;
    public var radius:Float;
    public var r:Float;
    public var g:Float;
    public var b:Float;
    public var intensity:Float;
    public var scrollFactorX:Float;
    public var scrollFactorY:Float;
    public function set(x:Float, y:Float, radius:Float, r:Float, g:Float, b:Float, intensity:Float):phaser.gameobjects.Light;
    public function setScrollFactor(x:Float, y:Float):phaser.gameobjects.Light;
    public function setColor(rgb:Float):phaser.gameobjects.Light;
    public function setIntensity(intensity:Float):phaser.gameobjects.Light;
    public function setPosition(x:Float, y:Float):phaser.gameobjects.Light;
    public function setRadius(radius:Float):phaser.gameobjects.Light;
}
