package phaser.gameobjects;

/**
 * @classdesc
 * DOM Element Game Objects are a way to control and manipulate HTML Elements over the top of your game.
 *
 * In order for DOM Elements to display you have to enable them by adding the following to your game
 * configuration object:
 *
 * ```javascript
 * dom {
 *   createContainer: true
 * }
 * ```
 *
 * When this is added, Phaser will automatically create a DOM Container div that is positioned over the top
 * of the game canvas. This div is sized to match the canvas, and if the canvas size changes, as a result of
 * settings within the Scale Manager, the dom container is resized accordingly.
 *
 * You can create a DOM Element by either passing in DOMStrings, or by passing in a reference to an existing
 * Element that you wish to be placed under the control of Phaser. For example:
 *
 * ```javascript
 * this.add.dom(x, y, 'div', 'background-color: lime; width: 220px; height: 100px; font: 48px Arial', 'Phaser');
 * ```
 *
 * The above code will insert a div element into the DOM Container at the given x/y coordinate. The DOMString in
 * the 4th argument sets the initial CSS style of the div and the final argument is the inner text. In this case,
 * it will create a lime colored div that is 220px by 100px in size with the text Phaser in it, in an Arial font.
 *
 * You should nearly always, without exception, use explicitly sized HTML Elements, in order to fully control
 * alignment and positioning of the elements next to regular game content.
 *
 * Rather than specify the CSS and HTML directly you can use the `load.html` File Loader to load it into the
 * cache and then use the `createFromCache` method instead. You can also use `createFromHTML` and various other
 * methods available in this class to help construct your elements.
 *
 * Once the element has been created you can then control it like you would any other Game Object. You can set its
 * position, scale, rotation, alpha and other properties. It will move as the main Scene Camera moves and be clipped
 * at the edge of the canvas. It's important to remember some limitations of DOM Elements: The obvious one is that
 * they appear above or below your game canvas. You cannot blend them into the display list, meaning you cannot have
 * a DOM Element, then a Sprite, then another DOM Element behind it.
 *
 * They also cannot be enabled for input. To do that, you have to use the `addListener` method to add native event
 * listeners directly. The final limitation is to do with cameras. The DOM Container is sized to match the game canvas
 * entirely and clipped accordingly. DOM Elements respect camera scrolling and scrollFactor settings, but if you
 * change the size of the camera so it no longer matches the size of the canvas, they won't be clipped accordingly.
 *
 * Also, all DOM Elements are inserted into the same DOM Container, regardless of which Scene they are created in.
 *
 * Note that you should only have DOM Elements in a Scene with a _single_ Camera. If you require multiple cameras,
 * use parallel scenes to achieve this.
 *
 * DOM Elements are a powerful way to align native HTML with your Phaser Game Objects. For example, you can insert
 * a login form for a multiplayer game directly into your title screen. Or a text input box for a highscore table.
 * Or a banner ad from a 3rd party service. Or perhaps you'd like to use them for high resolution text display and
 * UI. The choice is up to you, just remember that you're dealing with standard HTML and CSS floating over the top
 * of your game, and should treat it accordingly.
 *
 * @class DOMElement
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.17.0
 *
 * @extends Phaser.GameObjects.Components.AlphaSingle
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Origin
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} [x=0] - The horizontal position of this DOM Element in the world.
 * @param {number} [y=0] - The vertical position of this DOM Element in the world.
 * @param {(Element|string)} [element] - An existing DOM element, or a string. If a string starting with a # it will do a `getElementById` look-up on the string (minus the hash). Without a hash, it represents the type of element to create, i.e. 'div'.
 * @param {(string|any)} [style] - If a string, will be set directly as the elements `style` property value. If a plain object, will be iterated and the values transferred. In both cases the values replacing whatever CSS styles may have been previously set.
 * @param {string} [innerText] - If given, will be set directly as the elements `innerText` property value, replacing whatever was there before.
 */
