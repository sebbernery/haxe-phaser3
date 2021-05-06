package phaser.gameobjects;

/**
 * @classdesc
 * A Graphics object is a way to draw primitive shapes to your game. Primitives include forms of geometry, such as
 * Rectangles, Circles, and Polygons. They also include lines, arcs and curves. When you initially create a Graphics
 * object it will be empty.
 *
 * To draw to it you must first specify a line style or fill style (or both), draw shapes using paths, and finally
 * fill or stroke them. For example:
 *
 * ```javascript
 * graphics.lineStyle(5, 0xFF00FF, 1.0);
 * graphics.beginPath();
 * graphics.moveTo(100, 100);
 * graphics.lineTo(200, 200);
 * graphics.closePath();
 * graphics.strokePath();
 * ```
 *
 * There are also many helpful methods that draw and fill/stroke common shapes for you.
 *
 * ```javascript
 * graphics.lineStyle(5, 0xFF00FF, 1.0);
 * graphics.fillStyle(0xFFFFFF, 1.0);
 * graphics.fillRect(50, 50, 400, 200);
 * graphics.strokeRect(50, 50, 400, 200);
 * ```
 *
 * When a Graphics object is rendered it will render differently based on if the game is running under Canvas or WebGL.
 * Under Canvas it will use the HTML Canvas context drawing operations to draw the path.
 * Under WebGL the graphics data is decomposed into polygons. Both of these are expensive processes, especially with
 * complex shapes.
 *
 * If your Graphics object doesn't change much (or at all) once you've drawn your shape to it, then you will help
 * performance by calling {@link Phaser.GameObjects.Graphics#generateTexture}. This will 'bake' the Graphics object into
 * a Texture, and return it. You can then use this Texture for Sprites or other display objects. If your Graphics object
 * updates frequently then you should avoid doing this, as it will constantly generate new textures, which will consume
 * memory.
 *
 * As you can tell, Graphics objects are a bit of a trade-off. While they are extremely useful, you need to be careful
 * in their complexity and quantity of them in your game.
 *
 * @class Graphics
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 *
 * @extends Phaser.GameObjects.Components.AlphaSingle
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 * @extends Phaser.GameObjects.Components.ScrollFactor
 *
 * @param {Phaser.Scene} scene - The Scene to which this Graphics object belongs.
 * @param {Phaser.Types.GameObjects.Graphics.Options} [options] - Options that set the position and default style of this Graphics object.
 */
