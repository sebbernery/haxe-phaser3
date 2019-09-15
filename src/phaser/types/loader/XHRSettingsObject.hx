package phaser.types.loader;

/**
 * @typedef {object} Phaser.Types.Loader.XHRSettingsObject
 * @since 3.0.0
 *
 * @property {XMLHttpRequestResponseType} responseType - The response type of the XHR request, i.e. `blob`, `text`, etc.
 * @property {boolean} [async=true] - Should the XHR request use async or not?
 * @property {string} [user=''] - Optional username for the XHR request.
 * @property {string} [password=''] - Optional password for the XHR request.
 * @property {integer} [timeout=0] - Optional XHR timeout value.
 * @property {(string|undefined)} [header] - This value is used to populate the XHR `setRequestHeader` and is undefined by default.
 * @property {(string|undefined)} [headerValue] - This value is used to populate the XHR `setRequestHeader` and is undefined by default.
 * @property {(string|undefined)} [requestedWith] - This value is used to populate the XHR `setRequestHeader` and is undefined by default.
 * @property {(string|undefined)} [overrideMimeType] - Provide a custom mime-type to use instead of the default.
 */
typedef XHRSettingsObject = {
var responseType:js.html.XMLHttpRequestResponseType;
    @:optional var async:Bool;
    @:optional var user:String;
    @:optional var password:String;
    @:optional var timeout:Int;
    @:optional var header:Dynamic;
    @:optional var headerValue:Dynamic;
    @:optional var requestedWith:Dynamic;
    @:optional var overrideMimeType:Dynamic;
};
