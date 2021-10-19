package spine;

@:native("spine.Animation")
extern class Animation {
    public var name: String;
    public var timelines: Array<Timeline>;
    public var timelineIds: Array<Bool>;
    public var duration: Float;
    public function new(name: String, timelines: Array<Timeline>, duration: Float);
    public function hasTimeline(id: Float): Bool;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, loop: Bool, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
    public static function binarySearch(values: ArrayLike<Float>, target: Float, ?step: Float): Float;
    public static function linearSearch(values: ArrayLike<Float>, target: Float, step: Float): Float;
}

@:native("spine.Timeline")
extern interface Timeline {
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
    public function getPropertyId(): Float;
}
enum abstract MixBlend(Int) from Int to Int {
    var setup = 0;
    var first = 1;
    var replace = 2;
    var add = 3;
}
enum abstract MixDirection(Int) from Int to Int {
    var mixIn = 0;
    var mixOut = 1;
}
enum abstract TimelineType(Int) from Int to Int {
    var rotate = 0;
    var translate = 1;
    var scale = 2;
    var shear = 3;
    var attachment = 4;
    var color = 5;
    var deform = 6;
    var event = 7;
    var drawOrder = 8;
    var ikConstraint = 9;
    var transformConstraint = 10;
    var pathConstraintPosition = 11;
    var pathConstraintSpacing = 12;
    var pathConstraintMix = 13;
    var twoColor = 14;
}


@:native("spine.CurveTimeline")
extern abstract class CurveTimeline implements Timeline {
    public static var LINEAR: Float;
    public static var STEPPED: Float;
    public static var BEZIER: Float;
    public static var BEZIER_SIZE: Float;
    private var curves : Any;
    public abstract function getPropertyId(): Float;
    public function new(frameCount: Float);
    public function getFrameCount(): Float;
    public function setLinear(frameIndex: Float): Void;
    public function setStepped(frameIndex: Float): Void;
    public function getCurveType(frameIndex: Float): Float;
    public function setCurve(frameIndex: Float, cx1: Float, cy1: Float, cx2: Float, cy2: Float): Void;
    public function getCurvePercent(frameIndex: Float, percent: Float): Float;
    public abstract function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.RotateTimeline")
extern class RotateTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_ROTATION: Float;
    public static var ROTATION: Float;
    public var boneIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, degrees: Float): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.TranslateTimeline")
extern class TranslateTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_X: Float;
    public static var PREV_Y: Float;
    public static var X: Float;
    public static var Y: Float;
    public var boneIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, x: Float, y: Float): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.ScaleTimeline")
extern class ScaleTimeline extends TranslateTimeline {
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.ShearTimeline")
extern class ShearTimeline extends TranslateTimeline {
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.ColorTimeline")
extern class ColorTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_R: Float;
    public static var PREV_G: Float;
    public static var PREV_B: Float;
    public static var PREV_A: Float;
    public static var R: Float;
    public static var G: Float;
    public static var B: Float;
    public static var A: Float;
    public var slotIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, r: Float, g: Float, b: Float, a: Float): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.TwoColorTimeline")
extern class TwoColorTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_R: Float;
    public static var PREV_G: Float;
    public static var PREV_B: Float;
    public static var PREV_A: Float;
    public static var PREV_R2: Float;
    public static var PREV_G2: Float;
    public static var PREV_B2: Float;
    public static var R: Float;
    public static var G: Float;
    public static var B: Float;
    public static var A: Float;
    public static var R2: Float;
    public static var G2: Float;
    public static var B2: Float;
    public var slotIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, r: Float, g: Float, b: Float, a: Float, r2: Float, g2: Float, b2: Float): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.AttachmentTimeline")
extern class AttachmentTimeline implements Timeline {
    public var slotIndex: Float;
    public var frames: ArrayLike<Float>;
    public var attachmentNames: Array<String>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function getFrameCount(): Float;
    public function setFrame(frameIndex: Float, time: Float, attachmentName: String): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, events: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.DeformTimeline")
extern class DeformTimeline extends CurveTimeline {
    public var slotIndex: Float;
    public var attachment: VertexAttachment;
    public var frames: ArrayLike<Float>;
    public var frameVertices: Array<ArrayLike<Float>>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, vertices: ArrayLike<Float>): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.EventTimeline")
extern class EventTimeline implements Timeline {
    public var frames: ArrayLike<Float>;
    public var events: Array<Event>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function getFrameCount(): Float;
    public function setFrame(frameIndex: Float, event: Event): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.DrawOrderTimeline")
extern class DrawOrderTimeline implements Timeline {
    public var frames: ArrayLike<Float>;
    public var drawOrders: Array<Array<Float>>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function getFrameCount(): Float;
    public function setFrame(frameIndex: Float, time: Float, drawOrder: Array<Float>): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.IkConstraintTimeline")
extern class IkConstraintTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_MIX: Float;
    public static var PREV_SOFTNESS: Float;
    public static var PREV_BEND_DIRECTION: Float;
    public static var PREV_COMPRESS: Float;
    public static var PREV_STRETCH: Float;
    public static var MIX: Float;
    public static var SOFTNESS: Float;
    public static var BEND_DIRECTION: Float;
    public static var COMPRESS: Float;
    public static var STRETCH: Float;
    public var ikConstraintIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, mix: Float, softness: Float, bendDirection: Float, compress: Bool, stretch: Bool): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}


@:native("spine.TransformConstraintTimeline")
extern class TransformConstraintTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_ROTATE: Float;
    public static var PREV_TRANSLATE: Float;
    public static var PREV_SCALE: Float;
    public static var PREV_SHEAR: Float;
    public static var ROTATE: Float;
    public static var TRANSLATE: Float;
    public static var SCALE: Float;
    public static var SHEAR: Float;
    public var transformConstraintIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, rotateMix: Float, translateMix: Float, scaleMix: Float, shearMix: Float): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.PathConstraintPositionTimeline")
extern class PathConstraintPositionTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_VALUE: Float;
    public static var VALUE: Float;
    public var pathConstraintIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, value: Float): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.PathConstraintSpacingTimeline")
extern class PathConstraintSpacingTimeline extends PathConstraintPositionTimeline {
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}

