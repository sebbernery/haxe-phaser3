package phaser.structs;

/**
 * @classdesc
 * The Size component allows you to set `width` and `height` properties and define the relationship between them.
 *
 * The component can automatically maintain the aspect ratios between the two values, and clamp them
 * to a defined min-max range. You can also control the dominant axis. When dimensions are given to the Size component
 * that would cause it to exceed its min-max range, the dimensions are adjusted based on the dominant axis.
 *
 * @class Size
 * @memberof Phaser.Structs
 * @constructor
 * @since 3.16.0
 *
 * @param {number} [width=0] - The width of the Size component.
 * @param {number} [height=width] - The height of the Size component. If not given, it will use the `width`.
 * @param {integer} [aspectMode=0] - The aspect mode of the Size component. Defaults to 0, no mode.
 * @param {any} [parent=null] - The parent of this Size component. Can be any object with public `width` and `height` properties. Dimensions are clamped to keep them within the parent bounds where possible.
 */
@:native("Phaser.Structs.Size")
extern class Size {
    public function new(?width:Float, ?height:Float, ?aspectMode:Int, ?parent:Dynamic);
    /**
     * The aspect mode this Size component will use when calculating its dimensions.
     * This property is read-only. To change it use the `setAspectMode` method.
     *
     * @name Phaser.Structs.Size#aspectMode
     * @type {integer}
     * @readonly
     * @since 3.16.0
     */
    public var aspectMode:Int;
    /**
     * The proportional relationship between the width and height.
     *
     * This property is read-only and is updated automatically when either the `width` or `height` properties are changed,
     * depending on the aspect mode.
     *
     * @name Phaser.Structs.Size#aspectRatio
     * @type {number}
     * @readonly
     * @since 3.16.0
     */
    public var aspectRatio:Float;
    /**
     * The minimum allowed width.
     * Cannot be less than zero.
     * This value is read-only. To change it see the `setMin` method.
     *
     * @name Phaser.Structs.Size#minWidth
     * @type {number}
     * @readonly
     * @since 3.16.0
     */
    public var minWidth:Float;
    /**
     * The minimum allowed height.
     * Cannot be less than zero.
     * This value is read-only. To change it see the `setMin` method.
     *
     * @name Phaser.Structs.Size#minHeight
     * @type {number}
     * @readonly
     * @since 3.16.0
     */
    public var minHeight:Float;
    /**
     * The maximum allowed width.
     * This value is read-only. To change it see the `setMax` method.
     *
     * @name Phaser.Structs.Size#maxWidth
     * @type {number}
     * @readonly
     * @since 3.16.0
     */
    public var maxWidth:Float;
    /**
     * The maximum allowed height.
     * This value is read-only. To change it see the `setMax` method.
     *
     * @name Phaser.Structs.Size#maxHeight
     * @type {number}
     * @readonly
     * @since 3.16.0
     */
    public var maxHeight:Float;
    /**
     * A Vector2 containing the horizontal and vertical snap values, which the width and height are snapped to during resizing.
     *
     * By default this is disabled.
     *
     * This property is read-only. To change it see the `setSnap` method.
     *
     * @name Phaser.Structs.Size#snapTo
     * @type {Phaser.Math.Vector2}
     * @readonly
     * @since 3.16.0
     */
    public var snapTo:phaser.math.Vector2;
    /**
     * The width of this Size component.
     *
     * This value is clamped to the range specified by `minWidth` and `maxWidth`, if enabled.
     *
     * A width can never be less than zero.
     *
     * Changing this value will automatically update the `height` if the aspect ratio lock is enabled.
     * You can also use the `setWidth` and `getWidth` methods.
     *
     * @name Phaser.Structs.Size#width
     * @type {number}
     * @since 3.16.0
     */
    public var width:Float;
    /**
     * The height of this Size component.
     *
     * This value is clamped to the range specified by `minHeight` and `maxHeight`, if enabled.
     *
     * A height can never be less than zero.
     *
     * Changing this value will automatically update the `width` if the aspect ratio lock is enabled.
     * You can also use the `setHeight` and `getHeight` methods.
     *
     * @name Phaser.Structs.Size#height
     * @type {number}
     * @since 3.16.0
     */
    public var height:Float;
    /**
     * Sets the aspect mode of this Size component.
     *
     * The aspect mode controls what happens when you modify the `width` or `height` properties, or call `setSize`.
     *
     * It can be a number from 0 to 4, or a Size constant:
     *
     * 0. NONE = Do not make the size fit the aspect ratio. Change the ratio when the size changes.
     * 1. WIDTH_CONTROLS_HEIGHT = The height is automatically adjusted based on the width.
     * 2. HEIGHT_CONTROLS_WIDTH = The width is automatically adjusted based on the height.
     * 3. FIT = The width and height are automatically adjusted to fit inside the given target area, while keeping the aspect ratio. Depending on the aspect ratio there may be some space inside the area which is not covered.
     * 4. ENVELOP = The width and height are automatically adjusted to make the size cover the entire target area while keeping the aspect ratio. This may extend further out than the target size.
     *
     * Calling this method automatically recalculates the `width` and the `height`, if required.
     *
     * @method Phaser.Structs.Size#setAspectMode
     * @since 3.16.0
     *
     * @param {integer} [value=0] - The aspect mode value.
     *
     * @return {this} This Size component instance.
     */
    public function setAspectMode(?value:Int):Dynamic;
    /**
     * By setting a Snap To value when this Size component is modified its dimensions will automatically
     * by snapped to the nearest grid slice, using floor. For example, if you have snap value of 16,
     * and the width changes to 68, then it will snap down to 64 (the closest multiple of 16 when floored)
     *
     * Note that snapping takes place before adjustments by the parent, or the min / max settings. If these
     * values are not multiples of the given snap values, then this can result in un-snapped dimensions.
     *
     * Call this method with no arguments to reset the snap values.
     *
     * Calling this method automatically recalculates the `width` and the `height`, if required.
     *
     * @method Phaser.Structs.Size#setSnap
     * @since 3.16.0
     *
     * @param {number} [snapWidth=0] - The amount to snap the width to. If you don't want to snap the width, pass a value of zero.
     * @param {number} [snapHeight=snapWidth] - The amount to snap the height to. If not provided it will use the `snapWidth` value. If you don't want to snap the height, pass a value of zero.
     *
     * @return {this} This Size component instance.
     */
    public function setSnap(?snapWidth:Float, ?snapHeight:Float):Dynamic;
    /**
     * Sets, or clears, the parent of this Size component.
     *
     * To clear the parent call this method with no arguments.
     *
     * The parent influences the maximum extents to which this Size compoent can expand,
     * based on the aspect mode:
     *
     * NONE - The parent clamps both the width and height.
     * WIDTH_CONTROLS_HEIGHT - The parent clamps just the width.
     * HEIGHT_CONTROLS_WIDTH - The parent clamps just the height.
     * FIT - The parent clamps whichever axis is required to ensure the size fits within it.
     * ENVELOP - The parent is used to ensure the size fully envelops the parent.
     *
     * Calling this method automatically calls `setSize`.
     *
     * @method Phaser.Structs.Size#setParent
     * @since 3.16.0
     *
     * @param {any} [parent] - Sets the parent of this Size component. Don't provide a value to clear an existing parent.
     *
     * @return {this} This Size component instance.
     */
    public function setParent(?parent:Dynamic):Dynamic;
    /**
     * Set the minimum width and height values this Size component will allow.
     *
     * The minimum values can never be below zero, or greater than the maximum values.
     *
     * Setting this will automatically adjust both the `width` and `height` properties to ensure they are within range.
     *
     * Note that based on the aspect mode, and if this Size component has a parent set or not, the minimums set here
     * _can_ be exceed in some situations.
     *
     * @method Phaser.Structs.Size#setMin
     * @since 3.16.0
     *
     * @param {number} [width=0] - The minimum allowed width of the Size component.
     * @param {number} [height=width] - The minimum allowed height of the Size component. If not given, it will use the `width`.
     *
     * @return {this} This Size component instance.
     */
    public function setMin(?width:Float, ?height:Float):Dynamic;
    /**
     * Set the maximum width and height values this Size component will allow.
     *
     * Setting this will automatically adjust both the `width` and `height` properties to ensure they are within range.
     *
     * Note that based on the aspect mode, and if this Size component has a parent set or not, the maximums set here
     * _can_ be exceed in some situations.
     *
     * @method Phaser.Structs.Size#setMax
     * @since 3.16.0
     *
     * @param {number} [width=Number.MAX_VALUE] - The maximum allowed width of the Size component.
     * @param {number} [height=width] - The maximum allowed height of the Size component. If not given, it will use the `width`.
     *
     * @return {this} This Size component instance.
     */
    public function setMax(?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the width and height of this Size component based on the aspect mode.
     *
     * If the aspect mode is 'none' then calling this method will change the aspect ratio, otherwise the current
     * aspect ratio is honored across all other modes.
     *
     * If snapTo values have been set then the given width and height are snapped first, prior to any further
     * adjustment via min/max values, or a parent.
     *
     * If minimum and/or maximum dimensions have been specified, the values given to this method will be clamped into
     * that range prior to adjustment, but may still exceed them depending on the aspect mode.
     *
     * If this Size component has a parent set, and the aspect mode is `fit` or `envelop`, then the given sizes will
     * be clamped to the range specified by the parent.
     *
     * @method Phaser.Structs.Size#setSize
     * @since 3.16.0
     *
     * @param {number} [width=0] - The new width of the Size component.
     * @param {number} [height=width] - The new height of the Size component. If not given, it will use the `width`.
     *
     * @return {this} This Size component instance.
     */
    public function setSize(?width:Float, ?height:Float):Dynamic;
    /**
     * Sets a new aspect ratio, overriding what was there previously.
     *
     * It then calls `setSize` immediately using the current dimensions.
     *
     * @method Phaser.Structs.Size#setAspectRatio
     * @since 3.16.0
     *
     * @param {number} ratio - The new aspect ratio.
     *
     * @return {this} This Size component instance.
     */
    public function setAspectRatio(ratio:Float):Dynamic;
    /**
     * Sets a new width and height for this Size component and updates the aspect ratio based on them.
     *
     * It _doesn't_ change the `aspectMode` and still factors in size limits such as the min max and parent bounds.
     *
     * @method Phaser.Structs.Size#resize
     * @since 3.16.0
     *
     * @param {number} width - The new width of the Size component.
     * @param {number} [height=width] - The new height of the Size component. If not given, it will use the `width`.
     *
     * @return {this} This Size component instance.
     */
    public function resize(width:Float, ?height:Float):Dynamic;
    /**
     * Takes a new width and passes it through the min/max clamp and then checks it doesn't exceed the parent width.
     *
     * @method Phaser.Structs.Size#getNewWidth
     * @since 3.16.0
     *
     * @param {number} value - The value to clamp and check.
     * @param {boolean} [checkParent=true] - Check the given value against the parent, if set.
     *
     * @return {number} The modified width value.
     */
    public function getNewWidth(value:Float, ?checkParent:Bool):Float;
    /**
     * Takes a new height and passes it through the min/max clamp and then checks it doesn't exceed the parent height.
     *
     * @method Phaser.Structs.Size#getNewHeight
     * @since 3.16.0
     *
     * @param {number} value - The value to clamp and check.
     * @param {boolean} [checkParent=true] - Check the given value against the parent, if set.
     *
     * @return {number} The modified height value.
     */
    public function getNewHeight(value:Float, ?checkParent:Bool):Float;
    /**
     * The current `width` and `height` are adjusted to fit inside the given dimensions, while keeping the aspect ratio.
     *
     * If `fit` is true there may be some space inside the target area which is not covered if its aspect ratio differs.
     * If `fit` is false the size may extend further out than the target area if the aspect ratios differ.
     *
     * If this Size component has a parent set, then the width and height passed to this method will be clamped so
     * it cannot exceed that of the parent.
     *
     * @method Phaser.Structs.Size#constrain
     * @since 3.16.0
     *
     * @param {number} [width=0] - The new width of the Size component.
     * @param {number} [height] - The new height of the Size component. If not given, it will use the width value.
     * @param {boolean} [fit=true] - Perform a `fit` (true) constraint, or an `envelop` (false) constraint.
     *
     * @return {this} This Size component instance.
     */
    public function constrain(?width:Float, ?height:Float, ?fit:Bool):Dynamic;
    /**
     * The current `width` and `height` are adjusted to fit inside the given dimensions, while keeping the aspect ratio.
     *
     * There may be some space inside the target area which is not covered if its aspect ratio differs.
     *
     * If this Size component has a parent set, then the width and height passed to this method will be clamped so
     * it cannot exceed that of the parent.
     *
     * @method Phaser.Structs.Size#fitTo
     * @since 3.16.0
     *
     * @param {number} [width=0] - The new width of the Size component.
     * @param {number} [height] - The new height of the Size component. If not given, it will use the width value.
     *
     * @return {this} This Size component instance.
     */
    public function fitTo(?width:Float, ?height:Float):Dynamic;
    /**
     * The current `width` and `height` are adjusted so that they fully envlop the given dimensions, while keeping the aspect ratio.
     *
     * The size may extend further out than the target area if the aspect ratios differ.
     *
     * If this Size component has a parent set, then the values are clamped so that it never exceeds the parent
     * on the longest axis.
     *
     * @method Phaser.Structs.Size#envelop
     * @since 3.16.0
     *
     * @param {number} [width=0] - The new width of the Size component.
     * @param {number} [height] - The new height of the Size component. If not given, it will use the width value.
     *
     * @return {this} This Size component instance.
     */
    public function envelop(?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the width of this Size component.
     *
     * Depending on the aspect mode, changing the width may also update the height and aspect ratio.
     *
     * @method Phaser.Structs.Size#setWidth
     * @since 3.16.0
     *
     * @param {number} width - The new width of the Size component.
     *
     * @return {this} This Size component instance.
     */
    public function setWidth(width:Float):Dynamic;
    /**
     * Sets the height of this Size component.
     *
     * Depending on the aspect mode, changing the height may also update the width and aspect ratio.
     *
     * @method Phaser.Structs.Size#setHeight
     * @since 3.16.0
     *
     * @param {number} height - The new height of the Size component.
     *
     * @return {this} This Size component instance.
     */
    public function setHeight(height:Float):Dynamic;
    /**
     * Returns a string representation of this Size component.
     *
     * @method Phaser.Structs.Size#toString
     * @since 3.16.0
     *
     * @return {string} A string representation of this Size component.
     */
    public function toString():String;
    /**
     * Sets the values of this Size component to the `element.style.width` and `height`
     * properties of the given DOM Element. The properties are set as `px` values.
     *
     * @method Phaser.Structs.Size#setCSS
     * @since 3.17.0
     *
     * @param {HTMLElement} element - The DOM Element to set the CSS style on.
     */
    public function setCSS(element:js.html.HtmlElement):Void;
    /**
     * Copies the aspect mode, aspect ratio, width and height from this Size component
     * to the given Size component. Note that the parent, if set, is not copied across.
     *
     * @method Phaser.Structs.Size#copy
     * @since 3.16.0
     *
     * @param {Phaser.Structs.Size} destination - The Size component to copy the values to.
     *
     * @return {Phaser.Structs.Size} The updated destination Size component.
     */
    public function copy(destination:phaser.structs.Size):phaser.structs.Size;
    /**
     * Destroys this Size component.
     *
     * This clears the local properties and any parent object, if set.
     *
     * A destroyed Size component cannot be re-used.
     *
     * @method Phaser.Structs.Size#destroy
     * @since 3.16.0
     */
    public function destroy():Void;
}
