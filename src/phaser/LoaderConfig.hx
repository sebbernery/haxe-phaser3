package phaser;

/**
 * @typedef {object} LoaderConfig
 *
 * @property {string} [baseURL] - An URL used to resolve paths given to the loader. Example: 'http://labs.phaser.io/assets/'.
 * @property {string} [path] - An URL path used to resolve relative paths given to the loader. Example: 'images/sprites/'.
 * @property {integer} [maxParallelDownloads=32] - The maximum number of resources the loader will start loading at once.
 * @property {(string|undefined)} [crossOrigin=undefined] - 'anonymous', 'use-credentials', or `undefined`. If you're not making cross-origin requests, leave this as `undefined`. See {@link https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_settings_attributes}.
 * @property {string} [responseType] - The response type of the XHR request, e.g. `blob`, `text`, etc.
 * @property {boolean} [async=true] - Should the XHR request use async or not?
 * @property {string} [user] - Optional username for the XHR request.
 * @property {string} [password] - Optional password for the XHR request.
 * @property {integer} [timeout=0] - Optional XHR timeout value, in ms.
 */
typedef LoaderConfig = {
    @:optional var baseURL:String;
    @:optional var path:String;
    @:optional var maxParallelDownloads:Int;
    @:optional var crossOrigin:Dynamic;
    @:optional var responseType:String;
    @:optional var async:Bool;
    @:optional var user:String;
    @:optional var password:String;
    @:optional var timeout:Int;
};
