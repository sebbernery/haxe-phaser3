package spine.canvas;
import spine.Spine;



@:native("spine.canvas.AssetManager")
extern class AssetManager extends spine.AssetManager {
    public function new(?pathPrefix: String);
}

@:native("spine.canvas.CanvasTexture")
extern class CanvasTexture extends Texture {
    public function new(image: js.html.ImageElement);
    public function setFilters(minFilter: TextureFilter, magFilter: TextureFilter): Void;
    public function setWraps(uWrap: TextureWrap, vWrap: TextureWrap): Void;
    public function dispose(): Void;
}


@:native("spine.canvas.SkeletonRenderer")
extern class SkeletonRenderer {
    public static var QUAD_TRIANGLES: Array<Float>;
    public static var VERTEX_SIZE: Float;
    private var ctx : Any;
    public var triangleRendering: Bool;
    public var debugRendering: Bool;
    private var vertices : Any;
    private var tempColor : Any;
    public function new(context: Any);
    public function draw(skeleton: Skeleton): Void;
    private var drawImages : Any;
    private var drawTriangles : Any;
    private var drawTriangle : Any;
    private var computeRegionVertices : Any;
    private var computeMeshVertices : Any;
}