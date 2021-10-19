
package spine;
import spine.Spine;

/**
 * 
 * @extends Omit<phaser.gameobjects.components.ComputedSize, 'setSize'>
 * @extends phaser.gameobjects.components.Depth
 * @extends phaser.gameobjects.components.Flip
 * @extends phaser.gameobjects.components.ScrollFactor
 * @extends phaser.gameobjects.components.Transform
 * @extends phaser.gameobjects.components.Visible 
*/
@:native("SpinePlugin.SpineGameObject")
extern class SpineGameObject extends phaser.gameobjects.GameObject 
{
    public function new (scene: phaser.Scene, pluginManager: SpinePlugin, x: Float, y: Float, ?key: String, ?animationName: String, ?loop: Bool);

    public var alpha: Float;
    public var angle: Float;

    public var blendMode(default, never): Float;

    public var blue: Float;
    public var bounds: Any;
    public var displayOriginX: Float;
    public var displayOriginY: Float;
    public var drawDebug: Bool;
    public var depth: Float;
    public var displayWidth: Float;
    public var displayHeight: Float;
    public var flipX: Bool;
    public var flipY: Bool;
    public var green: Float;
    public var height: Float;
    public var plugin: SpinePlugin;
    public var preMultipliedAlpha: Bool;
    public var red: Float;
    public var root: spine.Bone;
    public var rotation: Float;
    public var scale: Float;
    public var scaleX: Float;
    public var scaleY: Float;
    public var scrollFactorX: Float;
    public var scrollFactorY: Float;
    public var skeleton: spine.Skeleton;
    public var skeletonData: spine.SkeletonData;
    // @ts-ignore - spine.AnimationState significantly different than GameObject.state
    // public var state: spine.AnimationState;
    public var stateData: spine.AnimationStateData;
    public var timeScale: Float;
    public var visible: Bool;
    public var x: Float;
    public var y: Float;
    public var z: Float;
    public var w: Float;
    public var width: Float;

    public function addAnimation(trackIndex: Float, animationName: String, ?loop: Bool, ?delay: Float): spine.TrackEntry;
    public function angleBoneToXY(bone: spine.Bone, worldX: Float, worldY: Float, ?offset: Float, ?minAngle: Float, ?maxAngle: Float): SpineGameObject;
    public function clearTrack(trackIndex: Float): SpineGameObject;
    public function clearTracks(): SpineGameObject;
    public function findAnimation(animationName: String): spine.Animation;
    public function findBone(boneName: String): spine.Bone;
    public function findBoneIndex(boneName: String): Float;
    public function findEvent(eventDataName: String): spine.EventData;
    public function findIkConstraint(constraintName: String): spine.IkConstraintData;
    public function findPathConstraint(constraintName: String): spine.PathConstraintData;
    public function findPathConstraintIndex(constraintName: String): Float;
    public function findSkin(skinName: String): spine.Skin;
    public function findSlot(slotName: String): spine.Slot;
    public function findSlotIndex(slotName: String): Float;
    public function findTransformConstraint(constraintName: String): spine.TransformConstraintData;
    public function getAnimationList(): Array<String>;
    public function getAttachment(slotIndex: Float, attachmentName: String): spine.Attachment;
    public function getAttachmentByName(slotName: String, attachmentName: String): spine.Attachment;
    public function getBoneList(): Array<String>;
    public function getBounds(): Any;
    public function getCurrentAnimation(?trackIndex: Float): spine.Animation;
    public function getLocalTransformMatrix(?tempMatrix: phaser.gameobjects.components.TransformMatrix): phaser.gameobjects.components.TransformMatrix;
    public function getParentRotation(): Float;
    public function getRootBone(): spine.Bone;
    public function getSkinList(): Array<String>;
    public function getSlotList(): Array<String>;
    public function getWorldTransformMatrix(?tempMatrix: phaser.gameobjects.components.TransformMatrix, ?parentMatrix: phaser.gameobjects.components.TransformMatrix): phaser.gameobjects.components.TransformMatrix;
    public function play(animationName: String, ?loop: Bool, ?ignoreIfPlaying: Bool): SpineGameObject;

    private function preUpdate(time: Float, delta: Float): Void;
    private function preDestroy(): Void;

    public function refresh(): SpineGameObject;
    public function resetFlip(): SpineGameObject;
    public function setAlpha(?value: Float): SpineGameObject;
    public function setAngle(?degrees: Float): SpineGameObject;
    public function setAnimation(trackIndex: Float, animationName: String, ?loop: Bool, ?ignoreIfPlaying: Bool): spine.TrackEntry;
    public function setAttachment(slotName: String, attachmentName: String): SpineGameObject;
    public function setBonesToSetupPose(): SpineGameObject;
    public function setColor(?color: Float, ?slotName: String): SpineGameObject;
    public function setDepth(value: Float): SpineGameObject;
    public function setDisplaySize(width: Float, height: Float): SpineGameObject;
    public function setEmptyAnimation(trackIndex: Float, ?mixDuration: Float): spine.TrackEntry;
    public function setFlipX(value: Bool): SpineGameObject;
    public function setFlipY(value: Bool): SpineGameObject;
    public function setFlip(x: Bool, y: Bool): SpineGameObject;
    public function setMix(fromName: String, toName: String, ?duration: Float): SpineGameObject;
    public function setOffset(?offsetX: Float, ?offsetY: Float): SpineGameObject;
    public function setPosition(?x: Float, ?y: Float, ?z: Float, ?w: Float): SpineGameObject;
    public function setRandomPosition(?x: Float, ?y: Float, ?width: Float, ?height: Float): SpineGameObject;
    public function setRotation(?radians: Float): SpineGameObject;
    public function setScale(x: Float, ?y: Float): SpineGameObject;
    public function setScrollFactor(x: Float, ?y: Float): SpineGameObject;
    public function setSize(?width: Float, ?height: Float, ?offsetX: Float, ?offsetY: Float): SpineGameObject;
    public function setSkeleton(atlasDataKey: String, skeletonJSON: Any, ?animationName: String, ?loop: Bool): SpineGameObject;
    public function setSkeletonFromJSON(atlasDataKey: String, skeletonJSON: Any, ?animationName: String, ?loop: Bool): SpineGameObject;
    public function setSkin(newSkin: spine.Skin): SpineGameObject;
    public function setSkinByName(skinName: String): SpineGameObject;
    public function setSlotsToSetupPose(): SpineGameObject;
    public function setToSetupPose(): SpineGameObject;
    public function setVisible(value: Bool): SpineGameObject;
    public function setX(?value: Float): SpineGameObject;
    public function setY(?value: Float): SpineGameObject;
    public function setZ(?value: Float): SpineGameObject;
    public function setW(?value: Float): SpineGameObject;
    public function toggleFlipX(): SpineGameObject;
    public function toggleFlipY(): SpineGameObject;
    public function updateSize(): SpineGameObject;
    public function willRender(): Bool;
}

typedef SpineGameObjectConfig = phaser.types.gameobjects.GameObjectConfig& 
{
    var ?key: String;
    var ?animationName: String;
    var ?loop: Bool;
    var ?skinName: String;
    var ?slotName: String;
    var ?attachmentName: String;
}
