package phaser.textures;

/**
 * @classdesc
 * A Texture Source is the encapsulation of the actual source data for a Texture.
 * This is typically an Image Element, loaded from the file system or network, or a Canvas Element.
 *
 * A Texture can contain multiple Texture Sources, which only happens when a multi-atlas is loaded.
 *
 * @class TextureSource
 * @memberof Phaser.Textures
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Textures.Texture} texture - The Texture this TextureSource belongs to.
 * @param {(HTMLImageElement|HTMLCanvasElement|Phaser.GameObjects.RenderTexture|WebGLTexture)} source - The source image data.
 * @param {integer} [width] - Optional width of the source image. If not given it's derived from the source itself.
 * @param {integer} [height] - Optional height of the source image. If not given it's derived from the source itself.
 */
@:native("Phaser.Textures.TextureSource")
extern class TextureSource {
    public function new(texture:phaser.textures.Texture, source:Dynamic, ?width:Int, ?height:Int);
    /**
     * The Texture this TextureSource belongs to.
     *
     * @name Phaser.Textures.TextureSource#renderer
     * @type {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)}
     * @since 3.7.0
     */
    public var renderer:Dynamic;
    /**
     * The Texture this TextureSource belongs to.
     *
     * @name Phaser.Textures.TextureSource#texture
     * @type {Phaser.Textures.Texture}
     * @since 3.0.0
     */
    public var texture:phaser.textures.Texture;
    /**
     * The source of the image data.
     * This is either an Image Element, a Canvas Element, a RenderTexture or a WebGLTexture.
     *
     * @name Phaser.Textures.TextureSource#source
     * @type {(HTMLImageElement|HTMLCanvasElement|Phaser.GameObjects.RenderTexture|WebGLTexture)}
     * @since 3.12.0
     */
    public var source:Dynamic;
    /**
     * The image data.
     * This is either an Image element or a Canvas element.
     *
     * @name Phaser.Textures.TextureSource#image
     * @type {(HTMLImageElement|HTMLCanvasElement)}
     * @since 3.0.0
     */
    public var image:Dynamic;
    /**
     * Currently un-used.
     *
     * @name Phaser.Textures.TextureSource#compressionAlgorithm
     * @type {integer}
     * @default null
     * @since 3.0.0
     */
    public var compressionAlgorithm:Int;
    /**
     * The resolution of the source image.
     *
     * @name Phaser.Textures.TextureSource#resolution
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var resolution:Float;
    /**
     * The width of the source image. If not specified in the constructor it will check
     * the `naturalWidth` and then `width` properties of the source image.
     *
     * @name Phaser.Textures.TextureSource#width
     * @type {integer}
     * @since 3.0.0
     */
    public var width:Int;
    /**
     * The height of the source image. If not specified in the constructor it will check
     * the `naturalHeight` and then `height` properties of the source image.
     *
     * @name Phaser.Textures.TextureSource#height
     * @type {integer}
     * @since 3.0.0
     */
    public var height:Int;
    /**
     * The Scale Mode the image will use when rendering.
     * Either Linear or Nearest.
     *
     * @name Phaser.Textures.TextureSource#scaleMode
     * @type {number}
     * @since 3.0.0
     */
    public var scaleMode:Float;
    /**
     * Is the source image a Canvas Element?
     *
     * @name Phaser.Textures.TextureSource#isCanvas
     * @type {boolean}
     * @since 3.0.0
     */
    public var isCanvas:Bool;
    /**
     * Is the source image a Render Texture?
     *
     * @name Phaser.Textures.TextureSource#isRenderTexture
     * @type {boolean}
     * @since 3.12.0
     */
    public var isRenderTexture:Bool;
    /**
     * Is the source image a WebGLTexture?
     *
     * @name Phaser.Textures.TextureSource#isGLTexture
     * @type {boolean}
     * @since 3.19.0
     */
    public var isGLTexture:Bool;
    /**
     * Are the source image dimensions a power of two?
     *
     * @name Phaser.Textures.TextureSource#isPowerOf2
     * @type {boolean}
     * @since 3.0.0
     */
    public var isPowerOf2:Bool;
    /**
     * The WebGL Texture of the source image. If this TextureSource is driven from a WebGLTexture
     * already, then this is a reference to that WebGLTexture.
     *
     * @name Phaser.Textures.TextureSource#glTexture
     * @type {?WebGLTexture}
     * @default null
     * @since 3.0.0
     */
    public var glTexture:js.html.webgl.Texture;
    /**
     * Creates a WebGL Texture, if required, and sets the Texture filter mode.
     *
     * @method Phaser.Textures.TextureSource#init
     * @since 3.0.0
     *
     * @param {Phaser.Game} game - A reference to the Phaser Game instance.
     */
    public function init(game:phaser.Game):Void;
    /**
     * Sets the Filter Mode for this Texture.
     *
     * The mode can be either Linear, the default, or Nearest.
     *
     * For pixel-art you should use Nearest.
     *
     * @method Phaser.Textures.TextureSource#setFilter
     * @since 3.0.0
     *
     * @param {Phaser.Textures.FilterMode} filterMode - The Filter Mode.
     */
    public function setFilter(filterMode:Dynamic):Void;
    /**
     * If this TextureSource is backed by a Canvas and is running under WebGL,
     * it updates the WebGLTexture using the canvas data.
     *
     * @method Phaser.Textures.TextureSource#update
     * @since 3.7.0
     */
    public function update():Void;
    /**
     * Destroys this Texture Source and nulls the references.
     *
     * @method Phaser.Textures.TextureSource#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
