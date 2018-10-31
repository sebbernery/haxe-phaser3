package phaser.gameobjects;

@:native("Phaser.GameObjects.Grid")
extern class Grid extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?cellWidth:Float, ?cellHeight:Float, ?fillColor:Float, ?fillAlpha:Float, ?outlineFillColor:Float, ?outlineFillAlpha:Float);
    public var cellWidth:Float;
    public var cellHeight:Float;
    public var showCells:Bool;
    public var outlineFillColor:Float;
    public var outlineFillAlpha:Float;
    public var showOutline:Bool;
    public var showAltCells:Bool;
    public var altFillColor:Float;
    public var altFillAlpha:Float;
    public function setAltFillStyle(?fillColor:Float, ?fillAlpha:Float):Dynamic;
    public function setOutlineStyle(?fillColor:Float, ?fillAlpha:Float):Dynamic;
}
