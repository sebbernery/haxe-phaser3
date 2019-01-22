package phaser.gameobjects;

/**
 * @classdesc
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
 * @class Grid
 * @extends Phaser.GameObjects.Shape
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.13.0
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this Game Object in the world.
 * @param {number} [y=0] - The vertical position of this Game Object in the world.
 * @param {number} [width=128] - The width of the grid.
 * @param {number} [height=128] - The height of the grid.
 * @param {number} [cellWidth=32] - The width of one cell in the grid.
 * @param {number} [cellHeight=32] - The height of one cell in the grid.
 * @param {number} [fillColor] - The color the grid cells will be filled with, i.e. 0xff0000 for red.
 * @param {number} [fillAlpha] - The alpha the grid cells will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
 * @param {number} [outlineFillColor] - The color of the lines between the grid cells. See the `setOutline` method.
 * @param {number} [outlineFillAlpha] - The alpha of the lines between the grid cells.
 */
@:native("Phaser.GameObjects.Grid")
extern class Grid extends phaser.gameobjects.Shape {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?cellWidth:Float, ?cellHeight:Float, ?fillColor:Float, ?fillAlpha:Float, ?outlineFillColor:Float, ?outlineFillAlpha:Float);
    /**
     * The width of each grid cell.
     * Must be a positive value.
     *
     * @name Phaser.GameObjects.Grid#cellWidth
     * @type {number}
     * @since 3.13.0
     */
    public var cellWidth:Float;
    /**
     * The height of each grid cell.
     * Must be a positive value.
     *
     * @name Phaser.GameObjects.Grid#cellHeight
     * @type {number}
     * @since 3.13.0
     */
    public var cellHeight:Float;
    /**
     * Will the grid render its cells in the `fillColor`?
     *
     * @name Phaser.GameObjects.Grid#showCells
     * @type {boolean}
     * @since 3.13.0
     */
    public var showCells:Bool;
    /**
     * The color of the lines between each grid cell.
     *
     * @name Phaser.GameObjects.Grid#outlineFillColor
     * @type {number}
     * @since 3.13.0
     */
    public var outlineFillColor:Float;
    /**
     * The alpha value for the color of the lines between each grid cell.
     *
     * @name Phaser.GameObjects.Grid#outlineFillAlpha
     * @type {number}
     * @since 3.13.0
     */
    public var outlineFillAlpha:Float;
    /**
     * Will the grid display the lines between each cell when it renders?
     *
     * @name Phaser.GameObjects.Grid#showOutline
     * @type {boolean}
     * @since 3.13.0
     */
    public var showOutline:Bool;
    /**
     * Will the grid render the alternating cells in the `altFillColor`?
     *
     * @name Phaser.GameObjects.Grid#showAltCells
     * @type {boolean}
     * @since 3.13.0
     */
    public var showAltCells:Bool;
    /**
     * The color the alternating grid cells will be filled with, i.e. 0xff0000 for red.
     *
     * @name Phaser.GameObjects.Grid#altFillColor
     * @type {number}
     * @since 3.13.0
     */
    public var altFillColor:Float;
    /**
     * The alpha the alternating grid cells will be filled with.
     * You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @name Phaser.GameObjects.Grid#altFillAlpha
     * @type {number}
     * @since 3.13.0
     */
    public var altFillAlpha:Float;
    /**
     * Sets the fill color and alpha level that the alternating grid cells will use.
     *
     * If this method is called with no values then alternating grid cells will not be rendered in a different color.
     *
     * Also see the `setOutlineStyle` and `setFillStyle` methods.
     *
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Grid#setAltFillStyle
     * @since 3.13.0
     *
     * @param {number} [fillColor] - The color the alternating grid cells will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha=1] - The alpha the alternating grid cells will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {this} This Game Object instance.
     */
    public function setAltFillStyle(?fillColor:Float, ?fillAlpha:Float):Dynamic;
    /**
     * Sets the fill color and alpha level that the lines between each grid cell will use.
     *
     * If this method is called with no values then the grid lines will not be rendered at all, however
     * the cells themselves may still be if they have colors set.
     *
     * Also see the `setFillStyle` and `setAltFillStyle` methods.
     *
     * This call can be chained.
     *
     * @method Phaser.GameObjects.Grid#setOutlineStyle
     * @since 3.13.0
     *
     * @param {number} [fillColor] - The color the lines between the grid cells will be filled with, i.e. 0xff0000 for red.
     * @param {number} [fillAlpha=1] - The alpha the lines between the grid cells will be filled with. You can also set the alpha of the overall Shape using its `alpha` property.
     *
     * @return {this} This Game Object instance.
     */
    public function setOutlineStyle(?fillColor:Float, ?fillAlpha:Float):Dynamic;
}