@:native("spine.PathConstraintMixTimeline")
extern class PathConstraintMixTimeline extends CurveTimeline {
    public static var ENTRIES: Float;
    public static var PREV_TIME: Float;
    public static var PREV_ROTATE: Float;
    public static var PREV_TRANSLATE: Float;
    public static var ROTATE: Float;
    public static var TRANSLATE: Float;
    public var pathConstraintIndex: Float;
    public var frames: ArrayLike<Float>;
    public function new(frameCount: Float);
    public function getPropertyId(): Float;
    public function setFrame(frameIndex: Float, time: Float, rotateMix: Float, translateMix: Float): Void;
    public function apply(skeleton: Skeleton, lastTime: Float, time: Float, firedEvents: Array<Event>, alpha: Float, blend: MixBlend, direction: MixDirection): Void;
}



@:native("spine.AnimationState")
extern class AnimationState 
{
    public static var emptyAnimation: Animation;
    public static var SUBSEQUENT: Float;
    public static var FIRST: Float;
    public static var HOLD: Float;
    public static var HOLD_MIX: Float;
    public static var NOT_LAST: Float;
    public var data: AnimationStateData;
    public var tracks: Array<TrackEntry>;
    public var events: Array<Event>;
    public var listeners: Array<AnimationStateListener2>;
    public var queue: EventQueue;
    public var propertyIDs: IntSet;
    public var animationsChanged: Bool;
    public var timeScale: Float;
    public var trackEntryPool: Pool<TrackEntry>;
    public function new(data: AnimationStateData);
    public function update(delta: Float): Void;
    public function updateMixingFrom(to: TrackEntry, delta: Float): Bool;
    public function apply(skeleton: Skeleton): Bool;
    public function applyMixingFrom(to: TrackEntry, skeleton: Skeleton, blend: MixBlend): Float;
    public function applyRotateTimeline(timeline: Timeline, skeleton: Skeleton, time: Float, alpha: Float, blend: MixBlend, timelinesRotation: Array<Float>, i: Float, firstFrame: Bool): Void;
    public function queueEvents(entry: TrackEntry, animationTime: Float): Void;
    public function clearTracks(): Void;
    public function clearTrack(trackIndex: Float): Void;
    public function setCurrent(index: Float, current: TrackEntry, interrupt: Bool): Void;
    public function setAnimation(trackIndex: Float, animationName: String, loop: Bool): TrackEntry;
    public function setAnimationWith(trackIndex: Float, animation: Animation, loop: Bool): TrackEntry;
    public function addAnimation(trackIndex: Float, animationName: String, loop: Bool, delay: Float): TrackEntry;
    public function addAnimationWith(trackIndex: Float, animation: Animation, loop: Bool, delay: Float): TrackEntry;
    public function setEmptyAnimation(trackIndex: Float, mixDuration: Float): TrackEntry;
    public function addEmptyAnimation(trackIndex: Float, mixDuration: Float, delay: Float): TrackEntry;
    public function setEmptyAnimations(mixDuration: Float): Void;
    public function expandToIndex(index: Float): TrackEntry;
    public function trackEntry(trackIndex: Float, animation: Animation, loop: Bool, last: TrackEntry): TrackEntry;
    public function disposeNext(entry: TrackEntry): Void;
    public function _animationsChanged(): Void;
    public function computeHold(entry: TrackEntry): Void;
    public function computeNotLast(entry: TrackEntry): Void;
    public function getCurrent(trackIndex: Float): TrackEntry;
    public function addListener(listener: AnimationStateListener2): Void;
    public function removeListener(listener: AnimationStateListener2): Void;
    public function clearListeners(): Void;
    public function clearListenerNotifications(): Void;
}

@:native("spine.TrackEntry")
extern class TrackEntry {
    public var animation: Animation;
    public var next: TrackEntry;
    public var mixingFrom: TrackEntry;
    public var mixingTo: TrackEntry;
    public var listener: AnimationStateListener2;
    public var trackIndex: Float;
    public var loop: Bool;
    public var holdPrevious: Bool;
    public var eventThreshold: Float;
    public var attachmentThreshold: Float;
    public var drawOrderThreshold: Float;
    public var animationStart: Float;
    public var animationEnd: Float;
    public var animationLast: Float;
    public var nextAnimationLast: Float;
    public var delay: Float;
    public var trackTime: Float;
    public var trackLast: Float;
    public var nextTrackLast: Float;
    public var trackEnd: Float;
    public var timeScale: Float;
    public var alpha: Float;
    public var mixTime: Float;
    public var mixDuration: Float;
    public var interruptAlpha: Float;
    public var totalAlpha: Float;
    public var mixBlend: MixBlend;
    public var timelineMode: Array<Float>;
    public var timelineHoldMix: Array<TrackEntry>;
    public var timelinesRotation: Array<Float>;
    public function reset(): Void;
    public function getAnimationTime(): Float;
    public function setAnimationLast(animationLast: Float): Void;
    public function isComplete(): Bool;
    public function resetRotationDirections(): Void;
}

@:native("spine.EventQueue")
extern class EventQueue {
    public var objects: Array<Any>;
    public var drainDisabled: Bool;
    public var animState: AnimationState;
    public function new(animState: AnimationState);
    public function start(entry: TrackEntry): Void;
    public function interrupt(entry: TrackEntry): Void;
    public function end(entry: TrackEntry): Void;
    public function dispose(entry: TrackEntry): Void;
    public function complete(entry: TrackEntry): Void;
    public function event(entry: TrackEntry, event: Event): Void;
    public function drain(): Void;
    public function clear(): Void;
}
enum abstract EventType(Int) from Int to Int 
{
    var start = 0;
    var interrupt = 1;
    var end = 2;
    var dispose = 3;
    var complete = 4;
    var event = 5;
}

@:native("spine.AnimationStateListener2")
extern interface AnimationStateListener2 {
    public function start(entry: TrackEntry): Void;
    public function interrupt(entry: TrackEntry): Void;
    public function end(entry: TrackEntry): Void;
    public function dispose(entry: TrackEntry): Void;
    public function complete(entry: TrackEntry): Void;
    public function event(entry: TrackEntry, event: Event): Void;
}

