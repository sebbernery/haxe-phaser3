package phaser.gameobjects;

@:native("Phaser.GameObjects.GameObject")
extern class GameObject extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene, type:String);
    public var scene:phaser.Scene;
    public var type:String;
    public var parentContainer:phaser.gameobjects.Container;
    public var name:String;
    public var active:Bool;
    public var tabIndex:Int;
    public var data:phaser.data.DataManager;
    public var renderFlags:Int;
    public var cameraFilter:Float;
    public var input:phaser.input.InteractiveObject;
    public var body:Dynamic;
    public var ignoreDestroy:Bool;
    public function setActive(value:Bool):phaser.gameobjects.GameObject;
    public function setName(value:String):phaser.gameobjects.GameObject;
    public function setDataEnabled():phaser.gameobjects.GameObject;
    public function setData(key:Dynamic, data:Dynamic):Dynamic;
    public function getData(key:Dynamic):Dynamic;
    public function setInteractive(?shape:Dynamic, ?callback:HitAreaCallback, ?dropZone:Bool):phaser.gameobjects.GameObject;
    public function disableInteractive():phaser.gameobjects.GameObject;
    public function removeInteractive():phaser.gameobjects.GameObject;
    public function update():Void;
    public function toJSON():JSONGameObject;
    public function willRender():Bool;
    public function getIndexList():Array<Int>;
}
