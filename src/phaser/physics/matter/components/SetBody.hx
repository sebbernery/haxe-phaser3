package phaser.physics.matter.components;

@:native("Phaser.Physics.Matter.Components.SetBody")
extern class SetBody {
    public function new();
    public function setRectangle(width:Float, height:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setCircle(radius:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setPolygon(radius:Float, sides:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setTrapezoid(width:Float, height:Float, slope:Float, options:Dynamic):phaser.gameobjects.GameObject;
    public function setExistingBody(body:matterjs.Body, ?addToWorld:Bool):phaser.gameobjects.GameObject;
    public function setBody(config:Dynamic, options:Dynamic):phaser.gameobjects.GameObject;
}
