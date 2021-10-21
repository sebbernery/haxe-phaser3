package spine.webgl;

#if SPINE_PLUGIN
import phaser.textures.Texture;
import spine.Spine;


@:native("spine.webgl.AssetManager")
extern class AssetManager extends spine.AssetManager {
    public function new(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>, ?pathPrefix: String);
}


@:native("spine.webgl.OrthoCamera")
extern class OrthoCamera {
    public var position: Vector3;
    public var direction: Vector3;
    public var up: Vector3;
    public var near: Float;
    public var far: Float;
    public var zoom: Float;
    public var viewportWidth: Float;
    public var viewportHeight: Float;
    public var projectionView: Matrix4;
    public var inverseProjectionView: Matrix4;
    public var projection: Matrix4;
    public var view: Matrix4;
    private var tmp : Any;
    public function new(viewportWidth: Float, viewportHeight: Float);
    public function update(): Void;
    public function screenToWorld(screenCoords: Vector3, screenWidth: Float, screenHeight: Float): Vector3;
    public function setViewport(viewportWidth: Float, viewportHeight: Float): Void;
}


@:native("spine.webgl.GLTexture")
extern class GLTexture extends Texture implements Disposable implements Restorable {
    private var context : Any;
    private var texture : Any;
    private var boundUnit : Any;
    private var useMipMaps : Any;
    public function new(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>, image: js.html.ImageElement, ?useMipMaps: Bool);
    public function setFilters(minFilter: TextureFilter, magFilter: TextureFilter): Void;
    public function setWraps(uWrap: TextureWrap, vWrap: TextureWrap): Void;
    public function update(useMipMaps: Bool): Void;
    public function restore(): Void;
    public function bind(?unit: Float): Void;
    public function unbind(): Void;
    public function dispose(): Void;
}

final M00 = 0;
final M01 = 4;
final M02 = 8;
final M03 = 12;
final M10 = 1;
final M11 = 5;
final M12 = 9;
final M13 = 13;
final M20 = 2;
final M21 = 6;
final M22 = 10;
final M23 = 14;
final M30 = 3;
final M31 = 7;
final M32 = 11;
final M33 = 15;

@:native("spine.webgl.Matrix4")
extern class Matrix4 {
    public var temp: js.lib.Float32Array;
    public var values: js.lib.Float32Array;
    private static var xAxis : Any;
    private static var yAxis : Any;
    private static var zAxis : Any;
    private static var tmpMatrix : Any;
    public function new();
    public function set(values: ArrayLike<Float>): Matrix4;
    public function transpose(): Matrix4;
    public function identity(): Matrix4;
    public function invert(): Matrix4;
    public function determinant(): Float;
    public function translate(x: Float, y: Float, z: Float): Matrix4;
    public function copy(): Matrix4;
    public function projection(near: Float, far: Float, fovy: Float, aspectRatio: Float): Matrix4;
    public function ortho2d(x: Float, y: Float, width: Float, height: Float): Matrix4;
    public function ortho(left: Float, right: Float, bottom: Float, top: Float, near: Float, far: Float): Matrix4;
    public function multiply(matrix: Matrix4): Matrix4;
    public function multiplyLeft(matrix: Matrix4): Matrix4;
    public function lookAt(position: Vector3, direction: Vector3, up: Vector3): Matrix4;
    public static function initTemps(): Void;
}


@:native("spine.webgl.Mesh")
extern class Mesh implements Disposable implements Restorable {
    private var attributes : Any;
    private var context : Any;
    private var vertices : Any;
    private var verticesBuffer : Any;
    private var verticesLength : Any;
    private var dirtyVertices : Any;
    private var indices : Any;
    private var indicesBuffer : Any;
    private var indicesLength : Any;
    private var dirtyIndices : Any;
    private var elementsPerVertex : Any;
    public function getAttributes(): Array<VertexAttribute>;
    public function maxVertices(): Float;
    public function numVertices(): Float;
    public function setVerticesLength(length: Float): Void;
    public function getVertices(): js.lib.Float32Array;
    public function maxIndices(): Float;
    public function numIndices(): Float;
    public function setIndicesLength(length: Float): Void;
    public function getIndices(): js.lib.Uint16Array;
    public function getVertexSizeInFloats(): Float;
    public function new(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>, attributes: Array<VertexAttribute>, maxVertices: Float, maxIndices: Float);
    public function setVertices(vertices: Array<Float>): Void;
    public function setIndices(indices: Array<Float>): Void;
    public function draw(shader: Shader, primitiveType: Float): Void;
    public function drawWithOffset(shader: Shader, primitiveType: Float, offset: Float, count: Float): Void;
    public function bind(shader: Shader): Void;
    public function unbind(shader: Shader): Void;
    private var update : Any;
    public function restore(): Void;
    public function dispose(): Void;
}