@:native("spine.AnimationStateAdapter2")
extern abstract class AnimationStateAdapter2 implements AnimationStateListener2 {
    public function start(entry: TrackEntry): Void;
    public function interrupt(entry: TrackEntry): Void;
    public function end(entry: TrackEntry): Void;
    public function dispose(entry: TrackEntry): Void;
    public function complete(entry: TrackEntry): Void;
    public function event(entry: TrackEntry, event: Event): Void;
}


@:native("spine.AnimationStateData")
extern class AnimationStateData {
    public var skeletonData: SkeletonData;
    public var animationToMixTime: haxe.ds.StringMap<Float>;
    public var defaultMix: Float;
    public function new(skeletonData: SkeletonData);
    public function setMix(fromName: String, toName: String, duration: Float): Void;
    public function setMixWith(from: Animation, to: Animation, duration: Float): Void;
    public function getMix(from: Animation, to: Animation): Float;
}


@:native("spine.AssetManager")
extern class AssetManager implements Disposable {
    private var pathPrefix : Any;
    private var textureLoader : Any;
    private var assets : Any;
    private var errors : Any;
    private var toLoad : Any;
    private var loaded : Any;
    public function new(textureLoader: (image: js.html.ImageElement) -> Any, ?pathPrefix: String);
    private static var downloadText : Any;
    private static var downloadBinary : Any;
    public function loadBinary(path: String, ?success: (path: String, binary: js.lib.Uint8Array) -> Void, ?error: (path: String, error: String) -> Void): Void;
    public function loadText(path: String, ?success: (path: String, text: String) -> Void, ?error: (path: String, error: String) -> Void): Void;
    public function loadTexture(path: String, ?success: (path: String, image: js.html.ImageElement) -> Void, ?error: (path: String, error: String) -> Void): Void;
    public function loadTextureData(path: String, data: String, ?success: (path: String, image: js.html.ImageElement) -> Void, ?error: (path: String, error: String) -> Void): Void;
    public function loadTextureAtlas(path: String, ?success: (path: String, atlas: TextureAtlas) -> Void, ?error: (path: String, error: String) -> Void): Void;
    public function get(path: String): Any;
    public function remove(path: String): Void;
    public function removeAll(): Void;
    public function isLoadingComplete(): Bool;
    public function getToLoad(): Float;
    public function getLoaded(): Float;
    public function dispose(): Void;
    public function hasErrors(): Bool;
    public function getErrors(): haxe.ds.StringMap<String>;
}


@:native("spine.AtlasAttachmentLoader")
extern class AtlasAttachmentLoader implements AttachmentLoader {
    public var atlas: TextureAtlas;
    public function new(atlas: TextureAtlas);
    public function newRegionAttachment(skin: Skin, name: String, path: String): RegionAttachment;
    public function newMeshAttachment(skin: Skin, name: String, path: String): MeshAttachment;
    public function newBoundingBoxAttachment(skin: Skin, name: String): BoundingBoxAttachment;
    public function newPathAttachment(skin: Skin, name: String): PathAttachment;
    public function newPointAttachment(skin: Skin, name: String): PointAttachment;
    public function newClippingAttachment(skin: Skin, name: String): ClippingAttachment;
}

enum abstract BlendMode(Int) from Int to Int 
{
    public var Normal = 0;
    public var Additive = 1;
    public var Multiply = 2;
    public var Screen = 3;
}


@:native("spine.Bone")
extern class Bone implements Updatable {
    public var data: BoneData;
    public var skeleton: Skeleton;
    public var parent: Bone;
    public var children: Array<Bone>;
    public var x: Float;
    public var y: Float;
    public var rotation: Float;
    public var scaleX: Float;
    public var scaleY: Float;
    public var shearX: Float;
    public var shearY: Float;
    public var ax: Float;
    public var ay: Float;
    public var arotation: Float;
    public var ascaleX: Float;
    public var ascaleY: Float;
    public var ashearX: Float;
    public var ashearY: Float;
    public var appliedValid: Bool;
    public var a: Float;
    public var b: Float;
    public var worldX: Float;
    public var c: Float;
    public var d: Float;
    public var worldY: Float;
    public var sorted: Bool;
    public var active: Bool;
    public function new(data: BoneData, skeleton: Skeleton, parent: Bone);
    public function isActive(): Bool;
    public function update(): Void;
    public function updateWorldTransform(): Void;
    public function updateWorldTransformWith(x: Float, y: Float, rotation: Float, scaleX: Float, scaleY: Float, shearX: Float, shearY: Float): Void;
    public function setToSetupPose(): Void;
    public function getWorldRotationX(): Float;
    public function getWorldRotationY(): Float;
    public function getWorldScaleX(): Float;
    public function getWorldScaleY(): Float;
    public function updateAppliedTransform(): Void;
    public function worldToLocal(world: Vector2): Vector2;
    public function localToWorld(local: Vector2): Vector2;
    public function worldToLocalRotation(worldRotation: Float): Float;
    public function localToWorldRotation(localRotation: Float): Float;
    public function rotateWorld(degrees: Float): Void;
}


@:native("spine.BoneData")
extern class BoneData {
    public var index: Float;
    public var name: String;
    public var parent: BoneData;
    public var length: Float;
    public var x: Float;
    public var y: Float;
    public var rotation: Float;
    public var scaleX: Float;
    public var scaleY: Float;
    public var shearX: Float;
    public var shearY: Float;
    public var transformMode: TransformMode;
    public var skinRequired: Bool;
    public var color: Color;
    public function new(index: Float, name: String, parent: BoneData);
}
enum abstract TransformMode(Int) from Int to Int 
{
    var Normal = 0;
    var OnlyTranslation = 1;
    var NoRotationOrReflection = 2;
    var NoScale = 3;
    var NoScaleOrReflection = 4;
}


@:native("spine.ConstraintData")
extern abstract class ConstraintData {
    public var name: String;
    public var order: Float;
    public var skinRequired: Bool;
    public function new(name: String, order: Float, skinRequired: Bool);
}


@:native("spine.Event")
extern class Event {
    public var data: EventData;
    public var intValue: Float;
    public var floatValue: Float;
    public var stringValue: String;
    public var time: Float;
    public var volume: Float;
    public var balance: Float;
    public function new(time: Float, data: EventData);
}


@:native("spine.EventData")
extern class EventData {
    public var name: String;
    public var intValue: Float;
    public var floatValue: Float;
    public var stringValue: String;
    public var audioPath: String;
    public var volume: Float;
    public var balance: Float;
    public function new(name: String);
}


