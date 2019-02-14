package phaser.gameobjects;

/**
 * @classdesc
 * The Game Object Factory is a Scene plugin that allows you to quickly create many common
 * types of Game Objects and have them automatically registered with the Scene.
 *
 * Game Objects directly register themselves with the Factory and inject their own creation
 * methods into the class.
 *
 * @class GameObjectFactory
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object Factory belongs.
 */
@:native("Phaser.GameObjects.GameObjectFactory")
extern class GameObjectFactory {
    public function new(scene:phaser.Scene);
    /**
     * The Scene to which this Game Object Factory belongs.
     *
     * @name Phaser.GameObjects.GameObjectFactory#scene
     * @type {Phaser.Scene}
     * @protected
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene.Systems.
     *
     * @name Phaser.GameObjects.GameObjectFactory#systems
     * @type {Phaser.Scenes.Systems}
     * @protected
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * A reference to the Scene Display List.
     *
     * @name Phaser.GameObjects.GameObjectFactory#displayList
     * @type {Phaser.GameObjects.DisplayList}
     * @protected
     * @since 3.0.0
     */
    public var displayList:phaser.gameobjects.DisplayList;
    /**
     * A reference to the Scene Update List.
     *
     * @name Phaser.GameObjects.GameObjectFactory#updateList;
     * @type {Phaser.GameObjects.UpdateList}
     * @protected
     * @since 3.0.0
     */
    public var updateList:phaser.gameobjects.UpdateList;
    /**
     * Creates a new Path Object.
     *
     * @method Phaser.GameObjects.GameObjectFactory#path
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Path.
     * @param {number} y - The vertical position of this Path.
     *
     * @return {Phaser.Curves.Path} The Path Object that was created.
     */
    public function path(x:Float, y:Float):phaser.curves.Path;
    /**
     * Adds an existing Game Object to this Scene.
     *
     * If the Game Object renders, it will be added to the Display List.
     * If it has a `preUpdate` method, it will be added to the Update List.
     *
     * @method Phaser.GameObjects.GameObjectFactory#existing
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.GameObject} child - The child to be added to this Scene.
     *
     * @return {Phaser.GameObjects.GameObject} The Game Object that was added.
     */
    public function existing(child:phaser.gameobjects.GameObject):phaser.gameobjects.GameObject;
    /**
     * Creates a new Dynamic Bitmap Text Game Object and adds it to the Scene.
     *
     * BitmapText objects work by taking a texture file and an XML or JSON file that describes the font structure.
     *
     * During rendering for each letter of the text is rendered to the display, proportionally spaced out and aligned to
     * match the font structure.
     *
     * Dynamic Bitmap Text objects are different from Static Bitmap Text in that they invoke a callback for each
     * letter being rendered during the render pass. This callback allows you to manipulate the properties of
     * each letter being rendered, such as its position, scale or tint, allowing you to create interesting effects
     * like jiggling text, which can't be done with Static text. This means that Dynamic Text takes more processing
     * time, so only use them if you require the callback ability they have.
     *
     * BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability
     * to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by
     * processing the font texture in an image editor, applying fills and any other effects required.
     *
     * To create multi-line text insert \r, \n or \r\n escape codes into the text string.
     *
     * To create a BitmapText data files you need a 3rd party app such as:
     *
     * BMFont (Windows, free): http://www.angelcode.com/products/bmfont/
     * Glyph Designer (OS X, commercial): http://www.71squared.com/en/glyphdesigner
     * Littera (Web-based, free): http://kvazars.com/littera/
     *
     * For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
     * converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: http://codebeautify.org/xmltojson
     *
     * Note: This method will only be available if the Dynamic Bitmap Text Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#dynamicBitmapText
     * @since 3.0.0
     *
     * @param {number} x - The x position of the Game Object.
     * @param {number} y - The y position of the Game Object.
     * @param {string} font - The key of the font to use from the BitmapFont cache.
     * @param {(string|string[])} [text] - The string, or array of strings, to be set as the content of this Bitmap Text.
     * @param {number} [size] - The font size to set.
     *
     * @return {Phaser.GameObjects.DynamicBitmapText} The Game Object that was created.
     */
    public function dynamicBitmapText(x:Float, y:Float, font:String, ?text:Dynamic, ?size:Float):phaser.gameobjects.DynamicBitmapText;
    /**
     * Creates a new Bitmap Text Game Object and adds it to the Scene.
     *
     * BitmapText objects work by taking a texture file and an XML or JSON file that describes the font structure.
     *
     * During rendering for each letter of the text is rendered to the display, proportionally spaced out and aligned to
     * match the font structure.
     *
     * BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability
     * to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by
     * processing the font texture in an image editor, applying fills and any other effects required.
     *
     * To create multi-line text insert \r, \n or \r\n escape codes into the text string.
     *
     * To create a BitmapText data files you need a 3rd party app such as:
     *
     * BMFont (Windows, free): http://www.angelcode.com/products/bmfont/
     * Glyph Designer (OS X, commercial): http://www.71squared.com/en/glyphdesigner
     * Littera (Web-based, free): http://kvazars.com/littera/
     *
     * For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
     * converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: http://codebeautify.org/xmltojson
     *
     * Note: This method will only be available if the Bitmap Text Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#bitmapText
     * @since 3.0.0
     *
     * @param {number} x - The x position of the Game Object.
     * @param {number} y - The y position of the Game Object.
     * @param {string} font - The key of the font to use from the BitmapFont cache.
     * @param {(string|string[])} [text] - The string, or array of strings, to be set as the content of this Bitmap Text.
     * @param {number} [size] - The font size to set.
     * @param {integer} [align=0] - The alignment of the text in a multi-line BitmapText object.
     *
     * @return {Phaser.GameObjects.BitmapText} The Game Object that was created.
     */
    public function bitmapText(x:Float, y:Float, font:String, ?text:Dynamic, ?size:Float, ?align:Int):phaser.gameobjects.BitmapText;
    /**
     * Creates a new Blitter Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Blitter Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#blitter
     * @since 3.0.0
     *
     * @param {number} x - The x position of the Game Object.
     * @param {number} y - The y position of the Game Object.
     * @param {string} key - The key of the Texture the Blitter object will use.
     * @param {(string|integer)} [frame] - The default Frame children of the Blitter will use.
     *
     * @return {Phaser.GameObjects.Blitter} The Game Object that was created.
     */
    public function blitter(x:Float, y:Float, key:String, ?frame:Dynamic):phaser.gameobjects.Blitter;
    /**
     * Creates a new Container Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Container Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#container
     * @since 3.4.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {Phaser.GameObjects.GameObject|Phaser.GameObjects.GameObject[]} [children] - An optional array of Game Objects to add to this Container.
     *
     * @return {Phaser.GameObjects.Container} The Game Object that was created.
     */
    public function container(x:Float, y:Float, ?children:Dynamic):phaser.gameobjects.Container;
    /**
     * Creates a new Image Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Image Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#dom
     * @since 3.12.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} element - The DOM element.
     *
     * @return {Phaser.GameObjects.DOMElement} The Game Object that was created.
     */
    public function dom(x:Float, y:Float, element:String):phaser.gameobjects.DOMElement;
    /**
     * Creates a new Extern Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Extern Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#extern
     * @since 3.16.0
     *
     * @return {Phaser.GameObjects.Extern} The Game Object that was created.
     */
    @:native('default') public function extern_():phaser.gameobjects.Extern;
    /**
     * Creates a new Graphics Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Graphics Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#graphics
     * @since 3.0.0
     *
     * @param {GraphicsOptions} [config] - The Graphics configuration.
     *
     * @return {Phaser.GameObjects.Graphics} The Game Object that was created.
     */
    public function graphics(?config:GraphicsOptions):phaser.gameobjects.Graphics;
    /**
     * Creates a new Group Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Group Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#group
     * @since 3.0.0
     *
     * @param {(Phaser.GameObjects.GameObject[]|GroupConfig|GroupConfig[])} [children] - Game Objects to add to this Group; or the `config` argument.
     * @param {GroupConfig|GroupCreateConfig} [config] - A Group Configuration object.
     *
     * @return {Phaser.GameObjects.Group} The Game Object that was created.
     */
    public function group(?children:Dynamic, ?config:Dynamic):phaser.gameobjects.Group;
    /**
     * Creates a new Image Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Image Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#image
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.GameObjects.Image} The Game Object that was created.
     */
    public function image(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.Image;
    /**
     * Creates a new Mesh Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Mesh Game Object and WebGL support have been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#mesh
     * @webglOnly
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {number[]} vertices - An array containing the vertices data for this Mesh.
     * @param {number[]} uv - An array containing the uv data for this Mesh.
     * @param {number[]} colors - An array containing the color data for this Mesh.
     * @param {number[]} alphas - An array containing the alpha data for this Mesh.
     * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.GameObjects.Mesh} The Game Object that was created.
     */
    public function mesh(x:Float, y:Float, vertices:Array<Float>, uv:Array<Float>, colors:Array<Float>, alphas:Array<Float>, texture:String, ?frame:Dynamic):phaser.gameobjects.Mesh;
    /**
     * Creates a new Particle Emitter Manager Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Particles Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#particles
     * @since 3.0.0
     *
     * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer|object)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     * @param {ParticleEmitterConfig|ParticleEmitterConfig[]} [emitters] - Configuration settings for one or more emitters to create.
     *
     * @return {Phaser.GameObjects.Particles.ParticleEmitterManager} The Game Object that was created.
     */
    public function particles(texture:String, ?frame:Dynamic, ?emitters:Dynamic):phaser.gameobjects.particles.ParticleEmitterManager;
    /**
     * Creates a new PathFollower Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the PathFollower Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#follower
     * @since 3.0.0
     *
     * @param {Phaser.Curves.Path} path - The Path this PathFollower is connected to.
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.GameObjects.PathFollower} The Game Object that was created.
     */
    public function follower(path:phaser.curves.Path, x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.PathFollower;
    /**
     * Creates a new Quad Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Quad Game Object and WebGL support have been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#quad
     * @webglOnly
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.GameObjects.Quad} The Game Object that was created.
     */
    public function quad(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.Quad;
    /**
     * Creates a new Render Texture Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Render Texture Game Object has been built into Phaser.
     *
     * A Render Texture is a special texture that allows any number of Game Objects to be drawn to it. You can take many complex objects and
     * draw them all to this one texture, which can they be used as the texture for other Game Object's. It's a way to generate dynamic
     * textures at run-time that are WebGL friendly and don't invoke expensive GPU uploads.
     *
     * @method Phaser.GameObjects.GameObjectFactory#renderTexture
     * @since 3.2.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {integer} [width=32] - The width of the Render Texture.
     * @param {integer} [height=32] - The height of the Render Texture.
     *
     * @return {Phaser.GameObjects.RenderTexture} The Game Object that was created.
     */
    public function renderTexture(x:Float, y:Float, ?width:Int, ?height:Int):phaser.gameobjects.RenderTexture;
    /**
     * Creates a new Arc Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Arc Game Object has been built into Phaser.
     *
     * The Arc Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports both fill and stroke colors.
     *
     * When it renders it displays an arc shape. You can control the start and end angles of the arc,
     * as well as if the angles are winding clockwise or anti-clockwise. With the default settings
     * it renders as a complete circle. By changing the angles you can create other arc shapes,
     * such as half-circles.
     *
     * @method Phaser.GameObjects.GameObjectFactory#arc
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [radius=128] - The radius of the arc.
     * @param {integer} [startAngle=0] - The start angle of the arc, in degrees.
     * @param {integer} [endAngle=360] - The end angle of the arc, in degrees.
     * @param {boolean} [anticlockwise=false] - The winding order of the start and end angles.
     * @param {number} [fillColor] - The color the arc will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the arc will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Arc} The Game Object that was created.
     */
    public function arc(?x:Float, ?y:Float, ?radius:Float, ?startAngle:Int, ?endAngle:Int, ?anticlockwise:Bool, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Arc;
    /**
     * Creates a new Circle Shape Game Object and adds it to the Scene.
     *
     * A Circle is an Arc with no defined start and end angle, making it render as a complete circle.
     *
     * Note: This method will only be available if the Arc Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#circle
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [radius=128] - The radius of the circle.
     * @param {number} [fillColor] - The color the circle will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the circle will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Arc} The Game Object that was created.
     */
    public function circle(?x:Float, ?y:Float, ?radius:Float, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Arc;
    /**
     * Creates a new Curve Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Curve Game Object has been built into Phaser.
     *
     * The Curve Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports both fill and stroke colors.
     *
     * To render a Curve Shape you must first create a `Phaser.Curves.Curve` object, then pass it to
     * the Curve Shape in the constructor.
     *
     * The Curve shape also has a `smoothness` property and corresponding `setSmoothness` method.
     * This allows you to control how smooth the shape renders in WebGL, by controlling the number of iterations
     * that take place during construction. Increase and decrease the default value for smoother, or more
     * jagged, shapes.
     *
     * @method Phaser.GameObjects.GameObjectFactory#curve
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {Phaser.Curves.Curve} [curve] - The Curve object to use to create the Shape.
     * @param {number} [fillColor] - The color the curve will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the curve will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Curve} The Game Object that was created.
     */
    public function curve(?x:Float, ?y:Float, ?curve:phaser.curves.Curve, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Curve;
    /**
     * Creates a new Ellipse Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Ellipse Game Object has been built into Phaser.
     *
     * The Ellipse Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports both fill and stroke colors.
     *
     * When it renders it displays an ellipse shape. You can control the width and height of the ellipse.
     * If the width and height match it will render as a circle. If the width is less than the height,
     * it will look more like an egg shape.
     *
     * The Ellipse shape also has a `smoothness` property and corresponding `setSmoothness` method.
     * This allows you to control how smooth the shape renders in WebGL, by controlling the number of iterations
     * that take place during construction. Increase and decrease the default value for smoother, or more
     * jagged, shapes.
     *
     * @method Phaser.GameObjects.GameObjectFactory#ellipse
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [width=128] - The width of the ellipse. An ellipse with equal width and height renders as a circle.
     * @param {number} [height=128] - The height of the ellipse. An ellipse with equal width and height renders as a circle.
     * @param {number} [fillColor] - The color the ellipse will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the ellipse will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Ellipse} The Game Object that was created.
     */
    public function ellipse(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Ellipse;
    /**
     * Creates a new Grid Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Grid Game Object has been built into Phaser.
     *
     * The Grid Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports only fill colors and cannot be stroked.
     *
     * A Grid Shape allows you to display a grid in your game, where you can control the size of the
     * grid as well as the width and height of the grid cells. You can set a fill color for each grid
     * cell as well as an alternate fill color. When the alternate fill color is set then the grid
     * cells will alternate the fill colors as they render, creating a chess-board effect. You can
     * also optionally have an outline fill color. If set, this draws lines between the grid cells
     * in the given color. If you specify an outline color with an alpha of zero, then it will draw
     * the cells spaced out, but without the lines between them.
     *
     * @method Phaser.GameObjects.GameObjectFactory#grid
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [width=128] - The width of the grid.
     * @param {number} [height=128] - The height of the grid.
     * @param {number} [cellWidth=32] - The width of one cell in the grid.
     * @param {number} [cellHeight=32] - The height of one cell in the grid.
     * @param {number} [fillColor] - The color the grid cells will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the grid cells will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     * @param {number} [outlineFillColor] - The color of the lines between the grid cells.
     * @param {number} [outlineFillAlpha] - The alpha of the lines between the grid cells.
     *
     * @return {Phaser.GameObjects.Grid} The Game Object that was created.
     */
    public function grid(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?cellWidth:Float, ?cellHeight:Float, ?fillColor:Float, ?fillAlpha:Float, ?outlineFillColor:Float, ?outlineFillAlpha:Float):phaser.gameobjects.Grid;
    /**
     * Creates a new IsoBox Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the IsoBox Game Object has been built into Phaser.
     *
     * The IsoBox Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports only fill colors and cannot be stroked.
     *
     * An IsoBox is an 'isometric' rectangle. Each face of it has a different fill color. You can set
     * the color of the top, left and right faces of the rectangle respectively. You can also choose
     * which of the faces are rendered via the `showTop`, `showLeft` and `showRight` properties.
     *
     * You cannot view an IsoBox from under-neath, however you can change the 'angle' by setting
     * the `projection` property.
     *
     * @method Phaser.GameObjects.GameObjectFactory#isobox
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [size=48] - The width of the iso box in pixels. The left and right faces will be exactly half this value.
     * @param {number} [height=32] - The height of the iso box. The left and right faces will be this tall. The overall height of the isobox will be this value plus half the `size` value.
     * @param {number} [fillTop=0xeeeeee] - The fill color of the top face of the iso box.
     * @param {number} [fillLeft=0x999999] - The fill color of the left face of the iso box.
     * @param {number} [fillRight=0xcccccc] - The fill color of the right face of the iso box.
     *
     * @return {Phaser.GameObjects.IsoBox} The Game Object that was created.
     */
    public function isobox(?x:Float, ?y:Float, ?size:Float, ?height:Float, ?fillTop:Float, ?fillLeft:Float, ?fillRight:Float):phaser.gameobjects.IsoBox;
    /**
     * Creates a new IsoTriangle Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the IsoTriangle Game Object has been built into Phaser.
     *
     * The IsoTriangle Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports only fill colors and cannot be stroked.
     *
     * An IsoTriangle is an 'isometric' triangle. Think of it like a pyramid. Each face has a different
     * fill color. You can set the color of the top, left and right faces of the triangle respectively
     * You can also choose which of the faces are rendered via the `showTop`, `showLeft` and `showRight` properties.
     *
     * You cannot view an IsoTriangle from under-neath, however you can change the 'angle' by setting
     * the `projection` property. The `reversed` property controls if the IsoTriangle is rendered upside
     * down or not.
     *
     * @method Phaser.GameObjects.GameObjectFactory#isotriangle
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [size=48] - The width of the iso triangle in pixels. The left and right faces will be exactly half this value.
     * @param {number} [height=32] - The height of the iso triangle. The left and right faces will be this tall. The overall height of the iso triangle will be this value plus half the `size` value.
     * @param {boolean} [reversed=false] - Is the iso triangle upside down?
     * @param {number} [fillTop=0xeeeeee] - The fill color of the top face of the iso triangle.
     * @param {number} [fillLeft=0x999999] - The fill color of the left face of the iso triangle.
     * @param {number} [fillRight=0xcccccc] - The fill color of the right face of the iso triangle.
     *
     * @return {Phaser.GameObjects.IsoTriangle} The Game Object that was created.
     */
    public function isotriangle(?x:Float, ?y:Float, ?size:Float, ?height:Float, ?reversed:Bool, ?fillTop:Float, ?fillLeft:Float, ?fillRight:Float):phaser.gameobjects.IsoTriangle;
    /**
     * Creates a new Line Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Line Game Object has been built into Phaser.
     *
     * The Line Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports only stroke colors and cannot be filled.
     *
     * A Line Shape allows you to draw a line between two points in your game. You can control the
     * stroke color and thickness of the line. In WebGL only you can also specify a different
     * thickness for the start and end of the line, allowing you to render lines that taper-off.
     *
     * If you need to draw multiple lines in a sequence you may wish to use the Polygon Shape instead.
     *
     * @method Phaser.GameObjects.GameObjectFactory#line
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [x1=0] - The horizontal position of the start of the line.
     * @param {number} [y1=0] - The vertical position of the start of the line.
     * @param {number} [x2=128] - The horizontal position of the end of the line.
     * @param {number} [y2=0] - The vertical position of the end of the line.
     * @param {number} [strokeColor] - The color the line will be drawn in, i.e. 0xff0000 for red.
     * @param {number} [strokeAlpha] - The alpha the line will be drawn in. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Line} The Game Object that was created.
     */
    public function line(?x:Float, ?y:Float, ?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?strokeColor:Float, ?strokeAlpha:Float):phaser.gameobjects.Line;
    /**
     * Creates a new Polygon Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Polygon Game Object has been built into Phaser.
     *
     * The Polygon Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports both fill and stroke colors.
     *
     * The Polygon Shape is created by providing a list of points, which are then used to create an
     * internal Polygon geometry object. The points can be set from a variety of formats:
     *
     * - An array of Point or Vector2 objects: `[new Phaser.Math.Vec2(x1, y1), ...]`
     * - An array of objects with public x/y properties: `[obj1, obj2, ...]`
     * - An array of paired numbers that represent point coordinates: `[x1,y1, x2,y2, ...]`
     * - An array of arrays with two elements representing x/y coordinates: `[[x1, y1], [x2, y2], ...]`
     *
     * By default the `x` and `y` coordinates of this Shape refer to the center of it. However, depending
     * on the coordinates of the points provided, the final shape may be rendered offset from its origin.
     *
     * @method Phaser.GameObjects.GameObjectFactory#polygon
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {any} [points] - The points that make up the polygon.
     * @param {number} [fillColor] - The color the polygon will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the polygon will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Polygon} The Game Object that was created.
     */
    public function polygon(?x:Float, ?y:Float, ?points:Dynamic, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Polygon;
    /**
     * Creates a new Rectangle Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Rectangle Game Object has been built into Phaser.
     *
     * The Rectangle Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports both fill and stroke colors.
     *
     * You can change the size of the rectangle by changing the `width` and `height` properties.
     *
     * @method Phaser.GameObjects.GameObjectFactory#rectangle
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [width=128] - The width of the rectangle.
     * @param {number} [height=128] - The height of the rectangle.
     * @param {number} [fillColor] - The color the rectangle will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the rectangle will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Rectangle} The Game Object that was created.
     */
    public function rectangle(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Rectangle;
    /**
     * Creates a new Star Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Star Game Object has been built into Phaser.
     *
     * The Star Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports both fill and stroke colors.
     *
     * As the name implies, the Star shape will display a star in your game. You can control several
     * aspects of it including the number of points that constitute the star. The default is 5. If
     * you change it to 4 it will render as a diamond. If you increase them, you'll get a more spiky
     * star shape.
     *
     * You can also control the inner and outer radius, which is how 'long' each point of the star is.
     * Modify these values to create more interesting shapes.
     *
     * @method Phaser.GameObjects.GameObjectFactory#star
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [points=5] - The number of points on the star.
     * @param {number} [innerRadius=32] - The inner radius of the star.
     * @param {number} [outerRadius=64] - The outer radius of the star.
     * @param {number} [fillColor] - The color the star will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the star will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Star} The Game Object that was created.
     */
    public function star(?x:Float, ?y:Float, ?points:Float, ?innerRadius:Float, ?outerRadius:Float, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Star;
    /**
     * Creates a new Triangle Shape Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Triangle Game Object has been built into Phaser.
     *
     * The Triangle Shape is a Game Object that can be added to a Scene, Group or Container. You can
     * treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
     * it for input or physics. It provides a quick and easy way for you to render this shape in your
     * game without using a texture, while still taking advantage of being fully batched in WebGL.
     *
     * This shape supports both fill and stroke colors.
     *
     * The Triangle consists of 3 lines, joining up to form a triangular shape. You can control the
     * position of each point of these lines. The triangle is always closed and cannot have an open
     * face. If you require that, consider using a Polygon instead.
     *
     * @method Phaser.GameObjects.GameObjectFactory#triangle
     * @since 3.13.0
     *
     * @param {number} [x=0] - The horizontal position of this Game Object in the world.
     * @param {number} [y=0] - The vertical position of this Game Object in the world.
     * @param {number} [x1=0] - The horizontal position of the first point in the triangle.
     * @param {number} [y1=128] - The vertical position of the first point in the triangle.
     * @param {number} [x2=64] - The horizontal position of the second point in the triangle.
     * @param {number} [y2=0] - The vertical position of the second point in the triangle.
     * @param {number} [x3=128] - The horizontal position of the third point in the triangle.
     * @param {number} [y3=128] - The vertical position of the third point in the triangle.
     * @param {number} [fillColor] - The color the triangle will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha] - The alpha the triangle will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {Phaser.GameObjects.Triangle} The Game Object that was created.
     */
    public function triangle(?x:Float, ?y:Float, ?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float, ?fillColor:Float, ?fillAlpha:Float):phaser.gameobjects.Triangle;
    /**
     * Creates a new Sprite Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Sprite Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#sprite
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.GameObjects.Sprite} The Game Object that was created.
     */
    public function sprite(x:Float, y:Float, texture:String, ?frame:Dynamic):phaser.gameobjects.Sprite;
    /**
     * Creates a new Text Game Object and adds it to the Scene.
     *
     * A Text Game Object.
     *
     * Text objects work by creating their own internal hidden Canvas and then renders text to it using
     * the standard Canvas `fillText` API. It then creates a texture from this canvas which is rendered
     * to your game during the render pass.
     *
     * Because it uses the Canvas API you can take advantage of all the features this offers, such as
     * applying gradient fills to the text, or strokes, shadows and more. You can also use custom fonts
     * loaded externally, such as Google or TypeKit Web fonts.
     *
     * You can only display fonts that are currently loaded and available to the browser: therefore fonts must
     * be pre-loaded. Phaser does not do ths for you, so you will require the use of a 3rd party font loader,
     * or have the fonts ready available in the CSS on the page in which your Phaser game resides.
     *
     * See {@link http://www.jordanm.co.uk/tinytype this compatibility table} for the available default fonts
     * across mobile browsers.
     *
     * A note on performance: Every time the contents of a Text object changes, i.e. changing the text being
     * displayed, or the style of the text, it needs to remake the Text canvas, and if on WebGL, re-upload the
     * new texture to the GPU. This can be an expensive operation if used often, or with large quantities of
     * Text objects in your game. If you run into performance issues you would be better off using Bitmap Text
     * instead, as it benefits from batching and avoids expensive Canvas API calls.
     *
     * Note: This method will only be available if the Text Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#text
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {(string|string[])} text - The text this Text object will display.
     * @param {object} [style] - The Text style configuration object.
     *
     * @return {Phaser.GameObjects.Text} The Game Object that was created.
     */
    public function text(x:Float, y:Float, text:Dynamic, ?style:Dynamic):phaser.gameobjects.Text;
    /**
     * Creates a new TileSprite Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the TileSprite Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#tileSprite
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {integer} width - The width of the Game Object. If zero it will use the size of the texture frame.
     * @param {integer} height - The height of the Game Object. If zero it will use the size of the texture frame.
     * @param {string} texture - The key of the Texture this Game Object will use to render with, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - An optional frame from the Texture this Game Object is rendering with.
     *
     * @return {Phaser.GameObjects.TileSprite} The Game Object that was created.
     */
    public function tileSprite(x:Float, y:Float, width:Int, height:Int, texture:String, ?frame:Dynamic):phaser.gameobjects.TileSprite;
    /**
     * Creates a new Zone Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Zone Game Object has been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#zone
     * @since 3.0.0
     *
     * @param {number} x - The horizontal position of this Game Object in the world.
     * @param {number} y - The vertical position of this Game Object in the world.
     * @param {number} width - The width of the Game Object.
     * @param {number} height - The height of the Game Object.
     *
     * @return {Phaser.GameObjects.Zone} The Game Object that was created.
     */
    public function zone(x:Float, y:Float, width:Float, height:Float):phaser.gameobjects.Zone;
    /**
     * Creates a Tilemap from the given key or data, or creates a blank Tilemap if no key/data provided.
     * When loading from CSV or a 2D array, you should specify the tileWidth & tileHeight. When parsing
     * from a map from Tiled, the tileWidth, tileHeight, width & height will be pulled from the map
     * data. For an empty map, you should specify tileWidth, tileHeight, width & height.
     *
     * @method Phaser.GameObjects.GameObjectFactory#tilemap
     * @since 3.0.0
     *
     * @param {string} [key] - The key in the Phaser cache that corresponds to the loaded tilemap data.
     * @param {integer} [tileWidth=32] - The width of a tile in pixels. Pass in `null` to leave as the
     * default.
     * @param {integer} [tileHeight=32] - The height of a tile in pixels. Pass in `null` to leave as the
     * default.
     * @param {integer} [width=10] - The width of the map in tiles. Pass in `null` to leave as the
     * default.
     * @param {integer} [height=10] - The height of the map in tiles. Pass in `null` to leave as the
     * default.
     * @param {integer[][]} [data] - Instead of loading from the cache, you can also load directly from
     * a 2D array of tile indexes. Pass in `null` for no data.
     * @param {boolean} [insertNull=false] - Controls how empty tiles, tiles with an index of -1, in the
     * map data are handled. If `true`, empty locations will get a value of `null`. If `false`, empty
     * location will get a Tile object with an index of -1. If you've a large sparsely populated map and
     * the tile data doesn't need to change then setting this value to `true` will help with memory
     * consumption. However if your map is small or you need to update the tiles dynamically, then leave
     * the default value set.
     *
     * @return {Phaser.Tilemaps.Tilemap}
     */
    public function tilemap(?key:String, ?tileWidth:Int, ?tileHeight:Int, ?width:Int, ?height:Int, ?data:Array<Array<Int>>, ?insertNull:Bool):phaser.tilemaps.Tilemap;
    /**
     * Creates a new Tween object.
     *
     * Note: This method will only be available Tweens have been built into Phaser.
     *
     * @method Phaser.GameObjects.GameObjectFactory#tween
     * @since 3.0.0
     *
     * @param {object} config - The Tween configuration.
     *
     * @return {Phaser.Tweens.Tween} The Tween that was created.
     */
    public function tween(config:Dynamic):phaser.tweens.Tween;
}
