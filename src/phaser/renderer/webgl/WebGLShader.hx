package phaser.renderer.webgl;

/**
 * @classdesc
 * Instances of the WebGLShader class belong to the WebGL Pipeline classes. When the pipeline is
 * created it will create an instance of this class for each one of its shaders, as defined in
 * the pipeline configuration.
 *
 * This class encapsulates everything needed to manage a shader in a pipeline, including the
 * shader attributes and uniforms, as well as lots of handy methods such as `set2f`, for setting
 * uniform values on this shader.
 *
 * Typically, you do not create an instance of this class directly, as it works in unison with
 * the pipeline to which it belongs. You can gain access to this class via a pipeline's `shaders`
 * array, post-creation.
 *
 * @class WebGLShader
 * @memberof Phaser.Renderer.WebGL
 * @constructor
 * @since 3.50.0
 *
 * @param {Phaser.Renderer.WebGL.WebGLPipeline} pipeline - The WebGLPipeline to which this Shader belongs.
 * @param {string} name - The name of this Shader.
 * @param {string} vertexShader - The vertex shader source code as a single string.
 * @param {string} fragmentShader - The fragment shader source code as a single string.
 * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineAttributesConfig[]} attributes - An array of attributes.
 */
@:native("Phaser.Renderer.WebGL.WebGLShader")
extern class WebGLShader {
    public function new(pipeline:phaser.renderer.webgl.WebGLPipeline, name:String, vertexShader:String, fragmentShader:String, attributes:Array<phaser.types.renderer.webgl.WebGLPipelineAttributesConfig>);
    /**
     * A reference to the WebGLPipeline that owns this Shader.
     *
     * A Shader class can only belong to a single pipeline.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#pipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @since 3.50.0
     */
    public var pipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * The name of this shader.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#name
     * @type {string}
     * @since 3.50.0
     */
    public var name:String;
    /**
     * A reference to the WebGLRenderer instance.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#renderer
     * @type {Phaser.Renderer.WebGL.WebGLRenderer}
     * @since 3.50.0
     */
    public var renderer:phaser.renderer.webgl.WebGLRenderer;
    /**
     * A reference to the WebGL Rendering Context the WebGL Renderer is using.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#gl
     * @type {WebGLRenderingContext}
     * @since 3.50.0
     */
    public var gl:js.html.webgl.RenderingContext;
    /**
     * The WebGLProgram created from the vertex and fragment shaders.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#program
     * @type {WebGLProgram}
     * @since 3.50.0
     */
    public var program:js.html.webgl.Program;
    /**
     * Array of objects that describe the vertex attributes.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#attributes
     * @type {Phaser.Types.Renderer.WebGL.WebGLPipelineAttribute[]}
     * @since 3.50.0
     */
    public var attributes:Array<phaser.types.renderer.webgl.WebGLPipelineAttribute>;
    /**
     * The amount of vertex attribute components of 32 bit length.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#vertexComponentCount
     * @type {number}
     * @since 3.50.0
     */
    public var vertexComponentCount:Float;
    /**
     * The size, in bytes, of a single vertex.
     *
     * This is derived by adding together all of the vertex attributes.
     *
     * For example, the Multi Pipeline has the following attributes:
     *
     * inPosition - (size 2 x gl.FLOAT) = 8
     * inTexCoord - (size 2 x gl.FLOAT) = 8
     * inTexId - (size 1 x gl.FLOAT) = 4
     * inTintEffect - (size 1 x gl.FLOAT) = 4
     * inTint - (size 4 x gl.UNSIGNED_BYTE) = 4
     *
     * The total, in this case, is 8 + 8 + 4 + 4 + 4 = 28.
     *
     * This is calculated automatically during the `createAttributes` method.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#vertexSize
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var vertexSize:Float;
    /**
     * The active uniforms that this shader has.
     *
     * This is an object that maps the uniform names to their WebGL location and cached values.
     *
     * It is populated automatically via the `createUniforms` method.
     *
     * @name Phaser.Renderer.WebGL.WebGLShader#uniforms
     * @type {Phaser.Types.Renderer.WebGL.WebGLPipelineUniformsConfig}
     * @since 3.50.0
     */
    public var uniforms:phaser.types.renderer.webgl.WebGLPipelineUniformsConfig;
    /**
     * Takes the vertex attributes config and parses it, creating the resulting array that is stored
     * in this shaders `attributes` property, calculating the offset, normalization and location
     * in the process.
     *
     * Calling this method resets `WebGLShader.attributes`, `WebGLShader.vertexSize` and
     * `WebGLShader.vertexComponentCount`.
     *
     * It is called automatically when this class is created, but can be called manually if required.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#createAttributes
     * @since 3.50.0
     *
     * @param {Phaser.Types.Renderer.WebGL.WebGLPipelineAttributesConfig[]} attributes - An array of attributes configs.
     */
    public function createAttributes(attributes:Array<phaser.types.renderer.webgl.WebGLPipelineAttributesConfig>):Void;
    /**
     * Sets the program this shader uses as being the active shader in the WebGL Renderer.
     *
     * This method is called every time the parent pipeline is made the current active pipeline.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#bind
     * @since 3.50.0
     *
     * @param {boolean} [setAttributes=false] - Should the vertex attribute pointers be set?
     * @param {boolean} [flush=false] - Flush the pipeline before binding this shader?
     *
     * @return {this} This WebGLShader instance.
     */
    public function bind(?setAttributes:Bool, ?flush:Bool):Dynamic;
    /**
     * Sets the program this shader uses as being the active shader in the WebGL Renderer.
     *
     * Then resets all of the attribute pointers.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#rebind
     * @since 3.50.0
     *
     * @return {this} This WebGLShader instance.
     */
    public function rebind():Dynamic;
    /**
     * Sets the vertex attribute pointers.
     *
     * This should only be called after the vertex buffer has been bound.
     *
     * It is called automatically during the `bind` method.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setAttribPointers
     * @since 3.50.0
     *
     * @param {boolean} [reset=false] - Reset the vertex attribute locations?
     *
     * @return {this} This WebGLShader instance.
     */
    public function setAttribPointers(?reset:Bool):Dynamic;
    /**
     * Sets up the `WebGLShader.uniforms` object, populating it with the names
     * and locations of the shader uniforms this shader requires.
     *
     * It works by first calling `gl.getProgramParameter(program, gl.ACTIVE_UNIFORMS)` to
     * find out how many active uniforms this shader has. It then iterates through them,
     * calling `gl.getActiveUniform` to get the WebGL Active Info from each one. Finally,
     * the name and location are stored in the local array.
     *
     * This method is called automatically when this class is created.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#createUniforms
     * @since 3.50.0
     *
     * @return {this} This WebGLShader instance.
     */
    public function createUniforms():Dynamic;
    /**
     * Checks to see if the given uniform name exists and is active in this shader.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#hasUniform
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to check for.
     *
     * @return {boolean} `true` if the uniform exists, otherwise `false`.
     */
    public function hasUniform(name:String):Bool;
    /**
     * Resets the cached values of the given uniform.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#resetUniform
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to reset.
     *
     * @return {this} This WebGLShader instance.
     */
    public function resetUniform(name:String):Dynamic;
    /**
     * Sets the given uniform value/s based on the name and GL function.
     *
     * This method is called internally by other methods such as `set1f` and `set3iv`.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setUniform1
     * @since 3.50.0
     *
     * @param {function} setter - The GL function to call.
     * @param {string} name - The name of the uniform to set.
     * @param {(boolean|number|number[]|Float32Array)} value1 - The new value of the uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function setUniform1(setter:Dynamic, name:String, value1:Dynamic):Dynamic;
    /**
     * Sets the given uniform value/s based on the name and GL function.
     *
     * This method is called internally by other methods such as `set1f` and `set3iv`.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setUniform2
     * @since 3.50.0
     *
     * @param {function} setter - The GL function to call.
     * @param {string} name - The name of the uniform to set.
     * @param {(boolean|number|number[]|Float32Array)} value1 - The new value of the uniform.
     * @param {(boolean|number|number[]|Float32Array)} value2 - The new value of the uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function setUniform2(setter:Dynamic, name:String, value1:Dynamic, value2:Dynamic):Dynamic;
    /**
     * Sets the given uniform value/s based on the name and GL function.
     *
     * This method is called internally by other methods such as `set1f` and `set3iv`.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setUniform3
     * @since 3.50.0
     *
     * @param {function} setter - The GL function to call.
     * @param {string} name - The name of the uniform to set.
     * @param {(boolean|number|number[]|Float32Array)} value1 - The new value of the uniform.
     * @param {(boolean|number|number[]|Float32Array)} value2 - The new value of the uniform.
     * @param {(boolean|number|number[]|Float32Array)} value3 - The new value of the uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function setUniform3(setter:Dynamic, name:String, value1:Dynamic, value2:Dynamic, value3:Dynamic):Dynamic;
    /**
     * Sets the given uniform value/s based on the name and GL function.
     *
     * This method is called internally by other methods such as `set1f` and `set3iv`.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setUniform4
     * @since 3.50.0
     *
     * @param {function} setter - The GL function to call.
     * @param {string} name - The name of the uniform to set.
     * @param {(boolean|number|number[]|Float32Array)} value1 - The new value of the uniform.
     * @param {(boolean|number|number[]|Float32Array)} value2 - The new value of the uniform.
     * @param {(boolean|number|number[]|Float32Array)} value3 - The new value of the uniform.
     * @param {(boolean|number|number[]|Float32Array)} value4 - The new value of the uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function setUniform4(setter:Dynamic, name:String, value1:Dynamic, value2:Dynamic, value3:Dynamic, value4:Dynamic):Dynamic;
    /**
     * Sets a 1f uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set1f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new value of the `float` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set1f(name:String, x:Float):Dynamic;
    /**
     * Sets a 2f uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set2f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `vec2` uniform.
     * @param {number} y - The new Y component of the `vec2` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set2f(name:String, x:Float, y:Float):Dynamic;
    /**
     * Sets a 3f uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set3f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `vec3` uniform.
     * @param {number} y - The new Y component of the `vec3` uniform.
     * @param {number} z - The new Z component of the `vec3` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set3f(name:String, x:Float, y:Float, z:Float):Dynamic;
    /**
     * Sets a 4f uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set4f
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - X component of the uniform
     * @param {number} y - Y component of the uniform
     * @param {number} z - Z component of the uniform
     * @param {number} w - W component of the uniform
     *
     * @return {this} This WebGLShader instance.
     */
    public function set4f(name:String, x:Float, y:Float, z:Float, w:Float):Dynamic;
    /**
     * Sets a 1fv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set1fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set1fv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 2fv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set2fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set2fv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 3fv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set3fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set3fv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 4fv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set4fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set4fv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 1iv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set1iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set1iv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 2iv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set2iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set2iv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 3iv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set3iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set3iv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 4iv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set4iv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number[]|Float32Array} arr - The new value to be used for the uniform variable.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set4iv(name:String, arr:Dynamic):Dynamic;
    /**
     * Sets a 1i uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set1i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new value of the `int` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set1i(name:String, x:Float):Dynamic;
    /**
     * Sets a 2i uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set2i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `ivec2` uniform.
     * @param {number} y - The new Y component of the `ivec2` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set2i(name:String, x:Float, y:Float):Dynamic;
    /**
     * Sets a 3i uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set3i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - The new X component of the `ivec3` uniform.
     * @param {number} y - The new Y component of the `ivec3` uniform.
     * @param {number} z - The new Z component of the `ivec3` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function set3i(name:String, x:Float, y:Float, z:Float):Dynamic;
    /**
     * Sets a 4i uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#set4i
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {number} x - X component of the uniform
     * @param {number} y - Y component of the uniform
     * @param {number} z - Z component of the uniform
     * @param {number} w - W component of the uniform
     *
     * @return {this} This WebGLShader instance.
     */
    public function set4i(name:String, x:Float, y:Float, z:Float, w:Float):Dynamic;
    /**
     * Sets a matrix 2fv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setMatrix2fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {boolean} transpose - Whether to transpose the matrix. Should be `false`.
     * @param {number[]|Float32Array} matrix - The new values for the `mat2` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function setMatrix2fv(name:String, transpose:Bool, matrix:Dynamic):Dynamic;
    /**
     * Sets a matrix 3fv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setMatrix3fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {boolean} transpose - Whether to transpose the matrix. Should be `false`.
     * @param {Float32Array} matrix - The new values for the `mat3` uniform.
     *
     * @return {this} This WebGLShader instance.
     */
    public function setMatrix3fv(name:String, transpose:Bool, matrix:js.lib.Float32Array):Dynamic;
    /**
     * Sets a matrix 4fv uniform value based on the given name on this shader.
     *
     * The uniform is only set if the value/s given are different to those previously set.
     *
     * This method works by first setting this shader as being the current shader within the
     * WebGL Renderer, if it isn't already. It also sets this shader as being the current
     * one within the pipeline it belongs to.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#setMatrix4fv
     * @since 3.50.0
     *
     * @param {string} name - The name of the uniform to set.
     * @param {boolean} transpose - Should the matrix be transpose
     * @param {Float32Array} matrix - Matrix data
     *
     * @return {this} This WebGLShader instance.
     */
    public function setMatrix4fv(name:String, transpose:Bool, matrix:js.lib.Float32Array):Dynamic;
    /**
     * Removes all external references from this class and deletes the WebGL program from the WebGL context.
     *
     * Does not remove this shader from the parent pipeline.
     *
     * @method Phaser.Renderer.WebGL.WebGLShader#destroy
     * @since 3.50.0
     */
    public function destroy():Void;
}