@:native("spine.IkConstraint")
extern class IkConstraint implements Updatable {
    public var data: IkConstraintData;
    public var bones: Array<Bone>;
    public var target: Bone;
    public var bendDirection: Float;
    public var compress: Bool;
    public var stretch: Bool;
    public var mix: Float;
    public var softness: Float;
    public var active: Bool;
    public function new(data: IkConstraintData, skeleton: Skeleton);
    public function isActive(): Bool;
    public function apply(): Void;
    public function update(): Void;
    public function apply1(bone: Bone, targetX: Float, targetY: Float, compress: Bool, stretch: Bool, uniform: Bool, alpha: Float): Void;
    public function apply2(parent: Bone, child: Bone, targetX: Float, targetY: Float, bendDir: Float, stretch: Bool, softness: Float, alpha: Float): Void;
}



@:native("spine.IkConstraintData")
extern class IkConstraintData extends ConstraintData {
    public var bones: Array<BoneData>;
    public var target: BoneData;
    public var bendDirection: Float;
    public var compress: Bool;
    public var stretch: Bool;
    public var uniform: Bool;
    public var mix: Float;
    public var softness: Float;
    public function new(name: String);
}


@:native("spine.PathConstraint")
extern class PathConstraint implements Updatable {
    public static var NONE: Float;
    public static var BEFORE: Float;
    public static var AFTER: Float;
    public static var epsilon: Float;
    public var data: PathConstraintData;
    public var bones: Array<Bone>;
    public var target: Slot;
    public var position: Float;
    public var spacing: Float;
    public var rotateMix: Float;
    public var translateMix: Float;
    public var spaces: Array<Float>;
    public var positions: Array<Float>;
    public var world: Array<Float>;
    public var curves: Array<Float>;
    public var lengths: Array<Float>;
    public var segments: Array<Float>;
    public var active: Bool;
    public function new(data: PathConstraintData, skeleton: Skeleton);
    public function isActive(): Bool;
    public function apply(): Void;
    public function update(): Void;
    public function computeWorldPositions(path: PathAttachment, spacesCount: Float, tangents: Bool, percentPosition: Bool, percentSpacing: Bool): Array<Float>;
    public function addBeforePosition(p: Float, temp: Array<Float>, i: Float, out: Array<Float>, o: Float): Void;
    public function addAfterPosition(p: Float, temp: Array<Float>, i: Float, out: Array<Float>, o: Float): Void;
    public function addCurvePosition(p: Float, x1: Float, y1: Float, cx1: Float, cy1: Float, cx2: Float, cy2: Float, x2: Float, y2: Float, out: Array<Float>, o: Float, tangents: Bool): Void;
}


@:native("spine.PathConstraintData")
extern class PathConstraintData extends ConstraintData {
    public var bones: Array<BoneData>;
    public var target: SlotData;
    public var positionMode: PositionMode;
    public var spacingMode: SpacingMode;
    public var rotateMode: RotateMode;
    public var offsetRotation: Float;
    public var position: Float;
    public var spacing: Float;
    public var rotateMix: Float;
    public var translateMix: Float;
    public function new(name: String);
}
enum abstract PositionMode(Int) from Int to Int
{
    var Fixed = 0;
    var Percent = 1;
}
enum abstract SpacingMode(Int) from Int to Int
{
    var Length = 0;
    var Fixed = 1;
    var Percent = 2;
}
enum abstract RotateMode(Int) from Int to Int
{
    var Tangent = 0;
    var Chain = 1;
    var ChainScale = 2;
}


@:native("spine.SharedAssetManager")
extern class SharedAssetManager implements Disposable {
    private var pathPrefix : Any;
    private var clientAssets : Any;
    private var queuedAssets : Any;
    private var rawAssets : Any;
    private var errors : Any;
    public function new(?pathPrefix: String);
    private var queueAsset : Any;
    public function loadText(clientId: String, path: String): Void;
    public function loadJson(clientId: String, path: String): Void;
    public function loadTexture(clientId: String, textureLoader: (image: js.html.ImageElement) -> Any, path: String): Void;
    public function get(clientId: String, path: String): Any;
    private var updateClientAssets : Any;
    public function isLoadingComplete(clientId: String): Bool;
    public function dispose(): Void;
    public function hasErrors(): Bool;
    public function getErrors(): haxe.ds.StringMap<String>;
}


@:native("spine.Skeleton")
extern class Skeleton {
    public var data: SkeletonData;
    public var bones: Array<Bone>;
    public var slots: Array<Slot>;
    public var drawOrder: Array<Slot>;
    public var ikConstraints: Array<IkConstraint>;
    public var transformConstraints: Array<TransformConstraint>;
    public var pathConstraints: Array<PathConstraint>;
    public var _updateCache: Array<Updatable>;
    public var updateCacheReset: Array<Updatable>;
    public var skin: Skin;
    public var color: Color;
    public var time: Float;
    public var scaleX: Float;
    public var scaleY: Float;
    public var x: Float;
    public var y: Float;
    public function new(data: SkeletonData);
    public function updateCache(): Void;
    public function sortIkConstraint(constraint: IkConstraint): Void;
    public function sortPathConstraint(constraint: PathConstraint): Void;
    public function sortTransformConstraint(constraint: TransformConstraint): Void;
    public function sortPathConstraintAttachment(skin: Skin, slotIndex: Float, slotBone: Bone): Void;
    public function sortPathConstraintAttachmentWith(attachment: Attachment, slotBone: Bone): Void;
    public function sortBone(bone: Bone): Void;
    public function sortReset(bones: Array<Bone>): Void;
    public function updateWorldTransform(): Void;
    public function setToSetupPose(): Void;
    public function setBonesToSetupPose(): Void;
    public function setSlotsToSetupPose(): Void;
    public function getRootBone(): Bone;
    public function findBone(boneName: String): Bone;
    public function findBoneIndex(boneName: String): Float;
    public function findSlot(slotName: String): Slot;
    public function findSlotIndex(slotName: String): Float;
    public function setSkinByName(skinName: String): Void;
    public function setSkin(newSkin: Skin): Void;
    public function getAttachmentByName(slotName: String, attachmentName: String): Attachment;
    public function getAttachment(slotIndex: Float, attachmentName: String): Attachment;
    public function setAttachment(slotName: String, attachmentName: String): Void;
    public function findIkConstraint(constraintName: String): IkConstraint;
    public function findTransformConstraint(constraintName: String): TransformConstraint;
    public function findPathConstraint(constraintName: String): PathConstraint;
    public function getBounds(offset: Vector2, size: Vector2, ?temp: Array<Float>): Void;
    public function update(delta: Float): Void;
}


