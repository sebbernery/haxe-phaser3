package phaser.gameobjects;

@:native("Phaser.GameObjects.PathFollower")
extern class PathFollower extends phaser.gameobjects.Sprite {
    public function new(scene:phaser.Scene, path:phaser.curves.Path, x:Float, y:Float, texture:String, ?frame:Dynamic);
    public var path:phaser.curves.Path;
    public var rotateToPath:Bool;
    public var pathRotationVerticalAdjust:Bool;
    public var pathRotationOffset:Float;
    public var pathOffset:phaser.math.Vector2;
    public var pathVector:phaser.math.Vector2;
    public var pathTween:phaser.tweens.Tween;
    public var pathConfig:PathConfig;
    public function setPath(path:phaser.curves.Path, ?config:PathConfig):phaser.gameobjects.PathFollower;
    public function setRotateToPath(value:Float, ?offset:Float, ?verticalAdjust:Bool):phaser.gameobjects.PathFollower;
    public function isFollowing():Bool;
    public function startFollow(?config:Dynamic, ?startAt:Float):phaser.gameobjects.PathFollower;
    public function pauseFollow():phaser.gameobjects.PathFollower;
    public function resumeFollow():phaser.gameobjects.PathFollower;
    public function stopFollow():phaser.gameobjects.PathFollower;
}
