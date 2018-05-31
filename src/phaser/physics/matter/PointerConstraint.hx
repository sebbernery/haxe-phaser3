package phaser.physics.matter;

@:native("Phaser.Physics.Matter.PointerConstraint")
extern class PointerConstraint {
    public function new(scene:phaser.Scene, world:phaser.physics.matter.World, options:Dynamic);
    public var scene:phaser.Scene;
    public var world:phaser.physics.matter.World;
    public var camera:phaser.cameras.scene2d.Camera;
    public var pointer:phaser.input.Pointer;
    public var active:Bool;
    public var position:phaser.math.Vector2;
    public var constraint:Dynamic;
    public function onDown(pointer:phaser.input.Pointer):Void;
    public function onUp():Void;
    public function getBodyPart(body:matterjs.Body, position:phaser.math.Vector2):Bool;
    public function update():Void;
    public function destroy():Void;
}