@:native("spine.SkeletonBinary")
extern class SkeletonBinary {
    public static var AttachmentTypeValues: Array<Float>;
    public static var TransformModeValues: Array<TransformMode>;
    public static var PositionModeValues: Array<PositionMode>;
    public static var SpacingModeValues: Array<SpacingMode>;
    public static var RotateModeValues: Array<RotateMode>;
    public static var BlendModeValues: Array<BlendMode>;
    public static var BONE_ROTATE: Float;
    public static var BONE_TRANSLATE: Float;
    public static var BONE_SCALE: Float;
    public static var BONE_SHEAR: Float;
    public static var SLOT_ATTACHMENT: Float;
    public static var SLOT_COLOR: Float;
    public static var SLOT_TWO_COLOR: Float;
    public static var PATH_POSITION: Float;
    public static var PATH_SPACING: Float;
    public static var PATH_MIX: Float;
    public static var CURVE_LINEAR: Float;
    public static var CURVE_STEPPED: Float;
    public static var CURVE_BEZIER: Float;
    public var attachmentLoader: AttachmentLoader;
    public var scale: Float;
    private var linkedMeshes : Any;
    public function new(attachmentLoader: AttachmentLoader);
    public function readSkeletonData(binary: js.lib.Uint8Array): SkeletonData;
    private var readSkin : Any;
    private var readAttachment : Any;
    private var readVertices : Any;
    private var readFloatArray : Any;
    private var readShortArray : Any;
    private var readAnimation : Any;
    private var readCurve : Any;
    public function setCurve(timeline: CurveTimeline, frameIndex: Float, cx1: Float, cy1: Float, cx2: Float, cy2: Float): Void;
}


@:native("spine.SkeletonBounds")
extern class SkeletonBounds {
    public var minX: Float;
    public var minY: Float;
    public var maxX: Float;
    public var maxY: Float;
    public var boundingBoxes: Array<BoundingBoxAttachment>;
    public var polygons: Array<ArrayLike<Float>>;
    private var polygonPool : Any;
    public function update(skeleton: Skeleton, updateAabb: Bool): Void;
    public function aabbCompute(): Void;
    public function aabbContainsPoint(x: Float, y: Float): Bool;
    public function aabbIntersectsSegment(x1: Float, y1: Float, x2: Float, y2: Float): Bool;
    public function aabbIntersectsSkeleton(bounds: SkeletonBounds): Bool;
    public function containsPoint(x: Float, y: Float): BoundingBoxAttachment;
    public function containsPointPolygon(polygon: ArrayLike<Float>, x: Float, y: Float): Bool;
    public function intersectsSegment(x1: Float, y1: Float, x2: Float, y2: Float): BoundingBoxAttachment;
    public function intersectsSegmentPolygon(polygon: ArrayLike<Float>, x1: Float, y1: Float, x2: Float, y2: Float): Bool;
    public function getPolygon(boundingBox: BoundingBoxAttachment): ArrayLike<Float>;
    public function getWidth(): Float;
    public function getHeight(): Float;
}

@:native("spine.SkeletonClipping")
extern class SkeletonClipping {
    private var triangulator : Any;
    private var clippingPolygon : Any;
    private var clipOutput : Any;
    public var clippedVertices: Array<Float>;
    public var clippedTriangles: Array<Float>;
    private var scratch : Any;
    private var clipAttachment : Any;
    private var clippingPolygons : Any;
    public function clipStart(slot: Slot, clip: ClippingAttachment): Float;
    public function clipEndWithSlot(slot: Slot): Void;
    public function clipEnd(): Void;
    public function isClipping(): Bool;
    public function clipTriangles(vertices: ArrayLike<Float>, verticesLength: Float, triangles: ArrayLike<Float>, trianglesLength: Float, uvs: ArrayLike<Float>, light: Color, dark: Color, twoColor: Bool): Void;
    public function clip(x1: Float, y1: Float, x2: Float, y2: Float, x3: Float, y3: Float, clippingArea: Array<Float>, output: Array<Float>): Bool;
    public static function makeClockwise(polygon: ArrayLike<Float>): Void;
}


@:native("spine.SkeletonData")
extern class SkeletonData {
    public var name: String;
    public var bones: Array<BoneData>;
    public var slots: Array<SlotData>;
    public var skins: Array<Skin>;
    public var defaultSkin: Skin;
    public var events: Array<EventData>;
    public var animations: Array<Animation>;
    public var ikConstraints: Array<IkConstraintData>;
    public var transformConstraints: Array<TransformConstraintData>;
    public var pathConstraints: Array<PathConstraintData>;
    public var x: Float;
    public var y: Float;
    public var width: Float;
    public var height: Float;
    public var version: String;
    public var hash: String;
    public var fps: Float;
    public var imagesPath: String;
    public var audioPath: String;
    public function findBone(boneName: String): BoneData;
    public function findBoneIndex(boneName: String): Float;
    public function findSlot(slotName: String): SlotData;
    public function findSlotIndex(slotName: String): Float;
    public function findSkin(skinName: String): Skin;
    public function findEvent(eventDataName: String): EventData;
    public function findAnimation(animationName: String): Animation;
    public function findIkConstraint(constraintName: String): IkConstraintData;
    public function findTransformConstraint(constraintName: String): TransformConstraintData;
    public function findPathConstraint(constraintName: String): PathConstraintData;
    public function findPathConstraintIndex(pathConstraintName: String): Float;
}


