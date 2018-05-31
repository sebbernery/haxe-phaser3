package phaser.gameobjects.blitter;

@:native("Phaser.GameObjects.Blitter.Bob")
extern class Bob {
    public function new(blitter:phaser.gameobjects.Blitter, x:Float, y:Float, frame:Dynamic, visible:Bool);
    public var parent:phaser.gameobjects.Blitter;
    public var x:Float;
    public var y:Float;
    public var frame:phaser.textures.Frame;
    public var data:Dynamic;
    public var flipX:Bool;
    public var flipY:Bool;
    public var visible:Bool;
    public var alpha:Float;
    public function setFrame(?frame:Dynamic):phaser.gameobjects.blitter.Bob;
    public function resetFlip():phaser.gameobjects.blitter.Bob;
    public function reset(x:Float, y:Float, ?frame:Dynamic):phaser.gameobjects.blitter.Bob;
    public function setFlipX(value:Bool):phaser.gameobjects.blitter.Bob;
    public function setFlipY(value:Bool):phaser.gameobjects.blitter.Bob;
    public function setFlip(x:Bool, y:Bool):phaser.gameobjects.blitter.Bob;
    public function setVisible(value:Bool):phaser.gameobjects.blitter.Bob;
    public function setAlpha(value:Float):phaser.gameobjects.blitter.Bob;
    public function destroy():Void;
}
