package phaser.gameobjects;

@:native("Phaser.GameObjects.DisplayList")
extern class DisplayList {
    public function new(scene:phaser.Scene);
    public var sortChildrenFlag:Bool;
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public function queueDepthSort():Void;
    public function depthSort():Void;
    public function sortByDepth(childA:phaser.gameobjects.GameObject, childB:phaser.gameobjects.GameObject):Int;
    public function sortGameObjects(gameObjects:Array<phaser.gameobjects.GameObject>):Array<Dynamic>;
    public function getTopGameObject(gameObjects:Array<phaser.gameobjects.GameObject>):phaser.gameobjects.GameObject;
}