@:native("spine.SkeletonJson")
extern class SkeletonJson {
    public var attachmentLoader: AttachmentLoader;
    public var scale: Float;
    private var linkedMeshes : Any;
    public function new(attachmentLoader: AttachmentLoader);
    public function readSkeletonData(json: haxe.ds.Either<String, Any>): SkeletonData;
    public function readAttachment(map: Any, skin: Skin, slotIndex: Float, name: String, skeletonData: SkeletonData): Attachment;
    public function readVertices(map: Any, attachment: VertexAttachment, verticesLength: Float): Void;
    public function readAnimation(map: Any, name: String, skeletonData: SkeletonData): Void;
    public function readCurve(map: Any, timeline: CurveTimeline, frameIndex: Float): Void;
    public function getValue(map: Any, prop: String, defaultValue: Any): Any;
    public static function blendModeFromString(str: String): BlendMode;
    public static function positionModeFromString(str: String): PositionMode;
    public static function spacingModeFromString(str: String): SpacingMode;
    public static function rotateModeFromString(str: String): RotateMode;
    public static function transformModeFromString(str: String): TransformMode;
}


@:native("spine.SkinEntry")
extern class SkinEntry {
    public var slotIndex: Float;
    public var name: String;
    public var attachment: Attachment;
    public function new(slotIndex: Float, name: String, attachment: Attachment);
}

@:native("spine.Skin")
extern class Skin {
    public var name: String;
    public var attachments: Array<haxe.ds.StringMap<Attachment>>;
    public var bones: Array<BoneData>;
    public var constraints: Array<ConstraintData>;
    public function new(name: String);
    public function setAttachment(slotIndex: Float, name: String, attachment: Attachment): Void;
    public function addSkin(skin: Skin): Void;
    public function copySkin(skin: Skin): Void;
    public function getAttachment(slotIndex: Float, name: String): Attachment;
    public function removeAttachment(slotIndex: Float, name: String): Void;
    public function getAttachments(): Array<SkinEntry>;
    public function getAttachmentsForSlot(slotIndex: Float, attachments: Array<SkinEntry>): Void;
    public function clear(): Void;
    public function attachAll(skeleton: Skeleton, oldSkin: Skin): Void;
}


@:native("spine.Slot")
extern class Slot {
    public var data: SlotData;
    public var bone: Bone;
    public var color: Color;
    public var darkColor: Color;
    private var attachment : Any;
    private var attachmentTime : Any;
    public var deform: Array<Float>;
    public function new(data: SlotData, bone: Bone);
    public function getAttachment(): Attachment;
    public function setAttachment(attachment: Attachment): Void;
    public function setAttachmentTime(time: Float): Void;
    public function getAttachmentTime(): Float;
    public function setToSetupPose(): Void;
}


@:native("spine.SlotData")
extern class SlotData {
    public var index: Float;
    public var name: String;
    public var boneData: BoneData;
    public var color: Color;
    public var darkColor: Color;
    public var attachmentName: String;
    public var blendMode: BlendMode;
    public function new(index: Float, name: String, boneData: BoneData);
}


@:native("spine.Texture")
extern abstract class Texture {
    private var _image: js.html.ImageElement;
    public function new(image: js.html.ImageElement);
    public function getImage(): js.html.ImageElement;
    public abstract function setFilters(minFilter: TextureFilter, magFilter: TextureFilter): Void;
    public abstract function setWraps(uWrap: TextureWrap, vWrap: TextureWrap): Void;
    public abstract function dispose(): Void;
    public static function filterFromString(text: String): TextureFilter;
    public static function wrapFromString(text: String): TextureWrap;
}
enum abstract TextureFilter(Int) from Int to Int 
{
    var Nearest = 9728;
    var Linear = 9729;
    var MipMap = 9987;
    var MipMapNearestNearest = 9984;
    var MipMapLinearNearest = 9985;
    var MipMapNearestLinear = 9986;
    var MipMapLinearLinear = 9987;
}
enum abstract TextureWrap(Int) from Int to Int 
{
    var MirroredRepeat = 33648;
    var ClampToEdge = 33071;
    var Repeat = 10497;
}

@:native("spine.TextureRegion")
extern class TextureRegion 
{
    public var renderObject: Any;
    public var u: Float;
    public var v: Float;
    public var u2: Float;
    public var v2: Float;
    public var width: Float;
    public var height: Float;
    public var rotate: Bool;
    public var offsetX: Float;
    public var offsetY: Float;
    public var originalWidth: Float;
    public var originalHeight: Float;
}

@:native("spine.FakeTexture")
extern class FakeTexture extends Texture {
    public function setFilters(minFilter: TextureFilter, magFilter: TextureFilter): Void;
    public function setWraps(uWrap: TextureWrap, vWrap: TextureWrap): Void;
    public function dispose(): Void;
}


@:native("spine.TextureAtlas")
extern class TextureAtlas implements Disposable {
    public var pages: Array<TextureAtlasPage>;
    public var regions: Array<TextureAtlasRegion>;
    public function new(atlasText: String, textureLoader: (path: String) -> Any);
    private var load : Any;
    public function findRegion(name: String): TextureAtlasRegion;
    public function dispose(): Void;
}

@:native("spine.TextureAtlasPage")
extern class TextureAtlasPage {
    public var name: String;
    public var minFilter: TextureFilter;
    public var magFilter: TextureFilter;
    public var uWrap: TextureWrap;
    public var vWrap: TextureWrap;
    public var texture: Texture;
    public var width: Float;
    public var height: Float;
}

@:native("spine.TextureAtlasRegion")
extern class TextureAtlasRegion extends TextureRegion {
    public var page: TextureAtlasPage;
    public var name: String;
    public var x: Float;
    public var y: Float;
    public var index: Float;
    public var degrees: Float;
    public var texture: Texture;
}


@:native("spine.TransformConstraint")
extern class TransformConstraint implements Updatable {
    public var data: TransformConstraintData;
    public var bones: Array<Bone>;
    public var target: Bone;
    public var rotateMix: Float;
    public var translateMix: Float;
    public var scaleMix: Float;
    public var shearMix: Float;
    public var temp: Vector2;
    public var active: Bool;
    public function new(data: TransformConstraintData, skeleton: Skeleton);
    public function isActive(): Bool;
    public function apply(): Void;
    public function update(): Void;
    public function applyAbsoluteWorld(): Void;
    public function applyRelativeWorld(): Void;
    public function applyAbsoluteLocal(): Void;
    public function applyRelativeLocal(): Void;
}


