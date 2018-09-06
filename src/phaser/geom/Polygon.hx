package phaser.geom;

@:native("Phaser.Geom.Polygon")
extern class Polygon {
    public function new(?points:Array<phaser.geom.Point>);
    public var area:Float;
    public var points:Array<phaser.geom.Point>;
    public function Clone(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
    public function Contains(polygon:phaser.geom.Polygon, x:Float, y:Float):Bool;
    public function ContainsPoint(polygon:phaser.geom.Polygon, point:phaser.geom.Point):Bool;
    public function GetAABB(polygon:phaser.geom.Polygon, ?out:Dynamic):phaser.geom.Rectangle;
    public function GetNumberArray(polygon:phaser.geom.Polygon, ?output:Dynamic):Array<Dynamic>;
    public function GetPoints(polygon:phaser.geom.Polygon, quantity:Int, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
    public function Perimeter(polygon:phaser.geom.Polygon):Float;
    public function contains(x:Float, y:Float):Bool;
    public function setTo(points:Array<Dynamic>):phaser.geom.Polygon;
    public function calculateArea():Float;
    public function getPoints(quantity:Int, ?stepRate:Float, ?output:Array<Dynamic>):Array<phaser.geom.Point>;
    public function Reverse(polygon:phaser.geom.Polygon):phaser.geom.Polygon;
}
