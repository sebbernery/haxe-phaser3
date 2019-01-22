package phaser;

/**
 * @typedef {object} GameConfig
 *
 * @property {(integer|string)} [width=1024] - The width of the game, in game pixels.
 * @property {(integer|string)} [height=768] - The height of the game, in game pixels.
 * @property {number} [zoom=1] - Simple scale applied to the game canvas. 2 is double size, 0.5 is half size, etc.
 * @property {number} [resolution=1] - The size of each game pixel, in canvas pixels. Values larger than 1 are "high" resolution.
 * @property {number} [type=CONST.AUTO] - Which renderer to use. Phaser.AUTO, Phaser.CANVAS, Phaser.HEADLESS, or Phaser.WEBGL. AUTO picks WEBGL if available, otherwise CANVAS.
 * @property {(HTMLElement|string)} [parent=null] - The DOM element that will contain the game canvas, or its `id`. If null (the default) or if the named element doesn't exist, the game canvas is inserted directly into the document body.
 * @property {HTMLCanvasElement} [canvas=null] - Provide your own Canvas element for Phaser to use instead of creating one.
 * @property {string} [canvasStyle=null] - CSS styles to apply to the game canvas instead of Phaser's default styles.
 * @property {CanvasRenderingContext2D} [context] - Provide your own Canvas Context for Phaser to use, instead of creating one.
 * @property {object} [scene=null] - A scene or scenes to add to the game. If several are given, the first is started; the remainder are started only if they have { active: true }.
 * @property {string[]} [seed] - Seed for the random number generator.
 * @property {string} [title=''] - The title of the game. Shown in the browser console.
 * @property {string} [url='http://phaser.io'] - The URL of the game. Shown in the browser console.
 * @property {string} [version=''] - The version of the game. Shown in the browser console.
 * @property {boolean} [autoFocus=true] - Automatically call window.focus() when the game boots. Usually necessary to capture input events if the game is in a separate frame.
 * @property {(boolean|InputConfig)} [input] - Input configuration, or `false` to disable all game input.
 * @property {boolean} [disableContextMenu=false] - Disable the browser's default 'contextmenu' event (usually triggered by a right-button mouse click).
 * @property {(boolean|BannerConfig)} [banner=false] - Configuration for the banner printed in the browser console when the game starts.
 * @property {DOMContainerConfig} [dom] - The DOM Container configuration object.
 * @property {FPSConfig} [fps] - Game loop configuration.
 * @property {RenderConfig} [render] - Game renderer configuration.
 * @property {(string|number)} [backgroundColor=0x000000] - The background color of the game canvas. The default is black.
 * @property {CallbacksConfig} [callbacks] - Optional callbacks to run before or after game boot.
 * @property {LoaderConfig} [loader] - Loader configuration.
 * @property {ImagesConfig} [images] - Images configuration.
 * @property {object} [physics] - Physics configuration.
 * @property {PluginObject|PluginObjectItem[]} [plugins] - Plugins to install.
 */
typedef GameConfig = {
    @:optional var width:Dynamic;
    @:optional var height:Dynamic;
    @:optional var zoom:Float;
    @:optional var resolution:Float;
    @:optional var type:Int;
    @:optional var parent:Dynamic;
    @:optional var canvas:js.html.CanvasElement;
    @:optional var canvasStyle:String;
    @:optional var context:js.html.CanvasRenderingContext2D;
    @:optional var scene:Dynamic;
    @:optional var seed:Array<String>;
    @:optional var title:String;
    @:optional var url:String;
    @:optional var version:String;
    @:optional var autoFocus:Bool;
    @:optional var input:Dynamic;
    @:optional var disableContextMenu:Bool;
    @:optional var banner:Dynamic;
    @:optional var dom:DOMContainerConfig;
    @:optional var fps:FPSConfig;
    @:optional var render:RenderConfig;
    @:optional var backgroundColor:Dynamic;
    @:optional var callbacks:CallbacksConfig;
    @:optional var loader:LoaderConfig;
    @:optional var images:ImagesConfig;
    @:optional var physics:Dynamic;
    @:optional var plugins:Dynamic;
};
