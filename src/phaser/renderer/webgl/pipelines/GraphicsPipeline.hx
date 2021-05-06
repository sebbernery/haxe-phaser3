package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * The Graphics Pipeline is the rendering pipeline used by Phaser in WebGL when drawing
 * primitive geometry objects, such as the Graphics Game Object, or the Shape Game Objects
 * such as Arc, Line, Rectangle and Star. It handles the preperation and batching of related vertices.
 *
 * Prior to Phaser v3.50 the functions of this pipeline were merged with the `TextureTintPipeline`.
 *
 * The fragment shader it uses can be found in `shaders/src/Graphics.frag`.
 * The vertex shader it uses can be found in `shaders/src/Graphics.vert`.
 *
 * The default shader attributes for this pipeline are:
 *
 * `inPosition` (vec2)
 * `inColor` (vec4, normalized)
 *
 * The default shader uniforms for this pipeline are:
 *
 * `uProjectionMatrix` (mat4)
 *
 * @class GraphicsPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineConfig} config - The configuration options for this pipeline.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline")
extern class GraphicsPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:phaser.types.renderer.webgl.WebGLPipelineConfig);
    /**
     * A temporary Transform Matrix, re-used internally during batching by the
     * Shape Game Objects.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#calcMatrix
     * @type {Phaser.GameObjects.Components.TransformMatrix}
     * @since 3.50.0
     */
    public var calcMatrix:phaser.gameobjects.components.TransformMatrix;
    /**
     * Pushes a filled rectangle into the vertex batch.
     *
     * Rectangle factors in the given transform matrices before adding to the batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchFillRect
     * @since 3.50.0
     *
     * @param {number} x - Horizontal top left coordinate of the rectangle.
     * @param {number} y - Vertical top left coordinate of the rectangle.
     * @param {number} width - Width of the rectangle.
     * @param {number} height - Height of the rectangle.
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchFillRect(x:Float, y:Float, width:Float, height:Float, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Pushes a filled triangle into the vertex batch.
     *
     * Triangle factors in the given transform matrices before adding to the batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchFillTriangle
     * @since 3.50.0
     *
     * @param {number} x0 - Point 0 x coordinate.
     * @param {number} y0 - Point 0 y coordinate.
     * @param {number} x1 - Point 1 x coordinate.
     * @param {number} y1 - Point 1 y coordinate.
     * @param {number} x2 - Point 2 x coordinate.
     * @param {number} y2 - Point 2 y coordinate.
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchFillTriangle(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Pushes a stroked triangle into the vertex batch.
     *
     * Triangle factors in the given transform matrices before adding to the batch.
     *
     * The triangle is created from 3 lines and drawn using the `batchStrokePath` method.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchStrokeTriangle
     * @since 3.50.0
     *
     * @param {number} x0 - Point 0 x coordinate.
     * @param {number} y0 - Point 0 y coordinate.
     * @param {number} x1 - Point 1 x coordinate.
     * @param {number} y1 - Point 1 y coordinate.
     * @param {number} x2 - Point 2 x coordinate.
     * @param {number} y2 - Point 2 y coordinate.
     * @param {number} lineWidth - The width of the line in pixels.
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchStrokeTriangle(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, lineWidth:Float, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Adds the given path to the vertex batch for rendering.
     *
     * It works by taking the array of path data and then passing it through Earcut, which
     * creates a list of polygons. Each polygon is then added to the batch.
     *
     * The path is always automatically closed because it's filled.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchFillPath
     * @since 3.50.0
     *
     * @param {Phaser.Types.Math.Vector2Like[]} path - Collection of points that represent the path.
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchFillPath(path:Array<phaser.types.math.Vector2Like>, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Adds the given path to the vertex batch for rendering.
     *
     * It works by taking the array of path data and calling `batchLine` for each section
     * of the path.
     *
     * The path is optionally closed at the end.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchStrokePath
     * @since 3.50.0
     *
     * @param {Phaser.Types.Math.Vector2Like[]} path - Collection of points that represent the path.
     * @param {number} lineWidth - The width of the line segments in pixels.
     * @param {boolean} pathOpen - Indicates if the path should be closed or left open.
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchStrokePath(path:Array<phaser.types.math.Vector2Like>, lineWidth:Float, pathOpen:Bool, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Creates a line out of 4 quads and adds it to the vertex batch based on the given line values.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchLine
     * @since 3.50.0
     *
     * @param {number} ax - x coordinate of the start of the line.
     * @param {number} ay - y coordinate of the start of the line.
     * @param {number} bx - x coordinate of the end of the line.
     * @param {number} by - y coordinate of the end of the line.
     * @param {number} aLineWidth - Width of the start of the line.
     * @param {number} bLineWidth - Width of the end of the line.
     * @param {number} index - If this line is part of a multi-line draw, the index of the line in the draw.
     * @param {boolean} closePath - Does this line close a multi-line path?
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchLine(ax:Float, ay:Float, bx:Float, by:Float, aLineWidth:Float, bLineWidth:Float, index:Float, closePath:Bool, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Adds the vertices data into the batch and flushes if full.
     *
     * Assumes 6 vertices in the following arrangement:
     *
     * ```
     * 0----3
     * |\  B|
     * | \  |
     * |  \ |
     * | A \|
     * |    \
     * 1----2
     * ```
     *
     * Where tx0/ty0 = 0, tx1/ty1 = 1, tx2/ty2 = 2 and tx3/ty3 = 3
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchQuad
     * @override
     * @since 3.50.0
     *
     * @param {number} x0 - The top-left x position.
     * @param {number} y0 - The top-left y position.
     * @param {number} x1 - The bottom-left x position.
     * @param {number} y1 - The bottom-left y position.
     * @param {number} x2 - The bottom-right x position.
     * @param {number} y2 - The bottom-right y position.
     * @param {number} x3 - The top-right x position.
     * @param {number} y3 - The top-right y position.
     * @param {number} tintTL - The top-left tint color value.
     * @param {number} tintTR - The top-right tint color value.
     * @param {number} tintBL - The bottom-left tint color value.
     * @param {number} tintBR - The bottom-right tint color value.
     *
     * @return {boolean} `true` if this method caused the batch to flush, otherwise `false`.
     */
    public function batchQuad(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintBR:Float):Bool;
    /**
     * Adds the vertices data into the batch and flushes if full.
     *
     * Assumes 3 vertices in the following arrangement:
     *
     * ```
     * 0
     * |\
     * | \
     * |  \
     * |   \
     * |    \
     * 1-----2
     * ```
     *
     * @method Phaser.Renderer.WebGL.Pipelines.GraphicsPipeline#batchTri
     * @override
     * @since 3.50.0
     *
     * @param {number} x1 - The bottom-left x position.
     * @param {number} y1 - The bottom-left y position.
     * @param {number} x2 - The bottom-right x position.
     * @param {number} y2 - The bottom-right y position.
     * @param {number} x3 - The top-right x position.
     * @param {number} y3 - The top-right y position.
     * @param {number} tintTL - The top-left tint color value.
     * @param {number} tintTR - The top-right tint color value.
     * @param {number} tintBL - The bottom-left tint color value.
     *
     * @return {boolean} `true` if this method caused the batch to flush, otherwise `false`.
     */
    public function batchTri(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, tintTL:Float, tintTR:Float, tintBL:Float):Bool;
}