@:native("spine.webgl.VertexAttribute")
extern class VertexAttribute {
    public var name: String;
    public var type: VertexAttributeType;
    public var numElements: Float;
    public function new(name: String, type: VertexAttributeType, numElements: Float);
}

@:native("spine.webgl.Position2Attribute")
extern class Position2Attribute extends VertexAttribute {
    public function new();
}

@:native("spine.webgl.Position3Attribute")
extern class Position3Attribute extends VertexAttribute {
    public function new();
}

@:native("spine.webgl.TexCoordAttribute")
extern class TexCoordAttribute extends VertexAttribute {
    public function new(?unit: Float);
}

@:native("spine.webgl.ColorAttribute")
extern class ColorAttribute extends VertexAttribute {
    public function new();
}

@:native("spine.webgl.Color2Attribute")
extern class Color2Attribute extends VertexAttribute {
    public function new();
}
enum abstract VertexAttributeType(Int) from Int to Int {
    var Float = 0;
}


@:native("spine.webgl.PolygonBatcher")
extern class PolygonBatcher implements Disposable {
    private var context : Any;
    private var drawCalls : Any;
    private var isDrawing : Any;
    private var mesh : Any;
    private var shader : Any;
    private var lastTexture : Any;
    private var verticesLength : Any;
    private var indicesLength : Any;
    private var srcBlend : Any;
    private var dstBlend : Any;
    public function new(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>, ?twoColorTint: Bool, ?maxVertices: Float);
    public function begin(shader: Shader): Void;
    public function setBlendMode(srcBlend: Float, dstBlend: Float): Void;
    public function draw(texture: GLTexture, vertices: ArrayLike<Float>, indices: Array<Float>): Void;
    private var flush : Any;
    public function end(): Void;
    public function getDrawCalls(): Float;
    public function dispose(): Void;
}


@:native("spine.webgl.SceneRenderer")
extern class SceneRenderer implements Disposable {
    public var context: ManagedWebGLRenderingContext;
    public var canvas: js.html.CanvasElement;
    public var camera: OrthoCamera;
    public var batcher: PolygonBatcher;
    private var twoColorTint : Any;
    private var batcherShader : Any;
    private var shapes : Any;
    private var shapesShader : Any;
    private var activeRenderer : Any;
    public var skeletonRenderer: SkeletonRenderer;
    public var skeletonDebugRenderer: SkeletonDebugRenderer;
    private var QUAD : Any;
    private var QUAD_TRIANGLES : Any;
    private var WHITE : Any;
    public function new(canvas: js.html.CanvasElement, context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>, ?twoColorTint: Bool);
    public function begin(): Void;
    public function drawSkeleton(skeleton: Skeleton, ?premultipliedAlpha: Bool, ?slotRangeStart: Float, ?slotRangeEnd: Float): Void;
    public function drawSkeletonDebug(skeleton: Skeleton, ?premultipliedAlpha: Bool, ?ignoredBones: Array<String>): Void;
    public function drawTexture(texture: GLTexture, x: Float, y: Float, width: Float, height: Float, ?color: Color): Void;
    public function drawTextureUV(texture: GLTexture, x: Float, y: Float, width: Float, height: Float, u: Float, v: Float, u2: Float, v2: Float, ?color: Color): Void;
    public function drawTextureRotated(texture: GLTexture, x: Float, y: Float, width: Float, height: Float, pivotX: Float, pivotY: Float, angle: Float, ?color: Color, ?premultipliedAlpha: Bool): Void;
    public function drawRegion(region: TextureAtlasRegion, x: Float, y: Float, width: Float, height: Float, ?color: Color, ?premultipliedAlpha: Bool): Void;
    public function line(x: Float, y: Float, x2: Float, y2: Float, ?color: Color, ?color2: Color): Void;
    public function triangle(filled: Bool, x: Float, y: Float, x2: Float, y2: Float, x3: Float, y3: Float, ?color: Color, ?color2: Color, ?color3: Color): Void;
    public function quad(filled: Bool, x: Float, y: Float, x2: Float, y2: Float, x3: Float, y3: Float, x4: Float, y4: Float, ?color: Color, ?color2: Color, ?color3: Color, ?color4: Color): Void;
    public function rect(filled: Bool, x: Float, y: Float, width: Float, height: Float, ?color: Color): Void;
    public function rectLine(filled: Bool, x1: Float, y1: Float, x2: Float, y2: Float, width: Float, ?color: Color): Void;
    public function polygon(polygonVertices: ArrayLike<Float>, offset: Float, count: Float, ?color: Color): Void;
    public function circle(filled: Bool, x: Float, y: Float, radius: Float, ?color: Color, ?segments: Float): Void;
    public function curve(x1: Float, y1: Float, cx1: Float, cy1: Float, cx2: Float, cy2: Float, x2: Float, y2: Float, segments: Float, ?color: Color): Void;
    public function end(): Void;
    public function resize(resizeMode: ResizeMode): Void;
    private var enableRenderer : Any;
    public function dispose(): Void;
}
enum abstract ResizeMode(Int) from Int to Int {
    var Stretch = 0;
    var Expand = 1;
    var Fit = 2;
}


