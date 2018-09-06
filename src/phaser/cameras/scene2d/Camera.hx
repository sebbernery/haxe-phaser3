package phaser.cameras.scene2d;

@:native("Phaser.Cameras.Scene2D.Camera")
extern class Camera extends phaser.cameras.scene2d.BaseCamera {
    public function new(x:Float, y:Float, width:Float, height:Float);
    public var inputEnabled:Bool;
    public var fadeEffect:phaser.cameras.scene2d.effects.Fade;
    public var flashEffect:phaser.cameras.scene2d.effects.Flash;
    public var shakeEffect:phaser.cameras.scene2d.effects.Shake;
    public var panEffect:phaser.cameras.scene2d.effects.Pan;
    public var zoomEffect:phaser.cameras.scene2d.effects.Zoom;
    public var lerp:phaser.math.Vector2;
    public var followOffset:phaser.math.Vector2;
    public var deadzone:phaser.geom.Rectangle;
    public function setRenderToTexture(?pipeline:Dynamic):phaser.cameras.scene2d.Camera;
    public function setDeadzone(?width:Float, ?height:Float):phaser.cameras.scene2d.Camera;
    public function fadeIn(?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?callback:Dynamic, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function fadeOut(?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?callback:Dynamic, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function fadeFrom(?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function fade(?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function flash(?duration:Int, ?red:Int, ?green:Int, ?blue:Int, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function shake(?duration:Int, ?intensity:Float, ?force:Bool, ?callback:Dynamic, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function pan(x:Float, y:Float, ?duration:Int, ?ease:Dynamic, ?force:Bool, ?callback:CameraPanCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function zoomTo(zoom:Float, ?duration:Int, ?ease:Dynamic, ?force:Bool, ?callback:CameraPanCallback, ?context:Dynamic):phaser.cameras.scene2d.Camera;
    public function setLerp(?x:Float, ?y:Float):Dynamic;
    public function setFollowOffset(?x:Float, ?y:Float):Dynamic;
    public function startFollow(target:Dynamic, ?roundPixels:Bool, ?lerpX:Float, ?lerpY:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
    public function stopFollow():phaser.cameras.scene2d.Camera;
    public function resetFX():phaser.cameras.scene2d.Camera;
    public var flipX:Bool;
    public var flipY:Bool;
    public function toggleFlipX():Dynamic;
    public function toggleFlipY():Dynamic;
    public function setFlipX(value:Bool):Dynamic;
    public function setFlipY(value:Bool):Dynamic;
    public function setFlip(x:Bool, y:Bool):Dynamic;
    public function resetFlip():Dynamic;
    public var tintFill:Bool;
    public var tintTopLeft:Int;
    public var tintTopRight:Int;
    public var tintBottomLeft:Int;
    public var tintBottomRight:Int;
    public var tint:Int;
    public var isTinted:Bool;
    public function clearTint():Dynamic;
    public function setTint(?topLeft:Int, ?topRight:Int, ?bottomLeft:Int, ?bottomRight:Int):Dynamic;
    public function setTintFill(?topLeft:Int, ?topRight:Int, ?bottomLeft:Int, ?bottomRight:Int):Dynamic;
}