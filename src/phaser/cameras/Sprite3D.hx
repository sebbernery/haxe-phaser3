package phaser.cameras;

@:native("Phaser.Cameras.Sprite3D")
class Sprite3D{
    static public var scene:phaser.Scene;
    static public var displayList:phaser.gameobjects.DisplayList;
    static public var updateList:phaser.gameobjects.UpdateList;
    static public var name:String;
    static public var direction:phaser.math.Vector3;
    static public var up:phaser.math.Vector3;
    static public var position:phaser.math.Vector3;
    static public var pixelScale:Float;
    static public var projection:phaser.math.Matrix4;
    static public var view:phaser.math.Matrix4;
    static public var combined:phaser.math.Matrix4;
    static public var invProjectionView:phaser.math.Matrix4;
    static public var near:Float;
    static public var far:Float;
    static public var ray:RayDef;
    static public var viewportWidth:Float;
    static public var viewportHeight:Float;
    static public var billboardMatrixDirty:Bool;
    static public var children:Dynamic;
}
