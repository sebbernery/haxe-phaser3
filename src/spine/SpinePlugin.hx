package spine;
import spine.Spine;
import spine.SpineGameObject;

/// <reference path="./spine.d.ts" />
/// <reference path="./SpineFile.d.ts" />
/// <reference path="./SpineGameObject.d.ts" />
/// <reference path="./SpineContainer.d.ts" />

// declare namespace Phaser.Loader {

//     @:native("Phaser.Loader.LoaderPlugin")
//     extern interface LoaderPlugin extends Phaser.Events.EventEmitter {
//         spine(key: haxe.ds.Either<String, haxe.ds.Either<Phaser.Loader.FileTypes.SpineFileConfig, Array<Phaser.Loader.FileTypes.SpineFileConfig>>>, jsonURL: String, atlasURL: haxe.ds.Either<String, Array<String>>, preMultipliedAlpha?: boolean, textureXhrSettings?: Phaser.Types.Loader.XHRSettingsObject, atlasXhrSettings?: Phaser.Types.Loader.XHRSettingsObject): LoaderPlugin;
//     }
// }

// declare namespace Phaser.GameObjects {
//     @:native("Phaser.GameObjects.GameObjectFactory")
//     extern interface GameObjectFactory {
//         public function spine(x: Float, y: Float, ?key: String, ?animationName: String, ?loop: Bool): SpineGameObject;
//         public function spineContainer(x: Float, y: Float, ?children: haxe.ds.Eiher<SpineGameObject, Array<SpineGameObject>>): SpineContainer;
//     }

//     @:native("Phaser.GameObjects.GameObjectCreator")
// 	extern interface GameObjectCreator {
//         public function spine(config: SpineGameObjectConfig, ?addToScene: Bool): SpineGameObject;
//         public function spineContainer(config: SpineContainerConfig, ?addToScene: Bool): SpineContainer;
//     }
// }

extern class SpinePlugin extends phaser.plugins.ScenePlugin {
    public function new(scene: phaser.Scene, pluginManager: phaser.plugins.PluginManager);

    public var isWebGL(default, never): Bool;

    public var cache: phaser.cache.BaseCache;
    public var spineTextures: phaser.cache.BaseCache;
    public var json: phaser.cache.BaseCache;
    public var textures: phaser.textures.TextureManager;
    public var drawDebug: Bool;
    public var gl: Any;
    public var renderer: haxe.ds.Either<phaser.renderer.canvas.CanvasRenderer, phaser.renderer.webgl.WebGLRenderer>;
    public var sceneRenderer: spine.webgl.Spine.SceneRenderer;
    public var skeletonRenderer: haxe.ds.Either<spine.canvas.Spine.SkeletonRenderer, spine.webgl.Spine.SkeletonRenderer>;
    public var skeletonDebugRenderer: spine.webgl.Spine.SkeletonDebugRenderer;

    public var plugin: Any /*typeof spine*/;

    public function getAtlasCanvas(key: String): spine.Spine.TextureAtlas;
    public function getAtlasWebGL(key: String): spine.Spine.TextureAtlas;
    public function worldToLocal(x: Float, y: Float, skeleton: spine.Skeleton, ?bone: spine.Bone): spine.Spine.Vector2;
    public function getVector2(x: Float, y: Float): spine.Vector2;
    public function getVector3(x: Float, y: Float, z: Float): spine.Vector2;
    public function setDebugBones(?value: Bool): SpinePlugin;
    public function setDebugRegionAttachments(?value: Bool): SpinePlugin;
    public function setDebugBoundingBoxes(?value: Bool): SpinePlugin;
    public function setDebugMeshHull(?value: Bool): SpinePlugin;
    public function setDebugMeshTriangles(?value: Bool): SpinePlugin;
    public function setDebugPaths(?value: Bool): SpinePlugin;
    public function setDebugSkeletonXY(?value: Bool): SpinePlugin;
    public function setDebugClipping(?value: Bool): SpinePlugin;
    public function setEffect(?effect: spine.VertexEffect): SpinePlugin;
    public function createSkeleton(key: String, ?skeletonJSON: Any): Null<Any>;
    public function createAnimationState(skeleton: spine.Skeleton): Any;
    public function getBounds(skeleton: spine.Skeleton): Any;
    public function onResize(): Void;
    public function add(x: Float, y: Float, ?key: String, ?animationName: String, ?loop: Bool): SpineGameObject;
    public function make(config: SpineGameObjectConfig, ?addToScene: Bool): SpineGameObject;
}
