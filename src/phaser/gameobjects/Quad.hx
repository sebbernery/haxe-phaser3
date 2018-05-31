package phaser.gameobjects;

@:native("Phaser.GameObjects.Quad")
extern class Quad extends phaser.gameobjects.Mesh {
    public function new(scene:phaser.Scene, x:Float, y:Float, texture:String, ?frame:Dynamic);
    public var topLeftX:Float;
    public var topLeftY:Float;
    public var topRightX:Float;
    public var topRightY:Float;
    public var bottomLeftX:Float;
    public var bottomLeftY:Float;
    public var bottomRightX:Float;
    public var bottomRightY:Float;
    public var topLeftAlpha:Float;
    public var topRightAlpha:Float;
    public var bottomLeftAlpha:Float;
    public var bottomRightAlpha:Float;
    public var topLeftColor:Float;
    public var topRightColor:Float;
    public var bottomLeftColor:Float;
    public var bottomRightColor:Float;
    public function setTopLeft(x:Float, y:Float):phaser.gameobjects.Quad;
    public function setTopRight(x:Float, y:Float):phaser.gameobjects.Quad;
    public function setBottomLeft(x:Float, y:Float):phaser.gameobjects.Quad;
    public function setBottomRight(x:Float, y:Float):phaser.gameobjects.Quad;
    public function resetPosition():phaser.gameobjects.Quad;
    public function resetAlpha():phaser.gameobjects.Quad;
    public function resetColors():phaser.gameobjects.Quad;
    public function reset():phaser.gameobjects.Quad;
}
