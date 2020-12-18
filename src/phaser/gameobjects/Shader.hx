package phaser.gameobjects;

/**
 * @classdesc
 * A Shader Game Object.
 *
 * This Game Object allows you to easily add a quad with its own shader into the display list, and manipulate it
 * as you would any other Game Object, including scaling, rotating, positioning and adding to Containers. Shaders
 * can be masked with either Bitmap or Geometry masks and can also be used as a Bitmap Mask for a Camera or other
 * Game Object. They can also be made interactive and used for input events.
 *
 * It works by taking a reference to a `Phaser.Display.BaseShader` instance, as found in the Shader Cache. These can
 * be created dynamically at runtime, or loaded in via the GLSL File Loader:
 *
 * ```javascript
 * function preload ()
 * {
 *     this.load.glsl('fire', 'shaders/fire.glsl.js');
 * }
 *
 * function create ()
 * {
 *     this.add.shader('fire', 400, 300, 512, 512);
 * }
 * ```
 *
 * Please see the Phaser 3 Examples GitHub repo for examples of loading and creating shaders dynamically.
 *
 * Due to the way in which they work, you cannot directly change the alpha or blend mode of a Shader. This should
 * be handled via exposed uniforms in the shader code itself.
 *
 * By default a Shader will be created with a standard set of uniforms. These were added to match those
 * found on sites such as ShaderToy or GLSLSandbox, and provide common functionality a shader may need,
 * such as the timestamp, resolution or pointer position. You can replace them by specifying your own uniforms
 * in the Base Shader.
 *
 * These Shaders work by halting the current pipeline during rendering, creating a viewport matched to the
 * size of this Game Object and then renders a quad using the bound shader. At the end, the pipeline is restored.
 *
 * Because it blocks the pipeline it means it will interrupt any batching that is currently going on, so you should
 * use these Game Objects sparingly. If you need to have a fully batched custom shader, then please look at using
 * a custom pipeline instead. However, for background or special masking effects, they are extremely effective.
 *
 * @class Shader
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @webglOnly
 * @since 3.17.0
 *
 * @extends Phaser.GameObjects.Components.ComputedSize
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.GetBounds
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.Origin
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {(string|Phaser.Display.BaseShader)} key - The key of the shader to use from the shader cache, or a BaseShader instance.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [width=128] - The width of the Game Object.
 * @param {number} [height=128] - The height of the Game Object.
 * @param {string[]} [textures] - Optional array of texture keys to bind to the iChannel0...3 uniforms. The textures must already exist in the Texture Manager.
 * @param {any} [textureData] - Additional texture data if you want to create shader with none NPOT textures.
 */
