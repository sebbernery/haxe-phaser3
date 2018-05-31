package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.GetBounds")
extern class GetBounds {
    public function new();
    public function getCenter(?output:Dynamic):phaser.math.Vector2;
    public function getTopLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getTopRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getBottomLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getBottomRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getBounds(?output:Dynamic):phaser.geom.Rectangle;
}
