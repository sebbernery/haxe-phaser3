package phaser.gameobjects;

@:native("Phaser.GameObjects.IsoTriangle")
extern class IsoTriangle extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?size:Float, ?height:Float, ?reversed:Bool, ?fillTop:Float, ?fillLeft:Float, ?fillRight:Float);
    public var projection:Int;
    public var fillTop:Float;
    public var fillLeft:Float;
    public var fillRight:Float;
    public var showTop:Bool;
    public var showLeft:Bool;
    public var showRight:Bool;
    public var isReversed:Bool;
    public function setProjection(value:Int):Dynamic;
    public function setReversed(reversed:Bool):Dynamic;
    public function setFaces(?showTop:Bool, ?showLeft:Bool, ?showRight:Bool):Dynamic;
}
