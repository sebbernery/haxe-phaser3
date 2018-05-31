package phaser.physics.impact;

@:native("Phaser.Physics.Impact.Factory")
extern class Factory {
    public function new(world:phaser.physics.impact.World);
    public var world:phaser.physics.impact.World;
    public var sys:phaser.scenes.Systems;
    public function body(x:Float, y:Float, width:Float, height:Float):phaser.physics.impact.ImpactBody;
    public function existing(gameObject:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    public function image(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.physics.impact.ImpactImage;
    public function sprite(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.physics.impact.ImpactSprite;
    public function destroy():Void;
}