@:native("spine.TransformConstraintData")
extern class TransformConstraintData extends ConstraintData {
    public var bones: Array<BoneData>;
    public var target: BoneData;
    public var rotateMix: Float;
    public var translateMix: Float;
    public var scaleMix: Float;
    public var shearMix: Float;
    public var offsetRotation: Float;
    public var offsetX: Float;
    public var offsetY: Float;
    public var offsetScaleX: Float;
    public var offsetScaleY: Float;
    public var offsetShearY: Float;
    public var relative: Bool;
    public var local: Bool;
    public function new(name: String);
}

@:native("spine.Triangulator")
extern class Triangulator {
    private var convexPolygons : Any;
    private var convexPolygonsIndices : Any;
    private var indicesArray : Any;
    private var isConcaveArray : Any;
    private var triangles : Any;
    private var polygonPool : Any;
    private var polygonIndicesPool : Any;
    public function triangulate(verticesArray: ArrayLike<Float>): Array<Float>;
    public function decompose(verticesArray: Array<Float>, triangles: Array<Float>): Array<Array<Float>>;
    private static var isConcave : Any;
    private static var positiveArea : Any;
    private static var winding : Any;
}


@:native("spine.Updatable")
extern interface Updatable {
    public function update(): Void;
    public function isActive(): Bool;
}


@:native("spine.IntSet")
extern class IntSet {
    public var array: Array<Float>;
    public function add(value: Float): Bool;
    public function contains(value: Float): Bool;
    public function remove(value: Float): Void;
    public function clear(): Void;
}

@:native("spine.Disposable")
extern interface Disposable {
    public function dispose(): Void;
}

@:native("spine.Restorable")
extern interface Restorable {
    public function restore(): Void;
}

@:native("spine.Color")
extern class Color {
    public var r: Float;
    public var g: Float;
    public var b: Float;
    public var a: Float;
    public static var WHITE: Color;
    public static var RED: Color;
    public static var GREEN: Color;
    public static var BLUE: Color;
    public static var MAGENTA: Color;
    public function new(?r: Float, ?g: Float, ?b: Float, ?a: Float);
    public function set(r: Float, g: Float, b: Float, a: Float): Color;
    public function setFromColor(c: Color): Color;
    public function setFromString(hex: String): Color;
    public function add(r: Float, g: Float, b: Float, a: Float): Color;
    public function clamp(): Color;
    public static function rgba8888ToColor(color: Color, value: Float): Void;
    public static function rgb888ToColor(color: Color, value: Float): Void;
}

@:native("spine.MathUtils")
extern class MathUtils {
    public static final PI: Float;
    public static final PI2: Float;
    public static final radiansToDegrees: Float;
    public static final radDeg: Float;
    public static final degreesToRadians: Float;
    public static final degRad: Float;
    public static function clamp(value: Float, min: Float, max: Float): Float;
    public static function cosDeg(degrees: Float): Float;
    public static function sinDeg(degrees: Float): Float;
    public static function signum(value: Float): Float;
    public static function toInt(x: Float): Float;
    public static function cbrt(x: Float): Float;
    public static function randomTriangular(min: Float, max: Float): Float;
    public static function randomTriangularWith(min: Float, max: Float, mode: Float): Float;
}

@:native("spine.Interpolation")
extern abstract class Interpolation {
    private abstract function applyInternal(a: Float): Float;
    public function apply(start: Float, end: Float, a: Float): Float;
}

@:native("spine.Pow")
extern class Pow extends Interpolation {
    private var power: Float;
    public function new(power: Float);
    public function applyInternal(a: Float): Float;
}

@:native("spine.PowOut")
extern class PowOut extends Pow {
    public function new(power: Float);
    public function applyInternal(a: Float): Float;
}

@:native("spine.Utils")
extern class Utils {
    public static var SUPPORTS_TYPED_ARRAYS: Bool;
    public static function arrayCopy<T>(source: ArrayLike<T>, sourceStart: Float, dest: ArrayLike<T>, destStart: Float, numElements: Float): Void;
    public static function setArraySize<T>(array: Array<T>, size: Float, ?value: Any): Array<T>;
    public static function ensureArrayCapacity<T>(array: Array<T>, size: Float, ?value: Any): Array<T>;
    public static function newArray<T>(size: Float, defaultValue: T): Array<T>;
    public static function newFloatArray(size: Float): ArrayLike<Float>;
    public static function newShortArray(size: Float): ArrayLike<Float>;
    public static function toFloatArray(array: Array<Float>): haxe.ds.Either<Array<Float>, js.lib.Float32Array>;
    public static function toSinglePrecision(value: Float): Float;
    public static function webkit602BugfixHelper(alpha: Float, blend: MixBlend): Void;
    public static function contains<T>(array: Array<T>, element: T, ?identity: Bool): Bool;
}

@:native("spine.DebugUtils")
extern class DebugUtils {
    public static function logBones(skeleton: Skeleton): Void;
}

@:native("spine.Pool")
extern class Pool<T> {
    private var items : Any;
    private var instantiator : Any;
    public function new(instantiator: () -> T);
    public function obtain(): T;
    public function free(item: T): Void;
    public function freeAll(items: ArrayLike<T>): Void;
    public function clear(): Void;
}

@:native("spine.Vector2")
extern class Vector2 {
    public var x: Float;
    public var y: Float;
    public function new(?x: Float, ?y: Float);
    public function set(x: Float, y: Float): Vector2;
    public function length(): Float;
    public function normalize(): Vector2;
}

@:native("spine.TimeKeeper")
extern class TimeKeeper {
    public var maxDelta: Float;
    public var framesPerSecond: Float;
    public var delta: Float;
    public var totalTime: Float;
    private var lastTime : Any;
    private var frameCount : Any;
    private var frameTime : Any;
    public function update(): Void;
}

typedef ArrayLike<T> = 
{ 
    var length(default, null) : Int; 
    @:op([])
    function arrayAccess(i : Int) : T;
};

@:native("spine.WindowedMean")
extern class WindowedMean {
    public var values: Array<Float>;
    public var addedValues: Float;
    public var lastValue: Float;
    public var mean: Float;
    public var dirty: Bool;
    public function new(?windowSize: Float);
    public function hasEnoughData(): Bool;
    public function addValue(value: Float): Void;
    public function getMean(): Float;
}


@:native("spine.VertexEffect")
extern interface VertexEffect {
    public function begin(skeleton: Skeleton): Void;
    public function transform(position: Vector2, uv: Vector2, light: Color, dark: Color): Void;
    public function end(): Void;
}


