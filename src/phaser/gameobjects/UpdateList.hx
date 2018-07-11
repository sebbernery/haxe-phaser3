package phaser.gameobjects;

@:native("Phaser.GameObjects.UpdateList")
extern class UpdateList {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var length:Int;
    public function add(child:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    public function preUpdate():Void;
    public function update(time:Float, delta:Float):Void;
    public function remove(child:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    public function removeAll():phaser.gameobjects.UpdateList;
    public function shutdown():Void;
    public function destroy():Void;
}