@:native("spine.webgl.Shader")
extern class Shader implements Disposable implements Restorable {
    private var vertexShader : Any;
    private var fragmentShader : Any;
    public static var MVP_MATRIX: String;
    public static var POSITION: String;
    public static var COLOR: String;
    public static var COLOR2: String;
    public static var TEXCOORDS: String;
    public static var SAMPLER: String;
    private var context : Any;
    private var vs : Any;
    private var vsSource : Any;
    private var fs : Any;
    private var fsSource : Any;
    private var program : Any;
    private var tmp2x2 : Any;
    private var tmp3x3 : Any;
    private var tmp4x4 : Any;
    public function getProgram(): js.html.webgl.Program;
    public function getVertexShader(): String;
    public function getFragmentShader(): String;
    public function getVertexShaderSource(): String;
    public function getFragmentSource(): String;
    public function new(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>, vertexShader: String, fragmentShader: String);
    private var compile : Any;
    private var compileShader : Any;
    private var compileProgram : Any;
    public function restore(): Void;
    public function bind(): Void;
    public function unbind(): Void;
    public function setUniformi(uniform: String, value: Float): Void;
    public function setUniformf(uniform: String, value: Float): Void;
    public function setUniform2f(uniform: String, value: Float, value2: Float): Void;
    public function setUniform3f(uniform: String, value: Float, value2: Float, value3: Float): Void;
    public function setUniform4f(uniform: String, value: Float, value2: Float, value3: Float, value4: Float): Void;
    public function setUniform2x2f(uniform: String, value: ArrayLike<Float>): Void;
    public function setUniform3x3f(uniform: String, value: ArrayLike<Float>): Void;
    public function setUniform4x4f(uniform: String, value: ArrayLike<Float>): Void;
    public function getUniformLocation(uniform: String): js.html.webgl.UniformLocation;
    public function getAttributeLocation(attribute: String): Float;
    public function dispose(): Void;
    public static function newColoredTextured(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>): Shader;
    public static function newTwoColoredTextured(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>): Shader;
    public static function newColored(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>): Shader;
}


@:native("spine.webgl.ShapeRenderer")
extern class ShapeRenderer implements Disposable {
    private var context : Any;
    private var isDrawing : Any;
    private var mesh : Any;
    private var shapeType : Any;
    private var color : Any;
    private var shader : Any;
    private var vertexIndex : Any;
    private var tmp : Any;
    private var srcBlend : Any;
    private var dstBlend : Any;
    public function new(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>, ?maxVertices: Float);
    public function begin(shader: Shader): Void;
    public function setBlendMode(srcBlend: Float, dstBlend: Float): Void;
    public function setColor(color: Color): Void;
    public function setColorWith(r: Float, g: Float, b: Float, a: Float): Void;
    public function point(x: Float, y: Float, ?color: Color): Void;
    public function line(x: Float, y: Float, x2: Float, y2: Float, ?color: Color): Void;
    public function triangle(filled: Bool, x: Float, y: Float, x2: Float, y2: Float, x3: Float, y3: Float, ?color: Color, ?color2: Color, ?color3: Color): Void;
    public function quad(filled: Bool, x: Float, y: Float, x2: Float, y2: Float, x3: Float, y3: Float, x4: Float, y4: Float, ?color: Color, ?color2: Color, ?color3: Color, ?color4: Color): Void;
    public function rect(filled: Bool, x: Float, y: Float, width: Float, height: Float, ?color: Color): Void;
    public function rectLine(filled: Bool, x1: Float, y1: Float, x2: Float, y2: Float, width: Float, ?color: Color): Void;
    public function x(x: Float, y: Float, size: Float): Void;
    public function polygon(polygonVertices: ArrayLike<Float>, offset: Float, count: Float, ?color: Color): Void;
    public function circle(filled: Bool, x: Float, y: Float, radius: Float, ?color: Color, ?segments: Float): Void;
    public function curve(x1: Float, y1: Float, cx1: Float, cy1: Float, cx2: Float, cy2: Float, x2: Float, y2: Float, segments: Float, ?color: Color): Void;
    private var vertex : Any;
    public function end(): Void;
    private var flush : Any;
    private var check : Any;
    public function dispose(): Void;
}
enum abstract ShapeType(Int) from Int to Int {
    var Point = 0;
    var Line = 1;
    var Filled = 4;
}