@:native("Phaser.GameObjects.Shader")
extern class Shader extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, key:Dynamic, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?textures:Array<String>, ?textureData:Dynamic);
    /**
     * The underlying shader object being used.
     * Empty by default and set during a call to the `setShader` method.
     *
     * @name Phaser.GameObjects.Shader#shader
     * @type {Phaser.Display.BaseShader}
     * @since 3.17.0
     */
    public var shader:phaser.display.BaseShader;
    /**
     * A reference to the current renderer.
     * Shaders only work with the WebGL Renderer.
     *
     * @name Phaser.GameObjects.Shader#renderer
     * @type {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)}
     * @since 3.17.0
     */
    public var renderer:Dynamic;
    /**
     * The WebGL context belonging to the renderer.
     *
     * @name Phaser.GameObjects.Shader#gl
     * @type {WebGLRenderingContext}
     * @since 3.17.0
     */
    public var gl:js.html.webgl.RenderingContext;
    /**
     * Raw byte buffer of vertices this Shader uses.
     *
     * @name Phaser.GameObjects.Shader#vertexData
     * @type {ArrayBuffer}
     * @since 3.17.0
     */
    public var vertexData:js.lib.ArrayBuffer;
    /**
     * The WebGL vertex buffer object this shader uses.
     *
     * @name Phaser.GameObjects.Shader#vertexBuffer
     * @type {WebGLBuffer}
     * @since 3.17.0
     */
    public var vertexBuffer:js.html.webgl.Buffer;
    /**
     * The WebGL shader program this shader uses.
     *
     * @name Phaser.GameObjects.Shader#program
     * @type {WebGLProgram}
     * @since 3.17.0
     */
    public var program:js.html.webgl.Program;
    /**
     * Uint8 view to the vertex raw buffer. Used for uploading vertex buffer resources to the GPU.
     *
     * @name Phaser.GameObjects.Shader#bytes
     * @type {Uint8Array}
     * @since 3.17.0
     */
    public var bytes:js.lib.Uint8Array;
    /**
     * Float32 view of the array buffer containing the shaders vertices.
     *
     * @name Phaser.GameObjects.Shader#vertexViewF32
     * @type {Float32Array}
     * @since 3.17.0
     */
    public var vertexViewF32:js.lib.Float32Array;
    /**
     * The view matrix the shader uses during rendering.
     *
     * @name Phaser.GameObjects.Shader#viewMatrix
     * @type {Float32Array}
     * @readonly
     * @since 3.17.0
     */
    public var viewMatrix:js.lib.Float32Array;
    /**
     * The projection matrix the shader uses during rendering.
     *
     * @name Phaser.GameObjects.Shader#projectionMatrix
     * @type {Float32Array}
     * @readonly
     * @since 3.17.0
     */
    public var projectionMatrix:js.lib.Float32Array;
    /**
     * The default uniform mappings. These can be added to (or replaced) by specifying your own uniforms when
     * creating this shader game object. The uniforms are updated automatically during the render step.
     *
     * The defaults are:
     *
     * `resolution` (2f) - Set to the size of this shader.
     * `time` (1f) - The elapsed game time, in seconds.
     * `mouse` (2f) - If a pointer has been bound (with `setPointer`), this uniform contains its position each frame.
     * `date` (4fv) - A vec4 containing the year, month, day and time in seconds.
     * `sampleRate` (1f) - Sound sample rate. 44100 by default.
     * `iChannel0...3` (sampler2D) - Input channels 0 to 3. `null` by default.
     *
     * @name Phaser.GameObjects.Shader#uniforms
     * @type {any}
     * @since 3.17.0
     */
    public var uniforms:Dynamic;
    /**
     * The pointer bound to this shader, if any.
     * Set via the chainable `setPointer` method, or by modifying this property directly.
     *
     * @name Phaser.GameObjects.Shader#pointer
     * @type {Phaser.Input.Pointer}
     * @since 3.17.0
     */
    public var pointer:phaser.input.Pointer;
    /**
     * A reference to the GL Frame Buffer this Shader is drawing to.
     * This property is only set if you have called `Shader.setRenderToTexture`.
     *
     * @name Phaser.GameObjects.Shader#framebuffer
     * @type {?WebGLFramebuffer}
     * @since 3.19.0
     */
    public var framebuffer:js.html.webgl.Framebuffer;
    /**
     * A reference to the WebGLTexture this Shader is rendering to.
     * This property is only set if you have called `Shader.setRenderToTexture`.
     *
     * @name Phaser.GameObjects.Shader#glTexture
     * @type {?WebGLTexture}
     * @since 3.19.0
     */
    public var glTexture:js.html.webgl.Texture;
    /**
     * A flag that indicates if this Shader has been set to render to a texture instead of the display list.
     *
     * This property is `true` if you have called `Shader.setRenderToTexture`, otherwise it's `false`.
     *
     * A Shader that is rendering to a texture _does not_ appear on the display list.
     *
     * @name Phaser.GameObjects.Shader#renderToTexture
     * @type {boolean}
     * @readonly
     * @since 3.19.0
     */
    public var renderToTexture:Bool;
    /**
     * A reference to the Phaser.Textures.Texture that has been stored in the Texture Manager for this Shader.
     *
     * This property is only set if you have called `Shader.setRenderToTexture`, otherwise it is `null`.
     *
     * @name Phaser.GameObjects.Shader#texture
     * @type {Phaser.Textures.Texture}
     * @since 3.19.0
     */
    public var texture:phaser.textures.Texture;
    /**
     * Changes this Shader so instead of rendering to the display list it renders to a
     * WebGL Framebuffer and WebGL Texture instead. This allows you to use the output
     * of this shader as an input for another shader, by mapping a sampler2D uniform
     * to it.
     *
     * After calling this method the `Shader.framebuffer` and `Shader.glTexture` properties
     * are populated.
     *
     * Additionally, you can provide a key to this method. Doing so will create a Phaser Texture
     * from this Shader and save it into the Texture Manager, allowing you to then use it for
     * any texture-based Game Object, such as a Sprite or Image:
     *
     * ```javascript
     * var shader = this.add.shader('myShader', x, y, width, height);
     *
     * shader.setRenderToTexture('doodle');
     *
     * this.add.image(400, 300, 'doodle');
     * ```
     *
     * Note that it stores an active reference to this Shader. That means as this shader updates,
     * so does the texture and any object using it to render with. Also, if you destroy this
     * shader, be sure to clear any objects that may have been using it as a texture too.
     *
     * You can access the Phaser Texture that is created via the `Shader.texture` property.
     *
     * By default it will create a single base texture. You can add frames to the texture
     * by using the `Texture.add` method. After doing this, you can then allow Game Objects
     * to use a specific frame from a Render Texture.
     *
     * @method Phaser.GameObjects.Shader#setRenderToTexture
     * @since 3.19.0
     *
     * @param {string} [key] - The unique key to store the texture as within the global Texture Manager.
     * @param {boolean} [flipY=false] - Does this texture need vertically flipping before rendering? This should usually be set to `true` if being fed from a buffer.
     *
     * @return {this} This Shader instance.
     */
    public function setRenderToTexture(?key:String, ?flipY:Bool):Dynamic;
    /**
     * Sets the fragment and, optionally, the vertex shader source code that this Shader will use.
     * This will immediately delete the active shader program, if set, and then create a new one
     * with the given source. Finally, the shader uniforms are initialized.
     *
     * @method Phaser.GameObjects.Shader#setShader
     * @since 3.17.0
     *
     * @param {(string|Phaser.Display.BaseShader)} key - The key of the shader to use from the shader cache, or a BaseShader instance.
     * @param {string[]} [textures] - Optional array of texture keys to bind to the iChannel0...3 uniforms. The textures must already exist in the Texture Manager.
     * @param {any} [textureData] - Additional texture data.
     *
     * @return {this} This Shader instance.
     */
    public function setShader(key:Dynamic, ?textures:Array<String>, ?textureData:Dynamic):Dynamic;
    /**
     * Binds a Phaser Pointer object to this Shader.
     *
     * The screen position of the pointer will be set in to the shaders `mouse` uniform
     * automatically every frame. Call this method with no arguments to unbind the pointer.
     *
     * @method Phaser.GameObjects.Shader#setPointer
     * @since 3.17.0
     *
     * @param {Phaser.Input.Pointer} [pointer] - The Pointer to bind to this shader.
     *
     * @return {this} This Shader instance.
     */
    public function setPointer(?pointer:phaser.input.Pointer):Dynamic;
    /**
     * Sets this shader to use an orthographic projection matrix.
     * This matrix is stored locally in the `projectionMatrix` property,
     * as well as being bound to the `uProjectionMatrix` uniform.
     *
     * @method Phaser.GameObjects.Shader#projOrtho
     * @since 3.17.0
     *
     * @param {number} left - The left value.
     * @param {number} right - The right value.
     * @param {number} bottom - The bottom value.
     * @param {number} top - The top value.
     */
    public function projOrtho(left:Float, right:Float, bottom:Float, top:Float):Void;
    /**
     * Sets a sampler2D uniform on this shader where the source texture is a WebGLTexture.
     *
     * This allows you to feed the output from one Shader into another:
     *
     * ```javascript
     * let shader1 = this.add.shader(baseShader1, 0, 0, 512, 512).setRenderToTexture();
     * let shader2 = this.add.shader(baseShader2, 0, 0, 512, 512).setRenderToTexture('output');
     *
     * shader1.setSampler2DBuffer('iChannel0', shader2.glTexture, 512, 512);
     * shader2.setSampler2DBuffer('iChannel0', shader1.glTexture, 512, 512);
     * ```
     *
     * In the above code, the result of baseShader1 is fed into Shader2 as the `iChannel0` sampler2D uniform.
     * The result of baseShader2 is then fed back into shader1 again, creating a feedback loop.
     *
     * If you wish to use an image from the Texture Manager as a sampler2D input for this shader,
     * see the `Shader.setSampler2D` method.
     *
     * @method Phaser.GameObjects.Shader#setSampler2DBuffer
     * @since 3.19.0
     *
     * @param {string} uniformKey - The key of the sampler2D uniform to be updated, i.e. `iChannel0`.
     * @param {WebGLTexture} texture - A WebGLTexture reference.
     * @param {integer} width - The width of the texture.
     * @param {integer} height - The height of the texture.
     * @param {integer} [textureIndex=0] - The texture index.
     * @param {any} [textureData] - Additional texture data.
     *
     * @return {this} This Shader instance.
     */
    public function setSampler2DBuffer(uniformKey:String, texture:js.html.webgl.Texture, width:Int, height:Int, ?textureIndex:Int, ?textureData:Dynamic):Dynamic;
    /**
     * Sets a sampler2D uniform on this shader.
     *
     * The textureKey given is the key from the Texture Manager cache. You cannot use a single frame
     * from a texture, only the full image. Also, lots of shaders expect textures to be power-of-two sized.
     *
     * If you wish to use another Shader as a sampler2D input for this shader, see the `Shader.setSampler2DBuffer` method.
     *
     * @method Phaser.GameObjects.Shader#setSampler2D
     * @since 3.17.0
     *
     * @param {string} uniformKey - The key of the sampler2D uniform to be updated, i.e. `iChannel0`.
     * @param {string} textureKey - The key of the texture, as stored in the Texture Manager. Must already be loaded.
     * @param {integer} [textureIndex=0] - The texture index.
     * @param {any} [textureData] - Additional texture data.
     *
     * @return {this} This Shader instance.
     */
    public function setSampler2D(uniformKey:String, textureKey:String, ?textureIndex:Int, ?textureData:Dynamic):Dynamic;
    /**
     * Sets a property of a uniform already present on this shader.
     *
     * To modify the value of a uniform such as a 1f or 1i use the `value` property directly:
     *
     * ```javascript
     * shader.setUniform('size.value', 16);
     * ```
     *
     * You can use dot notation to access deeper values, for example:
     *
     * ```javascript
     * shader.setUniform('resolution.value.x', 512);
     * ```
     *
     * The change to the uniform will take effect the next time the shader is rendered.
     *
     * @method Phaser.GameObjects.Shader#setUniform
     * @since 3.17.0
     *
     * @param {string} key - The key of the uniform to modify. Use dots for deep properties, i.e. `resolution.value.x`.
     * @param {any} value - The value to set into the uniform.
     *
     * @return {this} This Shader instance.
     */
    public function setUniform(key:String, value:Dynamic):Dynamic;
    /**
     * Returns the uniform object for the given key, or `null` if the uniform couldn't be found.
     *
     * @method Phaser.GameObjects.Shader#getUniform
     * @since 3.17.0
     *
     * @param {string} key - The key of the uniform to return the value for.
     *
     * @return {any} A reference to the uniform object. This is not a copy, so modifying it will update the original object also.
     */
    public function getUniform(key:String):Dynamic;
    /**
     * A short-cut method that will directly set the texture being used by the `iChannel0` sampler2D uniform.
     *
     * The textureKey given is the key from the Texture Manager cache. You cannot use a single frame
     * from a texture, only the full image. Also, lots of shaders expect textures to be power-of-two sized.
     *
     * @method Phaser.GameObjects.Shader#setChannel0
     * @since 3.17.0
     *
     * @param {string} textureKey - The key of the texture, as stored in the Texture Manager. Must already be loaded.
     * @param {any} [textureData] - Additional texture data.
     *
     * @return {this} This Shader instance.
     */
    public function setChannel0(textureKey:String, ?textureData:Dynamic):Dynamic;
    /**
     * A short-cut method that will directly set the texture being used by the `iChannel1` sampler2D uniform.
     *
     * The textureKey given is the key from the Texture Manager cache. You cannot use a single frame
     * from a texture, only the full image. Also, lots of shaders expect textures to be power-of-two sized.
     *
     * @method Phaser.GameObjects.Shader#setChannel1
     * @since 3.17.0
     *
     * @param {string} textureKey - The key of the texture, as stored in the Texture Manager. Must already be loaded.
     * @param {any} [textureData] - Additional texture data.
     *
     * @return {this} This Shader instance.
     */
    public function setChannel1(textureKey:String, ?textureData:Dynamic):Dynamic;
    /**
     * A short-cut method that will directly set the texture being used by the `iChannel2` sampler2D uniform.
     *
     * The textureKey given is the key from the Texture Manager cache. You cannot use a single frame
     * from a texture, only the full image. Also, lots of shaders expect textures to be power-of-two sized.
     *
     * @method Phaser.GameObjects.Shader#setChannel2
     * @since 3.17.0
     *
     * @param {string} textureKey - The key of the texture, as stored in the Texture Manager. Must already be loaded.
     * @param {any} [textureData] - Additional texture data.
     *
     * @return {this} This Shader instance.
     */
    public function setChannel2(textureKey:String, ?textureData:Dynamic):Dynamic;
    /**
     * A short-cut method that will directly set the texture being used by the `iChannel3` sampler2D uniform.
     *
     * The textureKey given is the key from the Texture Manager cache. You cannot use a single frame
     * from a texture, only the full image. Also, lots of shaders expect textures to be power-of-two sized.
     *
     * @method Phaser.GameObjects.Shader#setChannel3
     * @since 3.17.0
     *
     * @param {string} textureKey - The key of the texture, as stored in the Texture Manager. Must already be loaded.
     * @param {any} [textureData] - Additional texture data.
     *
     * @return {this} This Shader instance.
     */
    public function setChannel3(textureKey:String, ?textureData:Dynamic):Dynamic;
    /**
     * Called automatically during render.
     *
     * This method performs matrix ITRS and then stores the resulting value in the `uViewMatrix` uniform.
     * It then sets up the vertex buffer and shader, updates and syncs the uniforms ready
     * for flush to be called.
     *
     * @method Phaser.GameObjects.Shader#load
     * @since 3.17.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [matrix2D] - The transform matrix to use during rendering.
     */
    public function load(?matrix2D:phaser.gameobjects.components.TransformMatrix):Void;
    /**
     * Called automatically during render.
     *
     * Sets the active shader, loads the vertex buffer and then draws.
     *
     * @method Phaser.GameObjects.Shader#flush
     * @since 3.17.0
     */
    public function flush():Void;
    /**
     * Internal destroy handler, called as part of the destroy process.
     *
     * @method Phaser.GameObjects.Shader#preDestroy
     * @protected
     * @since 3.17.0
     */
    public function preDestroy():Void;
    /**
     * The native (un-scaled) width of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayWidth` property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The native (un-scaled) height of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayHeight` property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The displayed width of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#displayWidth
     * @type {number}
     * @since 3.0.0
     */
    public var displayWidth:Float;
    /**
     * The displayed height of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.ComputedSize#displayHeight
     * @type {number}
     * @since 3.0.0
     */
    public var displayHeight:Float;
    /**
     * Sets the internal size of this Game Object, as used for frame or physics body creation.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.ComputedSize#setSize
     * @since 3.4.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setSize(width:Float, height:Float):Dynamic;
    /**
     * Sets the display size of this Game Object.
     *
     * Calling this will adjust the scale.
     *
     * @method Phaser.GameObjects.Components.ComputedSize#setDisplaySize
     * @since 3.4.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @name Phaser.GameObjects.Components.Depth#depth
     * @type {number}
     * @since 3.0.0
     */
    public var depth:Float;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {integer} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Int):Dynamic;
    /**
     * Gets the center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getCenter
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getCenter(?output:Dynamic):phaser.math.Vector2;
    /**
     * Gets the top-left corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopLeft
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the top-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the top-right corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopRight
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the left-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getLeftCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getLeftCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the right-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getRightCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getRightCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-left corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomLeft
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-right corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomRight
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bounds of this Game Object, regardless of origin.
     * The values are stored and returned in a Rectangle, or Rectangle-like, object.
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBounds
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [output,$return]
     *
     * @param {(Phaser.Geom.Rectangle|object)} [output] - An object to store the values in. If not provided a new Rectangle will be created.
     *
     * @return {(Phaser.Geom.Rectangle|object)} The values stored in the output object.
     */
    public function getBounds(?output:Dynamic):phaser.geom.Rectangle;
    /**
     * The Mask this Game Object is using during render.
     *
     * @name Phaser.GameObjects.Components.Mask#mask
     * @type {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask}
     * @since 3.0.0
     */
    public var mask:Dynamic;
    /**
     * Sets the mask that this Game Object will use to render with.
     *
     * The mask must have been previously created and can be either a GeometryMask or a BitmapMask.
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
     *
     * If a mask is already set on this Game Object it will be immediately replaced.
     *
     * Masks are positioned in global space and are not relative to the Game Object to which they
     * are applied. The reason for this is that multiple Game Objects can all share the same mask.
     *
     * Masks have no impact on physics or input detection. They are purely a rendering component
     * that allows you to limit what is visible during the render pass.
     *
     * @method Phaser.GameObjects.Components.Mask#setMask
     * @since 3.6.2
     *
     * @param {Phaser.Display.Masks.BitmapMask|Phaser.Display.Masks.GeometryMask} mask - The mask this Game Object will use when rendering.
     *
     * @return {this} This Game Object instance.
     */
    public function setMask(mask:Dynamic):Dynamic;
    /**
     * Clears the mask that this Game Object was using.
     *
     * @method Phaser.GameObjects.Components.Mask#clearMask
     * @since 3.6.2
     *
     * @param {boolean} [destroyMask=false] - Destroy the mask before clearing it?
     *
     * @return {this} This Game Object instance.
     */
    public function clearMask(?destroyMask:Bool):Dynamic;
    /**
     * Creates and returns a Bitmap Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a renderable Game Object.
     * A renderable Game Object is one that uses a texture to render with, such as an
     * Image, Sprite, Render Texture or BitmapText.
     *
     * If you do not provide a renderable object, and this Game Object has a texture,
     * it will use itself as the object. This means you can call this method to create
     * a Bitmap Mask from any renderable Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createBitmapMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.GameObject} [renderable] - A renderable Game Object that uses a texture, such as a Sprite.
     *
     * @return {Phaser.Display.Masks.BitmapMask} This Bitmap Mask that was created.
     */
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    /**
     * Creates and returns a Geometry Mask. This mask can be used by any Game Object,
     * including this one.
     *
     * To create the mask you need to pass in a reference to a Graphics Game Object.
     *
     * If you do not provide a graphics object, and this Game Object is an instance
     * of a Graphics object, then it will use itself to create the mask.
     *
     * This means you can call this method to create a Geometry Mask from any Graphics Game Object.
     *
     * @method Phaser.GameObjects.Components.Mask#createGeometryMask
     * @since 3.6.2
     *
     * @param {Phaser.GameObjects.Graphics} [graphics] - A Graphics Game Object. The geometry within it will be used as the mask.
     *
     * @return {Phaser.Display.Masks.GeometryMask} This Geometry Mask that was created.
     */
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
    /**
     * The horizontal origin of this Game Object.
     * The origin maps the relationship between the size and position of the Game Object.
     * The default value is 0.5, meaning all Game Objects are positioned based on their center.
     * Setting the value to 0 means the position now relates to the left of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Origin#originX
     * @type {number}
     * @default 0.5
     * @since 3.0.0
     */
    public var originX:Float;
    /**
     * The vertical origin of this Game Object.
     * The origin maps the relationship between the size and position of the Game Object.
     * The default value is 0.5, meaning all Game Objects are positioned based on their center.
     * Setting the value to 0 means the position now relates to the top of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Origin#originY
     * @type {number}
     * @default 0.5
     * @since 3.0.0
     */
    public var originY:Float;
    /**
     * The horizontal display origin of this Game Object.
     * The origin is a normalized value between 0 and 1.
     * The displayOrigin is a pixel value, based on the size of the Game Object combined with the origin.
     *
     * @name Phaser.GameObjects.Components.Origin#displayOriginX
     * @type {number}
     * @since 3.0.0
     */
    public var displayOriginX:Float;
    /**
     * The vertical display origin of this Game Object.
     * The origin is a normalized value between 0 and 1.
     * The displayOrigin is a pixel value, based on the size of the Game Object combined with the origin.
     *
     * @name Phaser.GameObjects.Components.Origin#displayOriginY
     * @type {number}
     * @since 3.0.0
     */
    public var displayOriginY:Float;
    /**
     * Sets the origin of this Game Object.
     *
     * The values are given in the range 0 to 1.
     *
     * @method Phaser.GameObjects.Components.Origin#setOrigin
     * @since 3.0.0
     *
     * @param {number} [x=0.5] - The horizontal origin value.
     * @param {number} [y=x] - The vertical origin value. If not defined it will be set to the value of `x`.
     *
     * @return {this} This Game Object instance.
     */
    public function setOrigin(?x:Float, ?y:Float):Dynamic;
    /**
     * Sets the origin of this Game Object based on the Pivot values in its Frame.
     *
     * @method Phaser.GameObjects.Components.Origin#setOriginFromFrame
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function setOriginFromFrame():Dynamic;
    /**
     * Sets the display origin of this Game Object.
     * The difference between this and setting the origin is that you can use pixel values for setting the display origin.
     *
     * @method Phaser.GameObjects.Components.Origin#setDisplayOrigin
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal display origin value.
     * @param {number} [y=x] - The vertical display origin value. If not defined it will be set to the value of `x`.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplayOrigin(?x:Float, ?y:Float):Dynamic;
    /**
     * Updates the Display Origin cached values internally stored on this Game Object.
     * You don't usually call this directly, but it is exposed for edge-cases where you may.
     *
     * @method Phaser.GameObjects.Components.Origin#updateDisplayOrigin
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function updateDisplayOrigin():Dynamic;
    /**
     * The horizontal scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorX:Float;
    /**
     * The vertical scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @name Phaser.GameObjects.Components.ScrollFactor#scrollFactorY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scrollFactorY:Float;
    /**
     * Sets the scroll factor of this Game Object.
     *
     * The scroll factor controls the influence of the movement of a Camera upon this Game Object.
     *
     * When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
     * It does not change the Game Objects actual position values.
     *
     * A value of 1 means it will move exactly in sync with a camera.
     * A value of 0 means it will not move at all, even if the camera moves.
     * Other values control the degree to which the camera movement is mapped to this Game Object.
     *
     * Please be aware that scroll factor values other than 1 are not taken in to consideration when
     * calculating physics collisions. Bodies always collide based on their world position, but changing
     * the scroll factor is a visual adjustment to where the textures are rendered, which can offset
     * them from physics bodies if not accounted for in your code.
     *
     * @method Phaser.GameObjects.Components.ScrollFactor#setScrollFactor
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scroll factor of this Game Object.
     * @param {number} [y=x] - The vertical scroll factor of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
    /**
     * The x position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#x
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var x:Float;
    /**
     * The y position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#y
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var y:Float;
    /**
     * The z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#depth} instead.
     *
     * @name Phaser.GameObjects.Components.Transform#z
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var z:Float;
    /**
     * The w position of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#w
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var w:Float;
    /**
     * This is a special setter that allows you to set both the horizontal and vertical scale of this Game Object
     * to the same value, at the same time. When reading this value the result returned is `(scaleX + scaleY) / 2`.
     *
     * Use of this property implies you wish the horizontal and vertical scales to be equal to each other. If this
     * isn't the case, use the `scaleX` or `scaleY` properties instead.
     *
     * @name Phaser.GameObjects.Components.Transform#scale
     * @type {number}
     * @default 1
     * @since 3.18.0
     */
    public var scale:Float;
    /**
     * The horizontal scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleX
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleX:Float;
    /**
     * The vertical scale of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Transform#scaleY
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var scaleY:Float;
    /**
     * The angle of this Game Object as expressed in degrees.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, 90 is down, 180/-180 is left
     * and -90 is up.
     *
     * If you prefer to work in radians, see the `rotation` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#angle
     * @type {integer}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Int;
    /**
     * The angle of this Game Object in radians.
     *
     * Phaser uses a right-hand clockwise rotation system, where 0 is right, PI/2 is down, +-PI is left
     * and -PI/2 is up.
     *
     * If you prefer to work in degrees, see the `angle` property instead.
     *
     * @name Phaser.GameObjects.Components.Transform#rotation
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var rotation:Float;
    /**
     * Sets the position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setPosition
     * @since 3.0.0
     *
     * @param {number} [x=0] - The x position of this Game Object.
     * @param {number} [y=x] - The y position of this Game Object. If not set it will use the `x` value.
     * @param {number} [z=0] - The z position of this Game Object.
     * @param {number} [w=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Dynamic;
    /**
     * Sets the position of this Game Object to be a random position within the confines of
     * the given area.
     *
     * If no area is specified a random position between 0 x 0 and the game width x height is used instead.
     *
     * The position does not factor in the size of this Game Object, meaning that only the origin is
     * guaranteed to be within the area.
     *
     * @method Phaser.GameObjects.Components.Transform#setRandomPosition
     * @since 3.8.0
     *
     * @param {number} [x=0] - The x position of the top-left of the random area.
     * @param {number} [y=0] - The y position of the top-left of the random area.
     * @param {number} [width] - The width of the random area.
     * @param {number} [height] - The height of the random area.
     *
     * @return {this} This Game Object instance.
     */
    public function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the rotation of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setRotation
     * @since 3.0.0
     *
     * @param {number} [radians=0] - The rotation of this Game Object, in radians.
     *
     * @return {this} This Game Object instance.
     */
    public function setRotation(?radians:Float):Dynamic;
    /**
     * Sets the angle of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setAngle
     * @since 3.0.0
     *
     * @param {number} [degrees=0] - The rotation of this Game Object, in degrees.
     *
     * @return {this} This Game Object instance.
     */
    public function setAngle(?degrees:Float):Dynamic;
    /**
     * Sets the scale of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setScale
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scale of this Game Object.
     * @param {number} [y=x] - The vertical scale of this Game Object. If not set it will use the `x` value.
     *
     * @return {this} This Game Object instance.
     */
    public function setScale(x:Float, ?y:Float):Dynamic;
    /**
     * Sets the x position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setX
     * @since 3.0.0
     *
     * @param {number} [value=0] - The x position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setX(?value:Float):Dynamic;
    /**
     * Sets the y position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setY
     * @since 3.0.0
     *
     * @param {number} [value=0] - The y position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setY(?value:Float):Dynamic;
    /**
     * Sets the z position of this Game Object.
     *
     * Note: The z position does not control the rendering order of 2D Game Objects. Use
     * {@link Phaser.GameObjects.Components.Depth#setDepth} instead.
     *
     * @method Phaser.GameObjects.Components.Transform#setZ
     * @since 3.0.0
     *
     * @param {number} [value=0] - The z position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setZ(?value:Float):Dynamic;
    /**
     * Sets the w position of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#setW
     * @since 3.0.0
     *
     * @param {number} [value=0] - The w position of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setW(?value:Float):Dynamic;
    /**
     * Gets the local transform matrix for this Game Object.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getLocalTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the world transform matrix for this Game Object, factoring in any parent Containers.
     *
     * @method Phaser.GameObjects.Components.Transform#getWorldTransformMatrix
     * @since 3.4.0
     *
     * @param {Phaser.GameObjects.Components.TransformMatrix} [tempMatrix] - The matrix to populate with the values from this Game Object.
     * @param {Phaser.GameObjects.Components.TransformMatrix} [parentMatrix] - A temporary matrix to hold parent values during the calculations.
     *
     * @return {Phaser.GameObjects.Components.TransformMatrix} The populated Transform Matrix.
     */
    public function getWorldTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix, ?parentMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    /**
     * Gets the sum total rotation of all of this Game Objects parent Containers.
     *
     * The returned value is in radians and will be zero if this Game Object has no parent container.
     *
     * @method Phaser.GameObjects.Components.Transform#getParentRotation
     * @since 3.18.0
     *
     * @return {number} The sum total rotation, in radians, of all parent containers of this Game Object.
     */
    public function getParentRotation():Float;
    /**
     * The visible state of the Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @name Phaser.GameObjects.Components.Visible#visible
     * @type {boolean}
     * @since 3.0.0
     */
    public var visible:Bool;
    /**
     * Sets the visibility of this Game Object.
     *
     * An invisible Game Object will skip rendering, but will still process update logic.
     *
     * @method Phaser.GameObjects.Components.Visible#setVisible
     * @since 3.0.0
     *
     * @param {boolean} value - The visible state of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setVisible(value:Bool):Dynamic;
}
