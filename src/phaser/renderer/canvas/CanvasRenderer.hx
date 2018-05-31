package phaser.renderer.canvas;

@:native("Phaser.Renderer.Canvas.CanvasRenderer")
extern class CanvasRenderer {
    public function new(game:phaser.Game);
    public var game:phaser.Game;
    public var type:Int;
    public var drawCount:Float;
    public var width:Float;
    public var height:Float;
    public var config:RendererConfig;
    public var scaleMode:Int;
    public var gameCanvas:js.html.CanvasElement;
    public var gameContext:js.html.CanvasRenderingContext2D;
    public var currentContext:js.html.CanvasRenderingContext2D;
    public var drawImage:Dynamic;
    public var blitImage:Dynamic;
    public var blendModes:Array<Dynamic>;
    public var currentAlpha:Float;
    public var currentBlendMode:Float;
    public var currentScaleMode:Float;
    public var snapshotCallback:SnapshotCallback;
    public var snapshotType:String;
    public var snapshotEncoder:Float;
    public function init():Void;
    public function resize(width:Int, height:Int):Void;
    public function onContextLost(callback:Dynamic):Void;
    public function onContextRestored(callback:Dynamic):Void;
    public function resetTransform():Void;
    public function setBlendMode(blendMode:Float):Float;
    public function setAlpha(alpha:Float):Float;
    public function preRender():Void;
    public function render(scene:phaser.Scene, children:phaser.gameobjects.DisplayList, interpolationPercentage:Float, camera:phaser.cameras.scene2d.Camera):Void;
    public function postRender():Void;
    public function snapshot(callback:SnapshotCallback, type:String, encoderOptions:Float):Void;
    public function destroy():Void;
}