@:native("spine.Math")
extern interface Math {
    public function fround(n: Float): Float;
}


@:native("spine.Attachment")
extern abstract class Attachment {
    public var name: String;
    public function new(name: String);
    public abstract function copy(): Attachment;
}

@:native("spine.VertexAttachment")
extern abstract class VertexAttachment extends Attachment {
    private static var nextID : Any;
    public var id: Float;
    public var bones: Array<Float>;
    public var vertices: ArrayLike<Float>;
    public var worldVerticesLength: Float;
    public var deformAttachment: VertexAttachment;
    public function new(name: String);
    public function computeWorldVertices(slot: Slot, start: Float, count: Float, worldVertices: ArrayLike<Float>, offset: Float, stride: Float): Void;
    public function copyTo(attachment: VertexAttachment): Void;
}


@:native("spine.AttachmentLoader")
extern interface AttachmentLoader {
    public function newRegionAttachment(skin: Skin, name: String, path: String): RegionAttachment;
    public function newMeshAttachment(skin: Skin, name: String, path: String): MeshAttachment;
    public function newBoundingBoxAttachment(skin: Skin, name: String): BoundingBoxAttachment;
    public function newPathAttachment(skin: Skin, name: String): PathAttachment;
    public function newPointAttachment(skin: Skin, name: String): PointAttachment;
    public function newClippingAttachment(skin: Skin, name: String): ClippingAttachment;
}

enum abstract AttachmentType(Int) from Int to Int {
    var Region = 0;
    var BoundingBox = 1;
    var Mesh = 2;
    var LinkedMesh = 3;
    var Path = 4;
    var Point = 5;
    var Clipping = 6;
}


@:native("spine.BoundingBoxAttachment")
extern class BoundingBoxAttachment extends VertexAttachment {
    public var color: Color;
    public function new(name: String);
    public function copy(): Attachment;
}


@:native("spine.ClippingAttachment")
extern class ClippingAttachment extends VertexAttachment {
    public var endSlot: SlotData;
    public var color: Color;
    public function new(name: String);
    public function copy(): Attachment;
}


@:native("spine.MeshAttachment")
extern class MeshAttachment extends VertexAttachment {
    public var region: TextureRegion;
    public var path: String;
    public var regionUVs: ArrayLike<Float>;
    public var uvs: ArrayLike<Float>;
    public var triangles: Array<Float>;
    public var color: Color;
    public var width: Float;
    public var height: Float;
    public var hullLength: Float;
    public var edges: Array<Float>;
    private var parentMesh : Any;
    public var tempColor: Color;
    public function new(name: String);
    public function updateUVs(): Void;
    public function getParentMesh(): MeshAttachment;
    public function setParentMesh(parentMesh: MeshAttachment): Void;
    public function copy(): Attachment;
    public function newLinkedMesh(): MeshAttachment;
}


@:native("spine.PathAttachment")
extern class PathAttachment extends VertexAttachment {
    public var lengths: Array<Float>;
    public var closed: Bool;
    public var constantSpeed: Bool;
    public var color: Color;
    public function new(name: String);
    public function copy(): Attachment;
}



@:native("spine.PointAttachment")
extern class PointAttachment extends VertexAttachment {
    public var x: Float;
    public var y: Float;
    public var rotation: Float;
    public var color: Color;
    public function new(name: String);
    public function computeWorldPosition(bone: Bone, point: Vector2): Vector2;
    public function computeWorldRotation(bone: Bone): Float;
    public function copy(): Attachment;
}


@:native("spine.RegionAttachment")
extern class RegionAttachment extends Attachment {
    public static var OX1: Float;
    public static var OY1: Float;
    public static var OX2: Float;
    public static var OY2: Float;
    public static var OX3: Float;
    public static var OY3: Float;
    public static var OX4: Float;
    public static var OY4: Float;
    public static var X1: Float;
    public static var Y1: Float;
    public static var C1R: Float;
    public static var C1G: Float;
    public static var C1B: Float;
    public static var C1A: Float;
    public static var U1: Float;
    public static var V1: Float;
    public static var X2: Float;
    public static var Y2: Float;
    public static var C2R: Float;
    public static var C2G: Float;
    public static var C2B: Float;
    public static var C2A: Float;
    public static var U2: Float;
    public static var V2: Float;
    public static var X3: Float;
    public static var Y3: Float;
    public static var C3R: Float;
    public static var C3G: Float;
    public static var C3B: Float;
    public static var C3A: Float;
    public static var U3: Float;
    public static var V3: Float;
    public static var X4: Float;
    public static var Y4: Float;
    public static var C4R: Float;
    public static var C4G: Float;
    public static var C4B: Float;
    public static var C4A: Float;
    public static var U4: Float;
    public static var V4: Float;
    public var x: Float;
    public var y: Float;
    public var scaleX: Float;
    public var scaleY: Float;
    public var rotation: Float;
    public var width: Float;
    public var height: Float;
    public var color: Color;
    public var path: String;
    public var rendererObject: Any;
    public var region: TextureRegion;
    public var offset: ArrayLike<Float>;
    public var uvs: ArrayLike<Float>;
    public var tempColor: Color;
    public function new(name: String);
    public function updateOffset(): Void;
    public function setRegion(region: TextureRegion): Void;
    public function computeWorldVertices(bone: Bone, worldVertices: ArrayLike<Float>, offset: Float, stride: Float): Void;
    public function copy(): Attachment;
}


@:native("spine.JitterEffect")
extern class JitterEffect implements VertexEffect {
    public var jitterX: Float;
    public var jitterY: Float;
    public function new(jitterX: Float, jitterY: Float);
    public function begin(skeleton: Skeleton): Void;
    public function transform(position: Vector2, uv: Vector2, light: Color, dark: Color): Void;
    public function end(): Void;
}


@:native("spine.SwirlEffect")
extern class SwirlEffect implements VertexEffect {
    public static var interpolation: PowOut;
    public var centerX: Float;
    public var centerY: Float;
    public var radius: Float;
    public var angle: Float;
    private var worldX : Any;
    private var worldY : Any;
    public function new(radius: Float);
    public function begin(skeleton: Skeleton): Void;
    public function transform(position: Vector2, uv: Vector2, light: Color, dark: Color): Void;
    public function end(): Void;
}
