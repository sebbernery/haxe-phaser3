package phaser.renderer.webgl.pipelines;

/**
 * @classdesc
 * TextureTintPipeline implements the rendering infrastructure
 * for displaying textured objects
 * The config properties are:
 * - game: Current game instance.
 * - renderer: Current WebGL renderer.
 * - topology: This indicates how the primitives are rendered. The default value is GL_TRIANGLES.
 *              Here is the full list of rendering primitives (https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Constants).
 * - vertShader: Source for vertex shader as a string.
 * - fragShader: Source for fragment shader as a string.
 * - vertexCapacity: The amount of vertices that shall be allocated
 * - vertexSize: The size of a single vertex in bytes.
 *
 * @class TextureTintPipeline
 * @extends Phaser.Renderer.WebGL.WebGLPipeline
 * @memberof Phaser.Renderer.WebGL.Pipelines
 * @constructor
 * @since 3.0.0
 *
 * @param {object} config - The configuration options for this Texture Tint Pipeline, as described above.
 */
@:native("Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline")
extern class TextureTintPipeline extends phaser.renderer.webgl.WebGLPipeline {
    public function new(config:Dynamic);
    /**
     * Float32 view of the array buffer containing the pipeline's vertices.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#vertexViewF32
     * @type {Float32Array}
     * @since 3.0.0
     */
    public var vertexViewF32:js.html.Float32Array;
    /**
     * Uint32 view of the array buffer containing the pipeline's vertices.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#vertexViewU32
     * @type {Uint32Array}
     * @since 3.0.0
     */
    public var vertexViewU32:js.html.Uint32Array;
    /**
     * Size of the batch.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#maxQuads
     * @type {integer}
     * @since 3.0.0
     */
    public var maxQuads:Int;
    /**
     * Collection of batch information
     *
     * @name Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batches
     * @type {array}
     * @since 3.1.0
     */
    public var batches:Array<Dynamic>;
    /**
     * Assigns a texture to the current batch. If a different texture is already set it creates a new batch object.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#setTexture2D
     * @since 3.1.0
     *
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch. If not given uses blankTexture.
     * @param {integer} [unit=0] - Texture unit to which the texture needs to be bound.
     *
     * @return {Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline} This pipeline instance.
     */
    public function setTexture2D(?texture:js.html.webgl.Texture, ?unit:Int):phaser.renderer.webgl.pipelines.TextureTintPipeline;
    /**
     * Checks if the current batch has the same texture and texture unit, or if we need to create a new batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#requireTextureBatch
     * @since 3.16.0
     *
     * @param {WebGLTexture} texture - WebGLTexture that will be assigned to the current batch. If not given uses blankTexture.
     * @param {integer} unit - Texture unit to which the texture needs to be bound.
     *
     * @return {boolean} `true` if the pipeline needs to create a new batch, otherwise `false`.
     */
    public function requireTextureBatch(texture:js.html.webgl.Texture, unit:Int):Bool;
    /**
     * Creates a new batch object and pushes it to a batch array.
     * The batch object contains information relevant to the current
     * vertex batch like the offset in the vertex buffer, vertex count and
     * the textures used by that batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#pushBatch
     * @since 3.1.0
     *
     * @param {WebGLTexture} texture - Optional WebGLTexture that will be assigned to the created batch.
     * @param {integer} unit - Texture unit to which the texture needs to be bound.
     */
    public function pushBatch(texture:js.html.webgl.Texture, unit:Int):Void;
    /**
     * Takes a Sprite Game Object, or any object that extends it, and adds it to the batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchSprite
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.Image|Phaser.GameObjects.Sprite)} sprite - The texture based Game Object to add to the batch.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to use for the rendering transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentTransformMatrix] - The transform matrix of the parent container, if set.
     */
    public function batchSprite(sprite:Dynamic, camera:phaser.cameras.scene2d.Camera, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
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
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchQuad
     * @since 3.12.0
     *
     * @param {number} x0 - The top-left x position.
     * @param {number} y0 - The top-left y position.
     * @param {number} x1 - The bottom-left x position.
     * @param {number} y1 - The bottom-left y position.
     * @param {number} x2 - The bottom-right x position.
     * @param {number} y2 - The bottom-right y position.
     * @param {number} x3 - The top-right x position.
     * @param {number} y3 - The top-right y position.
     * @param {number} u0 - UV u0 value.
     * @param {number} v0 - UV v0 value.
     * @param {number} u1 - UV u1 value.
     * @param {number} v1 - UV v1 value.
     * @param {number} tintTL - The top-left tint color value.
     * @param {number} tintTR - The top-right tint color value.
     * @param {number} tintBL - The bottom-left tint color value.
     * @param {number} tintBR - The bottom-right tint color value.
     * @param {(number|boolean)} tintEffect - The tint effect for the shader to use.
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch if a flush occurs.
     * @param {integer} [unit=0] - Texture unit to which the texture needs to be bound.
     *
     * @return {boolean} `true` if this method caused the batch to flush, otherwise `false`.
     */
    public function batchQuad(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, u0:Float, v0:Float, u1:Float, v1:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintBR:Float, tintEffect:Dynamic, ?texture:js.html.webgl.Texture, ?unit:Int):Bool;
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
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchTri
     * @since 3.12.0
     *
     * @param {number} x1 - The bottom-left x position.
     * @param {number} y1 - The bottom-left y position.
     * @param {number} x2 - The bottom-right x position.
     * @param {number} y2 - The bottom-right y position.
     * @param {number} x3 - The top-right x position.
     * @param {number} y3 - The top-right y position.
     * @param {number} u0 - UV u0 value.
     * @param {number} v0 - UV v0 value.
     * @param {number} u1 - UV u1 value.
     * @param {number} v1 - UV v1 value.
     * @param {number} tintTL - The top-left tint color value.
     * @param {number} tintTR - The top-right tint color value.
     * @param {number} tintBL - The bottom-left tint color value.
     * @param {(number|boolean)} tintEffect - The tint effect for the shader to use.
     * @param {WebGLTexture} [texture] - WebGLTexture that will be assigned to the current batch if a flush occurs.
     * @param {integer} [unit=0] - Texture unit to which the texture needs to be bound.
     *
     * @return {boolean} `true` if this method caused the batch to flush, otherwise `false`.
     */
    public function batchTri(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, u0:Float, v0:Float, u1:Float, v1:Float, tintTL:Float, tintTR:Float, tintBL:Float, tintEffect:Dynamic, ?texture:js.html.webgl.Texture, ?unit:Int):Bool;
    /**
     * Generic function for batching a textured quad using argument values instead of a Game Object.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchTexture
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} gameObject - Source GameObject.
     * @param {WebGLTexture} texture - Raw WebGLTexture associated with the quad.
     * @param {integer} textureWidth - Real texture width.
     * @param {integer} textureHeight - Real texture height.
     * @param {number} srcX - X coordinate of the quad.
     * @param {number} srcY - Y coordinate of the quad.
     * @param {number} srcWidth - Width of the quad.
     * @param {number} srcHeight - Height of the quad.
     * @param {number} scaleX - X component of scale.
     * @param {number} scaleY - Y component of scale.
     * @param {number} rotation - Rotation of the quad.
     * @param {boolean} flipX - Indicates if the quad is horizontally flipped.
     * @param {boolean} flipY - Indicates if the quad is vertically flipped.
     * @param {number} scrollFactorX - By which factor is the quad affected by the camera horizontal scroll.
     * @param {number} scrollFactorY - By which factor is the quad effected by the camera vertical scroll.
     * @param {number} displayOriginX - Horizontal origin in pixels.
     * @param {number} displayOriginY - Vertical origin in pixels.
     * @param {number} frameX - X coordinate of the texture frame.
     * @param {number} frameY - Y coordinate of the texture frame.
     * @param {number} frameWidth - Width of the texture frame.
     * @param {number} frameHeight - Height of the texture frame.
     * @param {integer} tintTL - Tint for top left.
     * @param {integer} tintTR - Tint for top right.
     * @param {integer} tintBL - Tint for bottom left.
     * @param {integer} tintBR - Tint for bottom right.
     * @param {number} tintEffect - The tint effect.
     * @param {number} uOffset - Horizontal offset on texture coordinate.
     * @param {number} vOffset - Vertical offset on texture coordinate.
     * @param {Phaser.Cameras.Scene2D.Camera} camera - Current used camera.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentTransformMatrix - Parent container.
     * @param {boolean} [skipFlip=false] - Skip the renderTexture check.
     */
    public function batchTexture(gameObject:phaser.gameobjects.GameObject, texture:js.html.webgl.Texture, textureWidth:Int, textureHeight:Int, srcX:Float, srcY:Float, srcWidth:Float, srcHeight:Float, scaleX:Float, scaleY:Float, rotation:Float, flipX:Bool, flipY:Bool, scrollFactorX:Float, scrollFactorY:Float, displayOriginX:Float, displayOriginY:Float, frameX:Float, frameY:Float, frameWidth:Float, frameHeight:Float, tintTL:Int, tintTR:Int, tintBL:Int, tintBR:Int, tintEffect:Float, uOffset:Float, vOffset:Float, camera:phaser.cameras.scene2d.Camera, parentTransformMatrix:phaser.gameobjects.components.TransformMatrix, ?skipFlip:Bool):Void;
    /**
     * Adds a Texture Frame into the batch for rendering.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchTextureFrame
     * @since 3.12.0
     *
     * @param {Phaser.Textures.Frame} frame - The Texture Frame to be rendered.
     * @param {number} x - The horizontal position to render the texture at.
     * @param {number} y - The vertical position to render the texture at.
     * @param {number} tint - The tint color.
     * @param {number} alpha - The alpha value.
     * @param {Phaser.GameObjects.Components.TransformMatrix} transformMatrix - The Transform Matrix to use for the texture.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentTransformMatrix] - A parent Transform Matrix.
     */
    public function batchTextureFrame(frame:phaser.textures.Frame, x:Float, y:Float, tint:Float, alpha:Float, transformMatrix:phaser.gameobjects.components.TransformMatrix, ?parentTransformMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Pushes a filled rectangle into the vertex batch.
     * Rectangle has no transform values and isn't transformed into the local space.
     * Used for directly batching untransformed rectangles, such as Camera background colors.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#drawFillRect
     * @since 3.12.0
     *
     * @param {number} x - Horizontal top left coordinate of the rectangle.
     * @param {number} y - Vertical top left coordinate of the rectangle.
     * @param {number} width - Width of the rectangle.
     * @param {number} height - Height of the rectangle.
     * @param {number} color - Color of the rectangle to draw.
     * @param {number} alpha - Alpha value of the rectangle to draw.
     */
    public function drawFillRect(x:Float, y:Float, width:Float, height:Float, color:Float, alpha:Float):Void;
    /**
     * Pushes a filled rectangle into the vertex batch.
     * Rectangle factors in the given transform matrices before adding to the batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchFillRect
     * @since 3.12.0
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
     * Triangle factors in the given transform matrices before adding to the batch.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchFillTriangle
     * @since 3.12.0
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
     * Triangle factors in the given transform matrices before adding to the batch.
     * The triangle is created from 3 lines and drawn using the `batchStrokePath` method.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchStrokeTriangle
     * @since 3.12.0
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
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchFillPath
     * @since 3.12.0
     *
     * @param {array} path - Collection of points that represent the path.
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchFillPath(path:Array<Dynamic>, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Adds the given path to the vertex batch for rendering.
     *
     * It works by taking the array of path data and calling `batchLine` for each section
     * of the path.
     *
     * The path is optionally closed at the end.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchStrokePath
     * @since 3.12.0
     *
     * @param {array} path - Collection of points that represent the path.
     * @param {number} lineWidth - The width of the line segments in pixels.
     * @param {boolean} pathOpen - Indicates if the path should be closed or left open.
     * @param {Phaser.GameObjects.Components.TransformMatrix} currentMatrix - The current transform.
     * @param {Phaser.GameObjects.Components.TransformMatrix} parentMatrix - The parent transform.
     */
    public function batchStrokePath(path:Array<Dynamic>, lineWidth:Float, pathOpen:Bool, currentMatrix:phaser.gameobjects.components.TransformMatrix, parentMatrix:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Creates a quad and adds it to the vertex batch based on the given line values.
     *
     * @method Phaser.Renderer.WebGL.Pipelines.TextureTintPipeline#batchLine
     * @since 3.12.0
     *
     * @param {number} ax - X coordinate to the start of the line
     * @param {number} ay - Y coordinate to the start of the line
     * @param {number} bx - X coordinate to the end of the line
     * @param {number} by - Y coordinate to the end of the line
     * @param {number} aLineWidth - Width of the start of the line
     * @param {number} bLineWidth - Width of the end of the line
     * @param {Float32Array} currentMatrix - Parent matrix, generally used by containers
     */
    public function batchLine(ax:Float, ay:Float, bx:Float, by:Float, aLineWidth:Float, bLineWidth:Float, currentMatrix:js.html.Float32Array):Void;
}
