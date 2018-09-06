package phaser.gameobjects;

@:native("Phaser.GameObjects.Container")
extern class Container extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?children:Array<phaser.gameobjects.GameObject>);
    public var list:Array<phaser.gameobjects.GameObject>;
    public var exclusive:Bool;
    public var maxSize:Int;
    public var position:Int;
    public var localTransform:phaser.gameobjects.components.TransformMatrix;
    public var originX:Float;
    public var originY:Float;
    public var displayOriginX:Float;
    public var displayOriginY:Float;
    public var length:Int;
    public var first:phaser.gameobjects.GameObject;
    public var last:phaser.gameobjects.GameObject;
    public var next:phaser.gameobjects.GameObject;
    public var previous:phaser.gameobjects.GameObject;
    public function setExclusive(?value:Bool):phaser.gameobjects.Container;
    public function getBounds(?output:phaser.geom.Rectangle):phaser.geom.Rectangle;
    public function pointToContainer(source:Dynamic, ?output:Dynamic):Dynamic;
    public function getBoundsTransformMatrix():phaser.gameobjects.components.TransformMatrix;
    public function add(child:Dynamic):phaser.gameobjects.Container;
    public function addAt(child:Dynamic, ?index:Int):phaser.gameobjects.Container;
    public function getAt(index:Int):phaser.gameobjects.GameObject;
    public function getIndex(child:phaser.gameobjects.GameObject):Int;
    public function sort(property:String):phaser.gameobjects.Container;
    public function getByName(name:String):phaser.gameobjects.GameObject;
    public function getRandom(?startIndex:Int, ?length:Int):phaser.gameobjects.GameObject;
    public function getFirst(?property:String, ?value:Dynamic, ?startIndex:Int, ?endIndex:Int):phaser.gameobjects.GameObject;
    public function getAll(?property:String, ?value:Dynamic, ?startIndex:Int, ?endIndex:Int):Array<phaser.gameobjects.GameObject>;
    public function count(property:String, value:Dynamic, ?startIndex:Int, ?endIndex:Int):Int;
    public function swap(child1:phaser.gameobjects.GameObject, child2:phaser.gameobjects.GameObject):phaser.gameobjects.Container;
    public function moveTo(child:phaser.gameobjects.GameObject, index:Int):phaser.gameobjects.Container;
    public function remove(child:Dynamic, ?destroyChild:Bool):phaser.gameobjects.Container;
    public function removeAt(index:Int, ?destroyChild:Bool):phaser.gameobjects.Container;
    public function removeBetween(?startIndex:Int, ?endIndex:Int, ?destroyChild:Bool):phaser.gameobjects.Container;
    public function removeAll(?destroyChild:Bool):phaser.gameobjects.Container;
    public function bringToTop(child:phaser.gameobjects.GameObject):phaser.gameobjects.Container;
    public function sendToBack(child:phaser.gameobjects.GameObject):phaser.gameobjects.Container;
    public function moveUp(child:phaser.gameobjects.GameObject):phaser.gameobjects.Container;
    public function moveDown(child:phaser.gameobjects.GameObject):phaser.gameobjects.Container;
    public function reverse():phaser.gameobjects.Container;
    public function shuffle():phaser.gameobjects.Container;
    public function replace(oldChild:phaser.gameobjects.GameObject, newChild:phaser.gameobjects.GameObject, ?destroyChild:Bool):phaser.gameobjects.Container;
    public function exists(child:phaser.gameobjects.GameObject):Bool;
    public function setAll(property:String, value:Dynamic, ?startIndex:Int, ?endIndex:Int):phaser.gameobjects.Container;
    public function each(callback:Dynamic, ?context:Dynamic, ?args:Dynamic):phaser.gameobjects.Container;
    public function iterate(callback:Dynamic, ?context:Dynamic, ?args:Dynamic):phaser.gameobjects.Container;
    public function preDestroy():Void;
    public var alpha:Float;
    public var alphaTopLeft:Float;
    public var alphaTopRight:Float;
    public var alphaBottomLeft:Float;
    public var alphaBottomRight:Float;
    public function clearAlpha():Dynamic;
    public function setAlpha(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
    public var blendMode:Dynamic;
    public function setBlendMode(value:Dynamic):Dynamic;
    public var width:Float;
    public var height:Float;
    public var displayWidth:Float;
    public var displayHeight:Float;
    public function setSize(width:Float, height:Float):Dynamic;
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    public var depth:Float;
    public function setDepth(value:Int):Dynamic;
    public var mask:Dynamic;
    public function setMask(mask:Dynamic):Dynamic;
    public function clearMask(?destroyMask:Bool):Dynamic;
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
    public var scrollFactorX:Float;
    public var scrollFactorY:Float;
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public var w:Float;
    public var scaleX:Float;
    public var scaleY:Float;
    public var angle:Int;
    public var rotation:Float;
    public function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Dynamic;
    public function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    public function setRotation(?radians:Float):Dynamic;
    public function setAngle(?degrees:Float):Dynamic;
    public function setScale(x:Float, ?y:Float):Dynamic;
    public function setX(?value:Float):Dynamic;
    public function setY(?value:Float):Dynamic;
    public function setZ(?value:Float):Dynamic;
    public function setW(?value:Float):Dynamic;
    public function getLocalTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    public function getWorldTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix, ?parentMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    public var visible:Bool;
    public function setVisible(value:Bool):Dynamic;
}