@:native("Phaser.GameObjects.DOMElement")
extern class DOMElement extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?element:Dynamic, ?style:Dynamic, ?innerText:String);
    /**
     * A reference to the parent DOM Container that the Game instance created when it started.
     *
     * @name Phaser.GameObjects.DOMElement#parent
     * @type {Element}
     * @since 3.17.0
     */
    public var parent:js.html.Element;
    /**
     * A reference to the HTML Cache.
     *
     * @name Phaser.GameObjects.DOMElement#cache
     * @type {Phaser.Cache.BaseCache}
     * @since 3.17.0
     */
    public var cache:phaser.cache.BaseCache;
    /**
     * The actual DOM Element that this Game Object is bound to. For example, if you've created a `<div>`
     * then this property is a direct reference to that element within the dom.
     *
     * @name Phaser.GameObjects.DOMElement#node
     * @type {Element}
     * @since 3.17.0
     */
    public var node:js.html.Element;
    /**
     * By default a DOM Element will have its transform, display, opacity, zIndex and blend mode properties
     * updated when its rendered. If, for some reason, you don't want any of these changed other than the
     * CSS transform, then set this flag to `true`. When `true` only the CSS Transform is applied and it's
     * up to you to keep track of and set the other properties as required.
     *
     * This can be handy if, for example, you've a nested DOM Element and you don't want the opacity to be
     * picked-up by any of its children.
     *
     * @name Phaser.GameObjects.DOMElement#transformOnly
     * @type {boolean}
     * @since 3.17.0
     */
    public var transformOnly:Bool;
    /**
     * The angle, in radians, by which to skew the DOM Element on the horizontal axis.
     *
     * https://developer.mozilla.org/en-US/docs/Web/CSS/transform
     *
     * @name Phaser.GameObjects.DOMElement#skewX
     * @type {number}
     * @since 3.17.0
     */
    public var skewX:Float;
    /**
     * The angle, in radians, by which to skew the DOM Element on the vertical axis.
     *
     * https://developer.mozilla.org/en-US/docs/Web/CSS/transform
     *
     * @name Phaser.GameObjects.DOMElement#skewY
     * @type {number}
     * @since 3.17.0
     */
    public var skewY:Float;
    /**
     * A Vector4 that contains the 3D rotation of this DOM Element around a fixed axis in 3D space.
     *
     * All values in the Vector4 are treated as degrees, unless the `rotate3dAngle` property is changed.
     *
     * For more details see the following MDN page:
     *
     * https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotate3d
     *
     * @name Phaser.GameObjects.DOMElement#rotate3d
     * @type {Phaser.Math.Vector4}
     * @since 3.17.0
     */
    public var rotate3d:phaser.math.Vector4;
    /**
     * The unit that represents the 3D rotation values. By default this is `deg` for degrees, but can
     * be changed to any supported unit. See this page for further details:
     *
     * https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotate3d
     *
     * @name Phaser.GameObjects.DOMElement#rotate3dAngle
     * @type {string}
     * @since 3.17.0
     */
    public var rotate3dAngle:String;
    /**
     * The native (un-scaled) width of this Game Object.
     *
     * For a DOM Element this property is read-only.
     *
     * The property `displayWidth` holds the computed bounds of this DOM Element, factoring in scaling.
     *
     * @name Phaser.GameObjects.DOMElement#width
     * @type {number}
     * @readonly
     * @since 3.17.0
     */
    public var width:Float;
    /**
     * The native (un-scaled) height of this Game Object.
     *
     * For a DOM Element this property is read-only.
     *
     * The property `displayHeight` holds the computed bounds of this DOM Element, factoring in scaling.
     *
     * @name Phaser.GameObjects.DOMElement#height
     * @type {number}
     * @readonly
     * @since 3.17.0
     */
    public var height:Float;
    /**
     * The computed display width of this Game Object, based on the `getBoundingClientRect` DOM call.
     *
     * The property `width` holds the un-scaled width of this DOM Element.
     *
     * @name Phaser.GameObjects.DOMElement#displayWidth
     * @type {number}
     * @readonly
     * @since 3.17.0
     */
    public var displayWidth:Float;
    /**
     * The computed display height of this Game Object, based on the `getBoundingClientRect` DOM call.
     *
     * The property `height` holds the un-scaled height of this DOM Element.
     *
     * @name Phaser.GameObjects.DOMElement#displayHeight
     * @type {number}
     * @readonly
     * @since 3.17.0
     */
    public var displayHeight:Float;
    /**
     * The perspective CSS property value of the _parent DOM Container_. This determines the distance between the z=0
     * plane and the user in order to give a 3D-positioned element some perspective. Each 3D element with
     * z > 0 becomes larger; each 3D-element with z < 0 becomes smaller. The strength of the effect is determined
     * by the value of this property.
     *
     * For more information see: https://developer.mozilla.org/en-US/docs/Web/CSS/perspective
     *
     * **Changing this value changes it globally for all DOM Elements, as they all share the same parent container.**
     *
     * @name Phaser.GameObjects.DOMElement#perspective
     * @type {number}
     * @since 3.17.0
     */
    public var perspective:Float;
    /**
     * Sets the horizontal and vertical skew values of this DOM Element.
     *
     * For more information see: https://developer.mozilla.org/en-US/docs/Web/CSS/transform
     *
     * @method Phaser.GameObjects.DOMElement#setSkew
     * @since 3.17.0
     *
     * @param {number} [x=0] - The angle, in radians, by which to skew the DOM Element on the horizontal axis.
     * @param {number} [y=x] - The angle, in radians, by which to skew the DOM Element on the vertical axis.
     *
     * @return {this} This DOM Element instance.
     */
    public function setSkew(?x:Float, ?y:Float):Dynamic;
    /**
     * Sets the perspective CSS property of the _parent DOM Container_. This determines the distance between the z=0
     * plane and the user in order to give a 3D-positioned element some perspective. Each 3D element with
     * z > 0 becomes larger; each 3D-element with z < 0 becomes smaller. The strength of the effect is determined
     * by the value of this property.
     *
     * For more information see: https://developer.mozilla.org/en-US/docs/Web/CSS/perspective
     *
     * **Changing this value changes it globally for all DOM Elements, as they all share the same parent container.**
     *
     * @method Phaser.GameObjects.DOMElement#setPerspective
     * @since 3.17.0
     *
     * @param {number} value - The perspective value, in pixels, that determines the distance between the z plane and the user.
     *
     * @return {this} This DOM Element instance.
     */
    public function setPerspective(value:Float):Dynamic;
    /**
     * Creates a native DOM Element, adds it to the parent DOM Container and then binds it to this Game Object,
     * so you can control it. The `tagName` should be a string and is passed to `document.createElement`:
     *
     * ```javascript
     * this.add.dom().createElement('div');
     * ```
     *
     * For more details on acceptable tag names see: https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement
     *
     * You can also pass in a DOMString or style object to set the CSS on the created element, and an optional `innerText`
     * value as well. Here is an example of a DOMString:
     *
     * ```javascript
     * this.add.dom().createElement('div', 'background-color: lime; width: 220px; height: 100px; font: 48px Arial', 'Phaser');
     * ```
     *
     * And using a style object:
     *
     * ```javascript
     * var style = {
     *   'background-color': 'lime';
     *   'width': '200px';
     *   'height': '100px';
     *   'font': '48px Arial';
     * };
     *
     * this.add.dom().createElement('div', style, 'Phaser');
     * ```
     *
     * If this Game Object already has an Element, it is removed from the DOM entirely first.
     * Any event listeners you may have previously created will need to be re-created after this call.
     *
     * @method Phaser.GameObjects.DOMElement#createElement
     * @since 3.17.0
     *
     * @param {string} tagName - A string that specifies the type of element to be created. The nodeName of the created element is initialized with the value of tagName. Don't use qualified names (like "html:a") with this method.
     * @param {(string|any)} [style] - Either a DOMString that holds the CSS styles to be applied to the created element, or an object the styles will be ready from.
     * @param {string} [innerText] - A DOMString that holds the text that will be set as the innerText of the created element.
     *
     * @return {this} This DOM Element instance.
     */
    public function createElement(tagName:String, ?style:Dynamic, ?innerText:String):Dynamic;
    /**
     * Binds a new DOM Element to this Game Object. If this Game Object already has an Element it is removed from the DOM
     * entirely first. Any event listeners you may have previously created will need to be re-created on the new element.
     *
     * The `element` argument you pass to this method can be either a string tagName:
     *
     * ```javascript
     * <h1 id="heading">Phaser</h1>
     *
     * this.add.dom().setElement('heading');
     * ```
     *
     * Or a reference to an Element instance:
     *
     * ```javascript
     * <h1 id="heading">Phaser</h1>
     *
     * var h1 = document.getElementById('heading');
     *
     * this.add.dom().setElement(h1);
     * ```
     *
     * You can also pass in a DOMString or style object to set the CSS on the created element, and an optional `innerText`
     * value as well. Here is an example of a DOMString:
     *
     * ```javascript
     * this.add.dom().setElement(h1, 'background-color: lime; width: 220px; height: 100px; font: 48px Arial', 'Phaser');
     * ```
     *
     * And using a style object:
     *
     * ```javascript
     * var style = {
     *   'background-color': 'lime';
     *   'width': '200px';
     *   'height': '100px';
     *   'font': '48px Arial';
     * };
     *
     * this.add.dom().setElement(h1, style, 'Phaser');
     * ```
     *
     * @method Phaser.GameObjects.DOMElement#setElement
     * @since 3.17.0
     *
     * @param {(string|Element)} element - If a string it is passed to `getElementById()`, or it should be a reference to an existing Element.
     * @param {(string|any)} [style] - Either a DOMString that holds the CSS styles to be applied to the created element, or an object the styles will be ready from.
     * @param {string} [innerText] - A DOMString that holds the text that will be set as the innerText of the created element.
     *
     * @return {this} This DOM Element instance.
     */
    public function setElement(element:Dynamic, ?style:Dynamic, ?innerText:String):Dynamic;
    /**
     * Takes a block of html from the HTML Cache, that has previously been preloaded into the game, and then
     * creates a DOM Element from it. The loaded HTML is set as the `innerHTML` property of the created
     * element.
     *
     * Assume the following html is stored in a file called `loginform.html`:
     *
     * ```html
     * <input type="text" name="nameField" placeholder="Enter your name" style="font-size: 32px">
     * <input type="button" name="playButton" value="Let's Play" style="font-size: 32px">
     * ```
     *
     * Which is loaded into your game using the cache key 'login':
     *
     * ```javascript
     * this.load.html('login', 'assets/loginform.html');
     * ```
     *
     * You can create a DOM Element from it using the cache key:
     *
     * ```javascript
     * this.add.dom().createFromCache('login');
     * ```
     *
     * The optional `elementType` argument controls the container that is created, into which the loaded html is inserted.
     * The default is a plain `div` object, but any valid tagName can be given.
     *
     * If this Game Object already has an Element, it is removed from the DOM entirely first.
     * Any event listeners you may have previously created will need to be re-created after this call.
     *
     * @method Phaser.GameObjects.DOMElement#createFromCache
     * @since 3.17.0
     *
     * @param {string} The key of the html cache entry to use for this DOM Element.
     * @param {string} [tagName='div'] - The tag name of the element into which all of the loaded html will be inserted. Defaults to a plain div tag.
     *
     * @return {this} This DOM Element instance.
     */
    public function createFromCache(The:String, ?tagName:String):Dynamic;
    /**
     * Takes a string of html and then creates a DOM Element from it. The HTML is set as the `innerHTML`
     * property of the created element.
     *
     * ```javascript
     * let form = `
     * <input type="text" name="nameField" placeholder="Enter your name" style="font-size: 32px">
     * <input type="button" name="playButton" value="Let's Play" style="font-size: 32px">
     * `;
     * ```
     *
     * You can create a DOM Element from it using the string:
     *
     * ```javascript
     * this.add.dom().createFromHTML(form);
     * ```
     *
     * The optional `elementType` argument controls the type of container that is created, into which the html is inserted.
     * The default is a plain `div` object, but any valid tagName can be given.
     *
     * If this Game Object already has an Element, it is removed from the DOM entirely first.
     * Any event listeners you may have previously created will need to be re-created after this call.
     *
     * @method Phaser.GameObjects.DOMElement#createFromHTML
     * @since 3.17.0
     *
     * @param {string} A string of html to be set as the `innerHTML` property of the created element.
     * @param {string} [tagName='div'] - The tag name of the element into which all of the html will be inserted. Defaults to a plain div tag.
     *
     * @return {this} This DOM Element instance.
     */
    public function createFromHTML(A:String, ?tagName:String):Dynamic;
    /**
     * Removes the current DOM Element bound to this Game Object from the DOM entirely and resets the
     * `node` property of this Game Object to be `null`.
     *
     * @method Phaser.GameObjects.DOMElement#removeElement
     * @since 3.17.0
     *
     * @return {this} This DOM Element instance.
     */
    public function removeElement():Dynamic;
    /**
     * Internal method that calls `getBoundingClientRect` on the `node` and then sets the bounds width
     * and height into the `displayWidth` and `displayHeight` properties, and the `clientWidth` and `clientHeight`
     * values into the `width` and `height` properties respectively.
     *
     * This is called automatically whenever a new element is created or set.
     *
     * @method Phaser.GameObjects.DOMElement#updateSize
     * @since 3.17.0
     *
     * @return {this} This DOM Element instance.
     */
    public function updateSize():Dynamic;
    /**
     * Gets all children from this DOM Elements node, using `querySelectorAll('*')` and then iterates through
     * them, looking for the first one that has a property matching the given key and value. It then returns this child
     * if found, or `null` if not.
     *
     * @method Phaser.GameObjects.DOMElement#getChildByProperty
     * @since 3.17.0
     *
     * @param {string} property - The property to search the children for.
     * @param {string} value - The value the property must strictly equal.
     *
     * @return {?Element} The first matching child DOM Element, or `null` if not found.
     */
    public function getChildByProperty(property:String, value:String):js.html.Element;
    /**
     * Gets all children from this DOM Elements node, using `querySelectorAll('*')` and then iterates through
     * them, looking for the first one that has a matching id. It then returns this child if found, or `null` if not.
     *
     * Be aware that class and id names are case-sensitive.
     *
     * @method Phaser.GameObjects.DOMElement#getChildByID
     * @since 3.17.0
     *
     * @param {string} id - The id to search the children for.
     *
     * @return {?Element} The first matching child DOM Element, or `null` if not found.
     */
    public function getChildByID(id:String):js.html.Element;
    /**
     * Gets all children from this DOM Elements node, using `querySelectorAll('*')` and then iterates through
     * them, looking for the first one that has a matching name. It then returns this child if found, or `null` if not.
     *
     * Be aware that class and id names are case-sensitive.
     *
     * @method Phaser.GameObjects.DOMElement#getChildByName
     * @since 3.17.0
     *
     * @param {string} name - The name to search the children for.
     *
     * @return {?Element} The first matching child DOM Element, or `null` if not found.
     */
    public function getChildByName(name:String):js.html.Element;
    /**
     * Sets the `className` property of the DOM Element node and updates the internal sizes.
     *
     * @method Phaser.GameObjects.DOMElement#setClassName
     * @since 3.17.0
     *
     * @param {string} className - A string representing the class or space-separated classes of the element.
     *
     * @return {this} This DOM Element instance.
     */
    public function setClassName(className:String):Dynamic;
    /**
     * Sets the `innerText` property of the DOM Element node and updates the internal sizes.
     *
     * Note that only certain types of Elements can have `innerText` set on them.
     *
     * @method Phaser.GameObjects.DOMElement#setText
     * @since 3.17.0
     *
     * @param {string} text - A DOMString representing the rendered text content of the element.
     *
     * @return {this} This DOM Element instance.
     */
    public function setText(text:String):Dynamic;
    /**
     * Sets the `innerHTML` property of the DOM Element node and updates the internal sizes.
     *
     * @method Phaser.GameObjects.DOMElement#setHTML
     * @since 3.17.0
     *
     * @param {string} html - A DOMString of html to be set as the `innerHTML` property of the element.
     *
     * @return {this} This DOM Element instance.
     */
    public function setHTML(html:String):Dynamic;
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
     * @param {integer} value - The depth of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDepth(value:Int):Dynamic;
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
