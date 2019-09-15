package phaser.renderer.webgl.pipelines;

/**
 * Implements a model view projection matrices.
 * Pipelines can implement this for doing 2D and 3D rendering.
 *
 * @namespace Phaser.Renderer.WebGL.Pipelines.ModelViewProjection
 * @since 3.0.0
 */
@:native("Phaser.Renderer.WebGL.Pipelines.ModelViewProjection")
class ModelViewProjection {
    /**
     * Dirty flag for checking if model matrix needs to be updated on GPU.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.ModelViewProjection#modelMatrixDirty
     * @type {boolean}
     * @since 3.0.0
     */
    static public var modelMatrixDirty:Bool;
    /**
     * Dirty flag for checking if view matrix needs to be updated on GPU.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.ModelViewProjection#viewMatrixDirty
     * @type {boolean}
     * @since 3.0.0
     */
    static public var viewMatrixDirty:Bool;
    /**
     * Dirty flag for checking if projection matrix needs to be updated on GPU.
     *
     * @name Phaser.Renderer.WebGL.Pipelines.ModelViewProjection#projectionMatrixDirty
     * @type {boolean}
     * @since 3.0.0
     */
    static public var projectionMatrixDirty:Bool;
    /**
     * Model matrix
     *
     * @name Phaser.Renderer.WebGL.Pipelines.ModelViewProjection#modelMatrix
     * @type {?Float32Array}
     * @since 3.0.0
     */
    static public var modelMatrix:js.html.Float32Array;
    /**
     * View matrix
     *
     * @name Phaser.Renderer.WebGL.Pipelines.ModelViewProjection#viewMatrix
     * @type {?Float32Array}
     * @since 3.0.0
     */
    static public var viewMatrix:js.html.Float32Array;
    /**
     * Projection matrix
     *
     * @name Phaser.Renderer.WebGL.Pipelines.ModelViewProjection#projectionMatrix
     * @type {?Float32Array}
     * @since 3.0.0
     */
    static public var projectionMatrix:js.html.Float32Array;
}
