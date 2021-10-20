package spine;

@:native("SpinePlugin.SpineContainer")
/**
 * @extends phaser.gameobjects.components.BlendMode
 * @extends phaser.gameobjects.components.AlphaSingle
 * @extends phaser.gameobjects.components.ComputedSize
 * @extends phaser.gameobjects.components.Depth
 * @extends phaser.gameobjects.components.Mask
 * @extends phaser.gameobjects.components.Transform
 * @extends phaser.gameobjects.components.Visible 
*/
extern class SpineContainer extends phaser.gameobjects.Container 
{
    public function new (scene: phaser.Scene,
         pluginManager: SpinePlugin, ?x: Int, ?y: Int, ?children: Array<SpineGameObject>);

    // public var list: Array<SpineGameObject>;

    // public var exclusive: Bool;

    // public var maxSize: Float;
    // public var position: Float;

    // public var localTransform: phaser.gameobjects.components.TransformMatrix;

    // public var scrollFactorX: Float;
    // public var scrollFactorY: Float;

    // public var  originX(default, never): Float;
    // public var  originY(default, never): Float;
    // public var  displayOriginX(default, never): Float;
    // public var  displayOriginY(default, never): Float;
    
    public function setExclusive(?value: Bool): SpineContainer;
    public function getBounds(?output: phaser.geom.Rectangle): phaser.geom.Rectangle;
    public function pointToContainer(source: haxe.ds.Either<phaser.geom.Point, phaser.math.Vector2>, ?output: haxe.ds.Either<phaser.geom.Point, phaser.math.Vector2>): haxe.ds.Either<phaser.geom.Point, phaser.math.Vector2>;
    public function getBoundsTransformMatrix(): phaser.gameobjects.components.TransformMatrix;
    public function add(child: haxe.ds.Either<SpineGameObject, Array<SpineGameObject>>): SpineContainer;
    public function addAt(child: haxe.ds.Either<SpineGameObject, Array<SpineGameObject>>, ?index: Float): SpineContainer;
    public function getAt(index: Float): SpineGameObject;
    public function getIndex(child: SpineGameObject): Float;
    public function sort(property: String, ?handler: Any): SpineContainer;
    public function getByName(name: String): SpineGameObject;
    public function getRandom(?startIndex: Float, ?length: Float): SpineGameObject;
    public function getFirst(property: String, value: Any, ?startIndex: Float, ?endIndex: Float): SpineGameObject;
    public function getAll(?property: String, ?value: Any, ?startIndex: Float, ?endIndex: Float): Array<SpineGameObject>;
    public function count(property: String, value: Any, ?startIndex: Float, ?endIndex: Float): Float;
    public function swap(child1: SpineGameObject, child2: SpineGameObject): SpineContainer;
    public function moveTo(child: SpineGameObject, index: Float): SpineContainer;
    public function remove(child: haxe.ds.Either<SpineGameObject, Array<SpineGameObject>>, ?destroyChild: Bool): SpineContainer;
    public function removeAt(index: Float, ?destroyChild: Bool): SpineContainer;
    public function removeBetween(?startIndex: Float, ?endIndex: Float, ?destroyChild: Bool): SpineContainer;
    public function removeAll(?destroyChild: Bool): SpineContainer;
    public function bringToTop(child: SpineGameObject): SpineContainer;
    public function sendToBack(child: SpineGameObject): SpineContainer;
    public function moveUp(child: SpineGameObject): SpineContainer;
    public function moveDown(child: SpineGameObject): SpineContainer;
    public function reverse(): SpineContainer;
    public function shuffle(): SpineContainer;
    public function replace(oldChild: SpineGameObject, newChild: SpineGameObject, ?destroyChild: Bool): SpineContainer;
    public function exists(child: SpineGameObject): Bool;
    public function setAll(property: String, value: Any, ?startIndex: Float, ?endIndex: Float): SpineContainer;
    public function each(callback: (spine:SpineGameObject) -> Void, ?context: Any, ...args: Any): SpineContainer;
    public function iterate(callback: (spine:SpineGameObject) -> Void, ?context: Any, ...args: Any): SpineContainer;
    public function setScrollFactor(x: Float, ?y: Float, ?updateChildren: Bool): SpineContainer;

    // public var length(default, never): Float;
    // public var first(default, never): SpineGameObject;
    // public var last(default, never): SpineGameObject;
    // public var next(default, never): SpineGameObject;
    // public var previous(default, never): SpineGameObject;

    public function preDestroy(): Void;

    public function clearAlpha(): SpineContainer;
    public function setAlpha(?value: Float): SpineContainer;

    // public var alpha: Float;
    // public var blendMode: haxe.ds.Either<phaser.BlendModes, String>;

    public function setBlendMode(value: haxe.ds.Either<String, phaser.BlendModes>): SpineContainer;

    // public var width: Float;
    // public var height: Float;

    // public var displayWidth: Float;
    // public var displayHeight: Float;

    public function setSize(width: Float, height: Float): SpineContainer;
    public function setDisplaySize(width: Float, height: Float): SpineContainer;

    // public var depth: Float;

    public function setDepth(value: Float): SpineContainer;

    // public var mask: haxe.ds.Either<phaser.display.masks.BitmapMask, phaser.display.masks.GeometryMask>;

    public function setMask(mask: haxe.ds.Either<phaser.display.masks.BitmapMask, phaser.display.masks.GeometryMask>): SpineContainer;
    public function clearMask(?destroyMask: Bool): SpineContainer;
    public function createBitmapMask(?renderable: phaser.gameobjects.GameObject): phaser.display.masks.BitmapMask;
    public function createGeometryMask(?graphics: phaser.gameobjects.Graphics): phaser.display.masks.GeometryMask;

    // public var x: Float;
    // public var y: Float;
    // public var z: Float;
    // public var w: Float;

    // public var scale: Float;
    // public var scaleX: Float;
    // public var scaleY: Float;

    // public var angle: Float;
    // public var rotation: Float;

    public function setPosition(?x: Float, ?y: Float, ?z: Float, ?w: Float): SpineContainer;
    public function setRandomPosition(?x: Float, ?y: Float, ?width: Float, ?height: Float): SpineContainer;
    public function setRotation(?radians: Float): SpineContainer;
    public function setAngle(?degrees: Float): SpineContainer;
    public function setScale(x: Float, ?y: Float): SpineContainer;
    public function setX(?value: Float): SpineContainer;
    public function setY(?value: Float): SpineContainer;
    public function setZ(?value: Float): SpineContainer;
    public function setW(?value: Float): SpineContainer;

    public function getLocalTransformMatrix(?tempMatrix: phaser.gameobjects.components.TransformMatrix): phaser.gameobjects.components.TransformMatrix;
    public function getWorldTransformMatrix(?tempMatrix: phaser.gameobjects.components.TransformMatrix, ?parentMatrix: phaser.gameobjects.components.TransformMatrix): phaser.gameobjects.components.TransformMatrix;

    public function getParentRotation(): Float;

    // public var visible: Bool;

    public function setVisible(value: Bool): SpineContainer;
}

typedef SpineContainerConfig = phaser.types.gameobjects.GameObjectConfig& 
{
    ?x: Float,
    ?y: Float,
    ?children: haxe.ds.Either<SpineGameObject, Array<SpineGameObject>>
}