@:native("Phaser.GameObjects.Graphics")
extern class Graphics extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, ?options:phaser.types.gameobjects.graphics.Options);
    /**
     * The horizontal display origin of the Graphics.
     *
     * @name Phaser.GameObjects.Graphics#displayOriginX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var displayOriginX:Float;
    /**
     * The vertical display origin of the Graphics.
     *
     * @name Phaser.GameObjects.Graphics#displayOriginY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var displayOriginY:Float;
    /**
     * The array of commands used to render the Graphics.
     *
     * @name Phaser.GameObjects.Graphics#commandBuffer
     * @type {array}
     * @default []
     * @since 3.0.0
     */
    public var commandBuffer:Array<Dynamic>;
    /**
     * The default fill color for shapes rendered by this Graphics object.
     *
     * @name Phaser.GameObjects.Graphics#defaultFillColor
     * @type {number}
     * @default -1
     * @since 3.0.0
     */
    public var defaultFillColor:Float;
    /**
     * The default fill alpha for shapes rendered by this Graphics object.
     *
     * @name Phaser.GameObjects.Graphics#defaultFillAlpha
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var defaultFillAlpha:Float;
    /**
     * The default stroke width for shapes rendered by this Graphics object.
     *
     * @name Phaser.GameObjects.Graphics#defaultStrokeWidth
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var defaultStrokeWidth:Float;
    /**
     * The default stroke color for shapes rendered by this Graphics object.
     *
     * @name Phaser.GameObjects.Graphics#defaultStrokeColor
     * @type {number}
     * @default -1
     * @since 3.0.0
     */
    public var defaultStrokeColor:Float;
    /**
     * The default stroke alpha for shapes rendered by this Graphics object.
     *
     * @name Phaser.GameObjects.Graphics#defaultStrokeAlpha
     * @type {number}
     * @default 1
     * @since 3.0.0
     */
    public var defaultStrokeAlpha:Float;
    /**
     * A Camera used specifically by the Graphics system for rendering to textures.
     *
     * @name Phaser.GameObjects.Graphics.TargetCamera
     * @type {Phaser.Cameras.Scene2D.Camera}
     * @since 3.1.0
     */
    public var TargetCamera:phaser.cameras.scene2d.Camera;
    /**
     * Set the default style settings for this Graphics object.
     *
     * @method Phaser.GameObjects.Graphics#setDefaultStyles
     * @since 3.0.0
     *
     * @param {Phaser.Types.GameObjects.Graphics.Styles} options - The styles to set as defaults.
     *
     * @return {this} This Game Object.
     */
    public function setDefaultStyles(options:phaser.types.gameobjects.graphics.Styles):Dynamic;
    /**
     * Set the current line style.
     *
     * @method Phaser.GameObjects.Graphics#lineStyle
     * @since 3.0.0
     *
     * @param {number} lineWidth - The stroke width.
     * @param {number} color - The stroke color.
     * @param {number} [alpha=1] - The stroke alpha.
     *
     * @return {this} This Game Object.
     */
    public function lineStyle(lineWidth:Float, color:Float, ?alpha:Float):Dynamic;
    /**
     * Set the current fill style.
     *
     * @method Phaser.GameObjects.Graphics#fillStyle
     * @since 3.0.0
     *
     * @param {number} color - The fill color.
     * @param {number} [alpha=1] - The fill alpha.
     *
     * @return {this} This Game Object.
     */
    public function fillStyle(color:Float, ?alpha:Float):Dynamic;
    /**
     * Sets a gradient fill style. This is a WebGL only feature.
     *
     * The gradient color values represent the 4 corners of an untransformed rectangle.
     * The gradient is used to color all filled shapes and paths drawn after calling this method.
     * If you wish to turn a gradient off, call `fillStyle` and provide a new single fill color.
     *
     * When filling a triangle only the first 3 color values provided are used for the 3 points of a triangle.
     *
     * This feature is best used only on rectangles and triangles. All other shapes will give strange results.
     *
     * Note that for objects such as arcs or ellipses, or anything which is made out of triangles, each triangle used
     * will be filled with a gradient on its own. There is no ability to gradient fill a shape or path as a single
     * entity at this time.
     *
     * @method Phaser.GameObjects.Graphics#fillGradientStyle
     * @webglOnly
     * @since 3.12.0
     *
     * @param {number} topLeft - The top left fill color.
     * @param {number} topRight - The top right fill color.
     * @param {number} bottomLeft - The bottom left fill color.
     * @param {number} bottomRight - The bottom right fill color. Not used when filling triangles.
     * @param {number} [alphaTopLeft=1] - The top left alpha value. If you give only this value, it's used for all corners.
     * @param {number} [alphaTopRight=1] - The top right alpha value.
     * @param {number} [alphaBottomLeft=1] - The bottom left alpha value.
     * @param {number} [alphaBottomRight=1] - The bottom right alpha value.
     *
     * @return {this} This Game Object.
     */
    public function fillGradientStyle(topLeft:Float, topRight:Float, bottomLeft:Float, bottomRight:Float, ?alphaTopLeft:Float, ?alphaTopRight:Float, ?alphaBottomLeft:Float, ?alphaBottomRight:Float):Dynamic;
    /**
     * Sets a gradient line style. This is a WebGL only feature.
     *
     * The gradient color values represent the 4 corners of an untransformed rectangle.
     * The gradient is used to color all stroked shapes and paths drawn after calling this method.
     * If you wish to turn a gradient off, call `lineStyle` and provide a new single line color.
     *
     * This feature is best used only on single lines. All other shapes will give strange results.
     *
     * Note that for objects such as arcs or ellipses, or anything which is made out of triangles, each triangle used
     * will be filled with a gradient on its own. There is no ability to gradient stroke a shape or path as a single
     * entity at this time.
     *
     * @method Phaser.GameObjects.Graphics#lineGradientStyle
     * @webglOnly
     * @since 3.12.0
     *
     * @param {number} lineWidth - The stroke width.
     * @param {number} topLeft - The tint being applied to the top-left of the Game Object.
     * @param {number} topRight - The tint being applied to the top-right of the Game Object.
     * @param {number} bottomLeft - The tint being applied to the bottom-left of the Game Object.
     * @param {number} bottomRight - The tint being applied to the bottom-right of the Game Object.
     * @param {number} [alpha=1] - The fill alpha.
     *
     * @return {this} This Game Object.
     */
    public function lineGradientStyle(lineWidth:Float, topLeft:Float, topRight:Float, bottomLeft:Float, bottomRight:Float, ?alpha:Float):Dynamic;
    /**
     * Start a new shape path.
     *
     * @method Phaser.GameObjects.Graphics#beginPath
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function beginPath():Dynamic;
    /**
     * Close the current path.
     *
     * @method Phaser.GameObjects.Graphics#closePath
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function closePath():Dynamic;
    /**
     * Fill the current path.
     *
     * @method Phaser.GameObjects.Graphics#fillPath
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function fillPath():Dynamic;
    /**
     * Fill the current path.
     *
     * This is an alias for `Graphics.fillPath` and does the same thing.
     * It was added to match the CanvasRenderingContext 2D API.
     *
     * @method Phaser.GameObjects.Graphics#fill
     * @since 3.16.0
     *
     * @return {this} This Game Object.
     */
    public function fill():Dynamic;
    /**
     * Stroke the current path.
     *
     * @method Phaser.GameObjects.Graphics#strokePath
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function strokePath():Dynamic;
    /**
     * Stroke the current path.
     *
     * This is an alias for `Graphics.strokePath` and does the same thing.
     * It was added to match the CanvasRenderingContext 2D API.
     *
     * @method Phaser.GameObjects.Graphics#stroke
     * @since 3.16.0
     *
     * @return {this} This Game Object.
     */
    public function stroke():Dynamic;
    /**
     * Fill the given circle.
     *
     * @method Phaser.GameObjects.Graphics#fillCircleShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The circle to fill.
     *
     * @return {this} This Game Object.
     */
    public function fillCircleShape(circle:phaser.geom.Circle):Dynamic;
    /**
     * Stroke the given circle.
     *
     * @method Phaser.GameObjects.Graphics#strokeCircleShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Circle} circle - The circle to stroke.
     *
     * @return {this} This Game Object.
     */
    public function strokeCircleShape(circle:phaser.geom.Circle):Dynamic;
    /**
     * Fill a circle with the given position and radius.
     *
     * @method Phaser.GameObjects.Graphics#fillCircle
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the center of the circle.
     * @param {number} y - The y coordinate of the center of the circle.
     * @param {number} radius - The radius of the circle.
     *
     * @return {this} This Game Object.
     */
    public function fillCircle(x:Float, y:Float, radius:Float):Dynamic;
    /**
     * Stroke a circle with the given position and radius.
     *
     * @method Phaser.GameObjects.Graphics#strokeCircle
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the center of the circle.
     * @param {number} y - The y coordinate of the center of the circle.
     * @param {number} radius - The radius of the circle.
     *
     * @return {this} This Game Object.
     */
    public function strokeCircle(x:Float, y:Float, radius:Float):Dynamic;
    /**
     * Fill the given rectangle.
     *
     * @method Phaser.GameObjects.Graphics#fillRectShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The rectangle to fill.
     *
     * @return {this} This Game Object.
     */
    public function fillRectShape(rect:phaser.geom.Rectangle):Dynamic;
    /**
     * Stroke the given rectangle.
     *
     * @method Phaser.GameObjects.Graphics#strokeRectShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Rectangle} rect - The rectangle to stroke.
     *
     * @return {this} This Game Object.
     */
    public function strokeRectShape(rect:phaser.geom.Rectangle):Dynamic;
    /**
     * Fill a rectangle with the given position and size.
     *
     * @method Phaser.GameObjects.Graphics#fillRect
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the top-left of the rectangle.
     * @param {number} y - The y coordinate of the top-left of the rectangle.
     * @param {number} width - The width of the rectangle.
     * @param {number} height - The height of the rectangle.
     *
     * @return {this} This Game Object.
     */
    public function fillRect(x:Float, y:Float, width:Float, height:Float):Dynamic;
    /**
     * Stroke a rectangle with the given position and size.
     *
     * @method Phaser.GameObjects.Graphics#strokeRect
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the top-left of the rectangle.
     * @param {number} y - The y coordinate of the top-left of the rectangle.
     * @param {number} width - The width of the rectangle.
     * @param {number} height - The height of the rectangle.
     *
     * @return {this} This Game Object.
     */
    public function strokeRect(x:Float, y:Float, width:Float, height:Float):Dynamic;
    /**
     * Fill a rounded rectangle with the given position, size and radius.
     *
     * @method Phaser.GameObjects.Graphics#fillRoundedRect
     * @since 3.11.0
     *
     * @param {number} x - The x coordinate of the top-left of the rectangle.
     * @param {number} y - The y coordinate of the top-left of the rectangle.
     * @param {number} width - The width of the rectangle.
     * @param {number} height - The height of the rectangle.
     * @param {(Phaser.Types.GameObjects.Graphics.RoundedRectRadius|number)} [radius=20] - The corner radius; It can also be an object to specify different radii for corners.
     *
     * @return {this} This Game Object.
     */
    public function fillRoundedRect(x:Float, y:Float, width:Float, height:Float, ?radius:Dynamic):Dynamic;
    /**
     * Stroke a rounded rectangle with the given position, size and radius.
     *
     * @method Phaser.GameObjects.Graphics#strokeRoundedRect
     * @since 3.11.0
     *
     * @param {number} x - The x coordinate of the top-left of the rectangle.
     * @param {number} y - The y coordinate of the top-left of the rectangle.
     * @param {number} width - The width of the rectangle.
     * @param {number} height - The height of the rectangle.
     * @param {(Phaser.Types.GameObjects.Graphics.RoundedRectRadius|number)} [radius=20] - The corner radius; It can also be an object to specify different radii for corners.
     *
     * @return {this} This Game Object.
     */
    public function strokeRoundedRect(x:Float, y:Float, width:Float, height:Float, ?radius:Dynamic):Dynamic;
    /**
     * Fill the given point.
     *
     * Draws a square at the given position, 1 pixel in size by default.
     *
     * @method Phaser.GameObjects.Graphics#fillPointShape
     * @since 3.0.0
     *
     * @param {(Phaser.Geom.Point|Phaser.Math.Vector2|object)} point - The point to fill.
     * @param {number} [size=1] - The size of the square to draw.
     *
     * @return {this} This Game Object.
     */
    public function fillPointShape(point:Dynamic, ?size:Float):Dynamic;
    /**
     * Fill a point at the given position.
     *
     * Draws a square at the given position, 1 pixel in size by default.
     *
     * @method Phaser.GameObjects.Graphics#fillPoint
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the point.
     * @param {number} y - The y coordinate of the point.
     * @param {number} [size=1] - The size of the square to draw.
     *
     * @return {this} This Game Object.
     */
    public function fillPoint(x:Float, y:Float, ?size:Float):Dynamic;
    /**
     * Fill the given triangle.
     *
     * @method Phaser.GameObjects.Graphics#fillTriangleShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The triangle to fill.
     *
     * @return {this} This Game Object.
     */
    public function fillTriangleShape(triangle:phaser.geom.Triangle):Dynamic;
    /**
     * Stroke the given triangle.
     *
     * @method Phaser.GameObjects.Graphics#strokeTriangleShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Triangle} triangle - The triangle to stroke.
     *
     * @return {this} This Game Object.
     */
    public function strokeTriangleShape(triangle:phaser.geom.Triangle):Dynamic;
    /**
     * Fill a triangle with the given points.
     *
     * @method Phaser.GameObjects.Graphics#fillTriangle
     * @since 3.0.0
     *
     * @param {number} x0 - The x coordinate of the first point.
     * @param {number} y0 - The y coordinate of the first point.
     * @param {number} x1 - The x coordinate of the second point.
     * @param {number} y1 - The y coordinate of the second point.
     * @param {number} x2 - The x coordinate of the third point.
     * @param {number} y2 - The y coordinate of the third point.
     *
     * @return {this} This Game Object.
     */
    public function fillTriangle(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float):Dynamic;
    /**
     * Stroke a triangle with the given points.
     *
     * @method Phaser.GameObjects.Graphics#strokeTriangle
     * @since 3.0.0
     *
     * @param {number} x0 - The x coordinate of the first point.
     * @param {number} y0 - The y coordinate of the first point.
     * @param {number} x1 - The x coordinate of the second point.
     * @param {number} y1 - The y coordinate of the second point.
     * @param {number} x2 - The x coordinate of the third point.
     * @param {number} y2 - The y coordinate of the third point.
     *
     * @return {this} This Game Object.
     */
    public function strokeTriangle(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float):Dynamic;
    /**
     * Draw the given line.
     *
     * @method Phaser.GameObjects.Graphics#strokeLineShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Line} line - The line to stroke.
     *
     * @return {this} This Game Object.
     */
    public function strokeLineShape(line:phaser.geom.Line):Dynamic;
    /**
     * Draw a line between the given points.
     *
     * @method Phaser.GameObjects.Graphics#lineBetween
     * @since 3.0.0
     *
     * @param {number} x1 - The x coordinate of the start point of the line.
     * @param {number} y1 - The y coordinate of the start point of the line.
     * @param {number} x2 - The x coordinate of the end point of the line.
     * @param {number} y2 - The y coordinate of the end point of the line.
     *
     * @return {this} This Game Object.
     */
    public function lineBetween(x1:Float, y1:Float, x2:Float, y2:Float):Dynamic;
    /**
     * Draw a line from the current drawing position to the given position.
     *
     * Moves the current drawing position to the given position.
     *
     * @method Phaser.GameObjects.Graphics#lineTo
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to draw the line to.
     * @param {number} y - The y coordinate to draw the line to.
     *
     * @return {this} This Game Object.
     */
    public function lineTo(x:Float, y:Float):Dynamic;
    /**
     * Move the current drawing position to the given position.
     *
     * @method Phaser.GameObjects.Graphics#moveTo
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate to move to.
     * @param {number} y - The y coordinate to move to.
     *
     * @return {this} This Game Object.
     */
    public function moveTo(x:Float, y:Float):Dynamic;
    /**
     * Stroke the shape represented by the given array of points.
     *
     * Pass `closeShape` to automatically close the shape by joining the last to the first point.
     *
     * Pass `closePath` to automatically close the path before it is stroked.
     *
     * @method Phaser.GameObjects.Graphics#strokePoints
     * @since 3.0.0
     *
     * @param {(array|Phaser.Geom.Point[])} points - The points to stroke.
     * @param {boolean} [closeShape=false] - When `true`, the shape is closed by joining the last point to the first point.
     * @param {boolean} [closePath=false] - When `true`, the path is closed before being stroked.
     * @param {number} [endIndex] - The index of `points` to stop drawing at. Defaults to `points.length`.
     *
     * @return {this} This Game Object.
     */
    public function strokePoints(points:Dynamic, ?closeShape:Bool, ?closePath:Bool, ?endIndex:Float):Dynamic;
    /**
     * Fill the shape represented by the given array of points.
     *
     * Pass `closeShape` to automatically close the shape by joining the last to the first point.
     *
     * Pass `closePath` to automatically close the path before it is filled.
     *
     * @method Phaser.GameObjects.Graphics#fillPoints
     * @since 3.0.0
     *
     * @param {(array|Phaser.Geom.Point[])} points - The points to fill.
     * @param {boolean} [closeShape=false] - When `true`, the shape is closed by joining the last point to the first point.
     * @param {boolean} [closePath=false] - When `true`, the path is closed before being stroked.
     * @param {number} [endIndex] - The index of `points` to stop at. Defaults to `points.length`.
     *
     * @return {this} This Game Object.
     */
    public function fillPoints(points:Dynamic, ?closeShape:Bool, ?closePath:Bool, ?endIndex:Float):Dynamic;
    /**
     * Stroke the given ellipse.
     *
     * @method Phaser.GameObjects.Graphics#strokeEllipseShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The ellipse to stroke.
     * @param {number} [smoothness=32] - The number of points to draw the ellipse with.
     *
     * @return {this} This Game Object.
     */
    public function strokeEllipseShape(ellipse:phaser.geom.Ellipse, ?smoothness:Float):Dynamic;
    /**
     * Stroke an ellipse with the given position and size.
     *
     * @method Phaser.GameObjects.Graphics#strokeEllipse
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the center of the ellipse.
     * @param {number} y - The y coordinate of the center of the ellipse.
     * @param {number} width - The width of the ellipse.
     * @param {number} height - The height of the ellipse.
     * @param {number} [smoothness=32] - The number of points to draw the ellipse with.
     *
     * @return {this} This Game Object.
     */
    public function strokeEllipse(x:Float, y:Float, width:Float, height:Float, ?smoothness:Float):Dynamic;
    /**
     * Fill the given ellipse.
     *
     * @method Phaser.GameObjects.Graphics#fillEllipseShape
     * @since 3.0.0
     *
     * @param {Phaser.Geom.Ellipse} ellipse - The ellipse to fill.
     * @param {number} [smoothness=32] - The number of points to draw the ellipse with.
     *
     * @return {this} This Game Object.
     */
    public function fillEllipseShape(ellipse:phaser.geom.Ellipse, ?smoothness:Float):Dynamic;
    /**
     * Fill an ellipse with the given position and size.
     *
     * @method Phaser.GameObjects.Graphics#fillEllipse
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the center of the ellipse.
     * @param {number} y - The y coordinate of the center of the ellipse.
     * @param {number} width - The width of the ellipse.
     * @param {number} height - The height of the ellipse.
     * @param {number} [smoothness=32] - The number of points to draw the ellipse with.
     *
     * @return {this} This Game Object.
     */
    public function fillEllipse(x:Float, y:Float, width:Float, height:Float, ?smoothness:Float):Dynamic;
    /**
     * Draw an arc.
     *
     * This method can be used to create circles, or parts of circles.
     *
     * Make sure you call `beginPath` before starting the arc unless you wish for the arc to automatically
     * close when filled or stroked.
     *
     * Use the optional `overshoot` argument increase the number of iterations that take place when
     * the arc is rendered in WebGL. This is useful if you're drawing an arc with an especially thick line,
     * as it will allow the arc to fully join-up. Try small values at first, i.e. 0.01.
     *
     * Call {@link Phaser.GameObjects.Graphics#fillPath} or {@link Phaser.GameObjects.Graphics#strokePath} after calling
     * this method to draw the arc.
     *
     * @method Phaser.GameObjects.Graphics#arc
     * @since 3.0.0
     *
     * @param {number} x - The x coordinate of the center of the circle.
     * @param {number} y - The y coordinate of the center of the circle.
     * @param {number} radius - The radius of the circle.
     * @param {number} startAngle - The starting angle, in radians.
     * @param {number} endAngle - The ending angle, in radians.
     * @param {boolean} [anticlockwise=false] - Whether the drawing should be anticlockwise or clockwise.
     * @param {number} [overshoot=0] - This value allows you to increase the segment iterations in WebGL rendering. Useful if the arc has a thick stroke and needs to overshoot to join-up cleanly. Use small numbers such as 0.01 to start with and increase as needed.
     *
     * @return {this} This Game Object.
     */
    public function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool, ?overshoot:Float):Dynamic;
    /**
     * Creates a pie-chart slice shape centered at `x`, `y` with the given radius.
     * You must define the start and end angle of the slice.
     *
     * Setting the `anticlockwise` argument to `true` creates a shape similar to Pacman.
     * Setting it to `false` creates a shape like a slice of pie.
     *
     * This method will begin a new path and close the path at the end of it.
     * To display the actual slice you need to call either `strokePath` or `fillPath` after it.
     *
     * @method Phaser.GameObjects.Graphics#slice
     * @since 3.4.0
     *
     * @param {number} x - The horizontal center of the slice.
     * @param {number} y - The vertical center of the slice.
     * @param {number} radius - The radius of the slice.
     * @param {number} startAngle - The start angle of the slice, given in radians.
     * @param {number} endAngle - The end angle of the slice, given in radians.
     * @param {boolean} [anticlockwise=false] - Whether the drawing should be anticlockwise or clockwise.
     * @param {number} [overshoot=0] - This value allows you to overshoot the endAngle by this amount. Useful if the arc has a thick stroke and needs to overshoot to join-up cleanly.
     *
     * @return {this} This Game Object.
     */
    public function slice(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool, ?overshoot:Float):Dynamic;
    /**
     * Saves the state of the Graphics by pushing the current state onto a stack.
     *
     * The most recently saved state can then be restored with {@link Phaser.GameObjects.Graphics#restore}.
     *
     * @method Phaser.GameObjects.Graphics#save
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function save():Dynamic;
    /**
     * Restores the most recently saved state of the Graphics by popping from the state stack.
     *
     * Use {@link Phaser.GameObjects.Graphics#save} to save the current state, and call this afterwards to restore that state.
     *
     * If there is no saved state, this command does nothing.
     *
     * @method Phaser.GameObjects.Graphics#restore
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function restore():Dynamic;
    /**
     * Inserts a translation command into this Graphics objects command buffer.
     *
     * All objects drawn _after_ calling this method will be translated
     * by the given amount.
     *
     * This does not change the position of the Graphics object itself,
     * only of the objects drawn by it after calling this method.
     *
     * @method Phaser.GameObjects.Graphics#translateCanvas
     * @since 3.0.0
     *
     * @param {number} x - The horizontal translation to apply.
     * @param {number} y - The vertical translation to apply.
     *
     * @return {this} This Game Object.
     */
    public function translateCanvas(x:Float, y:Float):Dynamic;
    /**
     * Inserts a scale command into this Graphics objects command buffer.
     *
     * All objects drawn _after_ calling this method will be scaled
     * by the given amount.
     *
     * This does not change the scale of the Graphics object itself,
     * only of the objects drawn by it after calling this method.
     *
     * @method Phaser.GameObjects.Graphics#scaleCanvas
     * @since 3.0.0
     *
     * @param {number} x - The horizontal scale to apply.
     * @param {number} y - The vertical scale to apply.
     *
     * @return {this} This Game Object.
     */
    public function scaleCanvas(x:Float, y:Float):Dynamic;
    /**
     * Inserts a rotation command into this Graphics objects command buffer.
     *
     * All objects drawn _after_ calling this method will be rotated
     * by the given amount.
     *
     * This does not change the rotation of the Graphics object itself,
     * only of the objects drawn by it after calling this method.
     *
     * @method Phaser.GameObjects.Graphics#rotateCanvas
     * @since 3.0.0
     *
     * @param {number} radians - The rotation angle, in radians.
     *
     * @return {this} This Game Object.
     */
    public function rotateCanvas(radians:Float):Dynamic;
    /**
     * Clear the command buffer and reset the fill style and line style to their defaults.
     *
     * @method Phaser.GameObjects.Graphics#clear
     * @since 3.0.0
     *
     * @return {this} This Game Object.
     */
    public function clear():Dynamic;
    /**
     * Generate a texture from this Graphics object.
     *
     * If `key` is a string it'll generate a new texture using it and add it into the
     * Texture Manager (assuming no key conflict happens).
     *
     * If `key` is a Canvas it will draw the texture to that canvas context. Note that it will NOT
     * automatically upload it to the GPU in WebGL mode.
     *
     * Please understand that the texture is created via the Canvas API of the browser, therefore some
     * Graphics features, such as `fillGradientStyle`, will not appear on the resulting texture,
     * as they're unsupported by the Canvas API.
     *
     * @method Phaser.GameObjects.Graphics#generateTexture
     * @since 3.0.0
     *
     * @param {(string|HTMLCanvasElement)} key - The key to store the texture with in the Texture Manager, or a Canvas to draw to.
     * @param {number} [width] - The width of the graphics to generate.
     * @param {number} [height] - The height of the graphics to generate.
     *
     * @return {this} This Game Object.
     */
    public function generateTexture(key:Dynamic, ?width:Float, ?height:Float):Dynamic;
    /**
     * Internal destroy handler, called as part of the destroy process.
     *
     * @method Phaser.GameObjects.Graphics#preDestroy
     * @protected
     * @since 3.9.0
     */
    public function preDestroy():Void;
    /**
     * The alpha value of the Game Object.
     *
     * This is a global value, impacting the entire Game Object, not just a region of it.
     *
     * @name Phaser.GameObjects.Components.AlphaSingle#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * Clears all alpha values associated with this Game Object.
     *
     * Immediately sets the alpha levels back to 1 (fully opaque).
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#clearAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearAlpha():Dynamic;
    /**
     * Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * @method Phaser.GameObjects.Components.AlphaSingle#setAlpha
     * @since 3.0.0
     *
     * @param {number} [value=1] - The alpha value applied across the whole Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlpha(?value:Float):Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency of which blend modes
     * are used.
     *
     * @name Phaser.GameObjects.Components.BlendMode#blendMode
     * @type {(Phaser.BlendModes|string)}
     * @since 3.0.0
     */
    public var blendMode:Dynamic;
    /**
     * Sets the Blend Mode being used by this Game Object.
     *
     * This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
     *
     * Under WebGL only the following Blend Modes are available:
     *
     * * ADD
     * * MULTIPLY
     * * SCREEN
     * * ERASE (only works when rendering to a framebuffer, like a Render Texture)
     *
     * Canvas has more available depending on browser support.
     *
     * You can also create your own custom Blend Modes in WebGL.
     *
     * Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
     * on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
     * reasons try to be careful about the construction of your Scene and the frequency in which blend modes
     * are used.
     *
     * @method Phaser.GameObjects.Components.BlendMode#setBlendMode
     * @since 3.0.0
     *
     * @param {(string|Phaser.BlendModes)} value - The BlendMode value. Either a string or a CONST.
     *
     * @return {this} This Game Object instance.
     */
    public function setBlendMode(value:Dynamic):Dynamic;
    /**
     * The depth of this Game Object within the Scene.
     *
     * The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
     * of Game Objects, without actually moving their position in the display list.
     *
     * The default depth is zero. A Game Object with a higher depth
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
     * The default depth is zero. A Game Object with a higher depth
     * value will always render in front of one with a lower value.
     *
     * Setting the depth will queue a depth sort event within the Scene.
     *
     * @method Phaser.GameObjects.Components.Depth#setDepth
     * @since 3.0.0
     *
     * @param {number} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Float):Dynamic;
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
     * Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
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
     * The initial WebGL pipeline of this Game Object.
     *
     * If you call `resetPipeline` on this Game Object, the pipeline is reset to this default.
     *
     * @name Phaser.GameObjects.Components.Pipeline#defaultPipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var defaultPipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * The current WebGL pipeline of this Game Object.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipeline
     * @type {Phaser.Renderer.WebGL.WebGLPipeline}
     * @default null
     * @webglOnly
     * @since 3.0.0
     */
    public var pipeline:phaser.renderer.webgl.WebGLPipeline;
    /**
     * Does this Game Object have any Post Pipelines set?
     *
     * @name Phaser.GameObjects.Components.Pipeline#hasPostPipeline
     * @type {boolean}
     * @webglOnly
     * @since 3.50.0
     */
    public var hasPostPipeline:Bool;
    /**
     * The WebGL Post FX Pipelines this Game Object uses for post-render effects.
     *
     * The pipelines are processed in the order in which they appear in this array.
     *
     * If you modify this array directly, be sure to set the
     * `hasPostPipeline` property accordingly.
     *
     * @name Phaser.GameObjects.Components.Pipeline#postPipeline
     * @type {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[]}
     * @webglOnly
     * @since 3.50.0
     */
    public var postPipeline:Array<phaser.renderer.webgl.pipelines.PostFXPipeline>;
    /**
     * An object to store pipeline specific data in, to be read by the pipelines this Game Object uses.
     *
     * @name Phaser.GameObjects.Components.Pipeline#pipelineData
     * @type {object}
     * @webglOnly
     * @since 3.50.0
     */
    public var pipelineData:Dynamic;
    /**
     * Sets the initial WebGL Pipeline of this Game Object.
     *
     * This should only be called during the instantiation of the Game Object. After that, use `setPipeline`.
     *
     * @method Phaser.GameObjects.Components.Pipeline#initPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function initPipeline(pipeline:Dynamic):Bool;
    /**
     * Sets the main WebGL Pipeline of this Game Object.
     *
     * Also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the same pipeline data object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {(string|Phaser.Renderer.WebGL.WebGLPipeline)} pipeline - Either the string-based name of the pipeline, or a pipeline instance to set.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipeline(pipeline:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Sets one, or more, Post Pipelines on this Game Object.
     *
     * Post Pipelines are invoked after this Game Object has rendered to its target and
     * are commonly used for post-fx.
     *
     * The post pipelines are appended to the `postPipelines` array belonging to this
     * Game Object. When the renderer processes this Game Object, it iterates through the post
     * pipelines in the order in which they appear in the array. If you are stacking together
     * multiple effects, be aware that the order is important.
     *
     * If you call this method multiple times, the new pipelines will be appended to any existing
     * post pipelines already set. Use the `resetPostPipeline` method to clear them first, if required.
     *
     * You can optionally also sets the `pipelineData` property, if the parameter is given.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|string[]|function|function[]|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline[])} pipelines - Either the string-based name of the pipeline, or a pipeline instance, or class, or an array of them.
     * @param {object} [pipelineData] - Optional pipeline data object that is _deep copied_ into the `pipelineData` property of this Game Object.
     * @param {boolean} [copyData=true] - Should the pipeline data object be _deep copied_ into the `pipelineData` property of this Game Object? If `false` it will be set by reference instead.
     *
     * @return {this} This Game Object instance.
     */
    public function setPostPipeline(pipelines:Dynamic, ?pipelineData:Dynamic, ?copyData:Bool):Dynamic;
    /**
     * Adds an entry to the `pipelineData` object belonging to this Game Object.
     *
     * If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
     *
     * If `value` is undefined, and `key` exists, `key` is removed from the data object.
     *
     * Both the pipeline and post pipelines share the pipeline data object together.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipelineData
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string} key - The key of the pipeline data to set, update, or delete.
     * @param {any} [value] - The value to be set with the key. If `undefined` then `key` will be deleted from the object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipelineData(key:String, ?value:Dynamic):Dynamic;
    /**
     * Gets a Post Pipeline instance from this Game Object, based on the given name, and returns it.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {(string|function|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline)} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} The first Post Pipeline matching the name, or undefined if no match.
     */
    public function getPostPipeline(pipeline:Dynamic):phaser.renderer.webgl.pipelines.PostFXPipeline;
    /**
     * Resets the WebGL Pipeline of this Game Object back to the default it was created with.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {boolean} [resetPostPipelines=false] - Reset all of the post pipelines?
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     *
     * @return {boolean} `true` if the pipeline was reset successfully, otherwise `false`.
     */
    public function resetPipeline(?resetPostPipelines:Bool, ?resetData:Bool):Bool;
    /**
     * Resets the WebGL Post Pipelines of this Game Object. It does this by calling
     * the `destroy` method on each post pipeline and then clearing the local array.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {boolean} [resetData=false] - Reset the `pipelineData` object to being an empty object?
     */
    public function resetPostPipeline(?resetData:Bool):Void;
    /**
     * Removes a single Post Pipeline instance from this Game Object, based on the given name, and destroys it.
     *
     * If you wish to remove all Post Pipelines use the `resetPostPipeline` method instead.
     *
     * @method Phaser.GameObjects.Components.Pipeline#removePostPipeline
     * @webglOnly
     * @since 3.50.0
     *
     * @param {string|Phaser.Renderer.WebGL.Pipelines.PostFXPipeline} pipeline - The string-based name of the pipeline, or a pipeline class.
     *
     * @return {this} This Game Object.
     */
    public function removePostPipeline(pipeline:Dynamic):Dynamic;
    /**
     * Gets the name of the WebGL Pipeline this Game Object is currently using.
     *
     * @method Phaser.GameObjects.Components.Pipeline#getPipelineName
     * @webglOnly
     * @since 3.0.0
     *
     * @return {string} The string-based name of the pipeline being used by this Game Object.
     */
    public function getPipelineName():String;
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
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var angle:Float;
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
     * Copies an object's coordinates to this Game Object's position.
     *
     * @method Phaser.GameObjects.Components.Transform#copyPosition
     * @since 3.50.0
     *
     * @param {(Phaser.Types.Math.Vector2Like|Phaser.Types.Math.Vector3Like|Phaser.Types.Math.Vector4Like)} source - An object with numeric 'x', 'y', 'z', or 'w' properties. Undefined values are not copied.
     *
     * @return {this} This Game Object instance.
     */
    public function copyPosition(source:Dynamic):Dynamic;
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
     * Takes the given `x` and `y` coordinates and converts them into local space for this
     * Game Object, taking into account parent and local transforms, and the Display Origin.
     *
     * The returned Vector2 contains the translated point in its properties.
     *
     * A Camera needs to be provided in order to handle modified scroll factors. If no
     * camera is specified, it will use the `main` camera from the Scene to which this
     * Game Object belongs.
     *
     * @method Phaser.GameObjects.Components.Transform#getLocalPoint
     * @since 3.50.0
     *
     * @param {number} x - The x position to translate.
     * @param {number} y - The y position to translate.
     * @param {Phaser.Math.Vector2} [point] - A Vector2, or point-like object, to store the results in.
     * @param {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera which is being tested against. If not given will use the Scene default camera.
     *
     * @return {Phaser.Math.Vector2} The translated point.
     */
    public function getLocalPoint(x:Float, y:Float, ?point:phaser.math.Vector2, ?camera:phaser.cameras.scene2d.Camera):phaser.math.Vector2;
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
}