@:native("spine.webgl.SkeletonDebugRenderer")
extern class SkeletonDebugRenderer implements Disposable {
    public var boneLineColor: Color;
    public var boneOriginColor: Color;
    public var attachmentLineColor: Color;
    public var triangleLineColor: Color;
    public var pathColor: Color;
    public var clipColor: Color;
    public var aabbColor: Color;
    public var drawBones: Bool;
    public var drawRegionAttachments: Bool;
    public var drawBoundingBoxes: Bool;
    public var drawMeshHull: Bool;
    public var drawMeshTriangles: Bool;
    public var drawPaths: Bool;
    public var drawSkeletonXY: Bool;
    public var drawClipping: Bool;
    public var premultipliedAlpha: Bool;
    public var scale: Float;
    public var boneWidth: Float;
    private var context : Any;
    private var bounds : Any;
    private var temp : Any;
    private var vertices : Any;
    private static var LIGHT_GRAY : Any;
    private static var GREEN : Any;
    public function new(context: haxe.ds.Either<ManagedWebGLRenderingContext, js.html.webgl.RenderingContext>);
    public function draw(shapes: ShapeRenderer, skeleton: Skeleton, ?ignoredBones: Array<String>): Void;
    public function dispose(): Void;
}


@:native("spine.webgl.SkeletonRenderer")
extern class SkeletonRenderer {
    public static var QUAD_TRIANGLES: Array<Float>;
    public var premultipliedAlpha: Bool;
    public var vertexEffect: VertexEffect;
    private var tempColor : Any;
    private var tempColor2 : Any;
    private var vertices : Any;
    private var vertexSize : Any;
    private var twoColorTint : Any;
    private var renderable : Any;
    private var clipper : Any;
    private var temp : Any;
    private var temp2 : Any;
    private var temp3 : Any;
    private var temp4 : Any;
    public function new(context: ManagedWebGLRenderingContext, ?twoColorTint: Bool);
    public function draw(batcher: PolygonBatcher, skeleton: Skeleton, ?slotRangeStart: Float, ?slotRangeEnd: Float): Void;
}


@:native("spine.webgl.Vector3")
extern class Vector3 {
    public var x: Float;
    public var y: Float;
    public var z: Float;
    public function new(?x: Float, ?y: Float, ?z: Float);
    public function setFrom(v: Vector3): Vector3;
    public function set(x: Float, y: Float, z: Float): Vector3;
    public function add(v: Vector3): Vector3;
    public function sub(v: Vector3): Vector3;
    public function scale(s: Float): Vector3;
    public function normalize(): Vector3;
    public function cross(v: Vector3): Vector3;
    public function multiply(matrix: Matrix4): Vector3;
    public function project(matrix: Matrix4): Vector3;
    public function dot(v: Vector3): Float;
    public function length(): Float;
    public function distance(v: Vector3): Float;
}

@:native("spine.webgl.ManagedWebGLRenderingContext")
extern class ManagedWebGLRenderingContext {
    public var canvas: haxe.ds.Either<js.html.CanvasElement, Any/*OffscreenCanvas*/>;
    public var gl: js.html.webgl.RenderingContext;
    private var restorables : Any;
    public function new(canvasOrContext: haxe.ds.Either<js.html.CanvasElement, js.html.webgl.RenderingContext>, ?contextConfig: Any);
    public function addRestorable(restorable: Restorable): Void;
    public function removeRestorable(restorable: Restorable): Void;
}
@:native("spine.webgl.WebGLBlendModeConverter")
extern class WebGLBlendModeConverter {
    public static var ZERO: Float;
    public static var ONE: Float;
    public static var SRC_COLOR: Float;
    public static var ONE_MINUS_SRC_COLOR: Float;
    public static var SRC_ALPHA: Float;
    public static var ONE_MINUS_SRC_ALPHA: Float;
    public static var DST_ALPHA: Float;
    public static var ONE_MINUS_DST_ALPHA: Float;
    public static var DST_COLOR: Float;
    public static function getDestGLBlendMode(blendMode: BlendMode): Float;
    public static function getSourceGLBlendMode(blendMode: BlendMode, ?premultipliedAlpha: Bool): Float;
}
#end