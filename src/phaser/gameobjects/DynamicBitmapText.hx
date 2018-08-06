package phaser.gameobjects;

@:native("Phaser.GameObjects.DynamicBitmapText")
extern class DynamicBitmapText extends phaser.gameobjects.BitmapText {
    public function new(scene:phaser.Scene, x:Float, y:Float, font:String, ?text:Dynamic, ?size:Float, ?align:Int);
    public var scrollX:Float;
    public var scrollY:Float;
    public var cropWidth:Float;
    public var cropHeight:Float;
    public var displayCallback:DisplayCallback;
    public var callbackData:DisplayCallbackConfig;
    public function setSize(width:Float, height:Float):phaser.gameobjects.DynamicBitmapText;
    public function setDisplayCallback(callback:DisplayCallback):phaser.gameobjects.DynamicBitmapText;
    public function setScrollX(value:Float):phaser.gameobjects.DynamicBitmapText;
    public function setScrollY(value:Float):phaser.gameobjects.DynamicBitmapText;
}
