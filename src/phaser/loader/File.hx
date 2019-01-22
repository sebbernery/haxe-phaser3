package phaser.loader;

/**
 * @classdesc
 * The base File class used by all File Types that the Loader can support.
 * You shouldn't create an instance of a File directly, but should extend it with your own class, setting a custom type and processing methods.
 *
 * @class File
 * @memberof Phaser.Loader
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Loader.LoaderPlugin} loader - The Loader that is going to load this File.
 * @param {FileConfig} fileConfig - The file configuration object, as created by the file type.
 */
@:native("Phaser.Loader.File")
extern class File {
    public function new(loader:phaser.loader.LoaderPlugin, fileConfig:FileConfig);
    /**
     * A reference to the Loader that is going to load this file.
     *
     * @name Phaser.Loader.File#loader
     * @type {Phaser.Loader.LoaderPlugin}
     * @since 3.0.0
     */
    public var loader:phaser.loader.LoaderPlugin;
    /**
     * A reference to the Cache, or Texture Manager, that is going to store this file if it loads.
     *
     * @name Phaser.Loader.File#cache
     * @type {(Phaser.Cache.BaseCache|Phaser.Textures.TextureManager)}
     * @since 3.7.0
     */
    public var cache:Dynamic;
    /**
     * The file type string (image, json, etc) for sorting within the Loader.
     *
     * @name Phaser.Loader.File#type
     * @type {string}
     * @since 3.0.0
     */
    public var type:String;
    /**
     * Unique cache key (unique within its file type)
     *
     * @name Phaser.Loader.File#key
     * @type {string}
     * @since 3.0.0
     */
    public var key:String;
    /**
     * The URL of the file, not including baseURL.
     * Automatically has Loader.path prepended to it.
     *
     * @name Phaser.Loader.File#url
     * @type {string}
     * @since 3.0.0
     */
    public var url:String;
    /**
     * The final URL this file will load from, including baseURL and path.
     * Set automatically when the Loader calls 'load' on this file.
     *
     * @name Phaser.Loader.File#src
     * @type {string}
     * @since 3.0.0
     */
    public var src:String;
    /**
     * The merged XHRSettings for this file.
     *
     * @name Phaser.Loader.File#xhrSettings
     * @type {XHRSettingsObject}
     * @since 3.0.0
     */
    public var xhrSettings:XHRSettingsObject;
    /**
     * The XMLHttpRequest instance (as created by XHR Loader) that is loading this File.
     *
     * @name Phaser.Loader.File#xhrLoader
     * @type {?XMLHttpRequest}
     * @since 3.0.0
     */
    public var xhrLoader:js.html.XMLHttpRequest;
    /**
     * The current state of the file. One of the FILE_CONST values.
     *
     * @name Phaser.Loader.File#state
     * @type {integer}
     * @since 3.0.0
     */
    public var state:Int;
    /**
     * The total size of this file.
     * Set by onProgress and only if loading via XHR.
     *
     * @name Phaser.Loader.File#bytesTotal
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var bytesTotal:Float;
    /**
     * Updated as the file loads.
     * Only set if loading via XHR.
     *
     * @name Phaser.Loader.File#bytesLoaded
     * @type {number}
     * @default -1
     * @since 3.0.0
     */
    public var bytesLoaded:Float;
    /**
     * A percentage value between 0 and 1 indicating how much of this file has loaded.
     * Only set if loading via XHR.
     *
     * @name Phaser.Loader.File#percentComplete
     * @type {number}
     * @default -1
     * @since 3.0.0
     */
    public var percentComplete:Float;
    /**
     * For CORs based loading.
     * If this is undefined then the File will check BaseLoader.crossOrigin and use that (if set)
     *
     * @name Phaser.Loader.File#crossOrigin
     * @type {(string|undefined)}
     * @since 3.0.0
     */
    public var crossOrigin:Dynamic;
    /**
     * The processed file data, stored here after the file has loaded.
     *
     * @name Phaser.Loader.File#data
     * @type {*}
     * @since 3.0.0
     */
    public var data:Dynamic;
    /**
     * A config object that can be used by file types to store transitional data.
     *
     * @name Phaser.Loader.File#config
     * @type {*}
     * @since 3.0.0
     */
    public var config:Dynamic;
    /**
     * If this is a multipart file, i.e. an atlas and its json together, then this is a reference
     * to the parent MultiFile. Set and used internally by the Loader or specific file types.
     *
     * @name Phaser.Loader.File#multiFile
     * @type {?Phaser.Loader.MultiFile}
     * @since 3.7.0
     */
    public var multiFile:phaser.loader.MultiFile;
    /**
     * Does this file have an associated linked file? Such as an image and a normal map.
     * Atlases and Bitmap Fonts use the multiFile, because those files need loading together but aren't
     * actually bound by data, where-as a linkFile is.
     *
     * @name Phaser.Loader.File#linkFile
     * @type {?Phaser.Loader.File}
     * @since 3.7.0
     */
    public var linkFile:phaser.loader.File;
    /**
     * Links this File with another, so they depend upon each other for loading and processing.
     *
     * @method Phaser.Loader.File#setLink
     * @since 3.7.0
     *
     * @param {Phaser.Loader.File} fileB - The file to link to this one.
     */
    public function setLink(fileB:phaser.loader.File):Void;
    /**
     * Resets the XHRLoader instance this file is using.
     *
     * @method Phaser.Loader.File#resetXHR
     * @since 3.0.0
     */
    public function resetXHR():Void;
    /**
     * Called by the Loader, starts the actual file downloading.
     * During the load the methods onLoad, onError and onProgress are called, based on the XHR events.
     * You shouldn't normally call this method directly, it's meant to be invoked by the Loader.
     *
     * @method Phaser.Loader.File#load
     * @since 3.0.0
     */
    public function load():Void;
    /**
     * Called when the file finishes loading, is sent a DOM ProgressEvent.
     *
     * @method Phaser.Loader.File#onLoad
     * @since 3.0.0
     *
     * @param {XMLHttpRequest} xhr - The XMLHttpRequest that caused this onload event.
     * @param {ProgressEvent} event - The DOM ProgressEvent that resulted from this load.
     */
    public function onLoad(xhr:js.html.XMLHttpRequest, event:js.html.ProgressEvent):Void;
    /**
     * Called if the file errors while loading, is sent a DOM ProgressEvent.
     *
     * @method Phaser.Loader.File#onError
     * @since 3.0.0
     *
     * @param {ProgressEvent} event - The DOM ProgressEvent that resulted from this error.
     */
    public function onError(event:js.html.ProgressEvent):Void;
    /**
     * Called during the file load progress. Is sent a DOM ProgressEvent.
     *
     * @method Phaser.Loader.File#onProgress
     * @since 3.0.0
     *
     * @param {ProgressEvent} event - The DOM ProgressEvent.
     */
    public function onProgress(event:js.html.ProgressEvent):Void;
    /**
     * Usually overridden by the FileTypes and is called by Loader.nextFile.
     * This method controls what extra work this File does with its loaded data, for example a JSON file will parse itself during this stage.
     *
     * @method Phaser.Loader.File#onProcess
     * @since 3.0.0
     */
    public function onProcess():Void;
    /**
     * Called when the File has completed processing.
     * Checks on the state of its multifile, if set.
     *
     * @method Phaser.Loader.File#onProcessComplete
     * @since 3.7.0
     */
    public function onProcessComplete():Void;
    /**
     * Called when the File has completed processing but it generated an error.
     * Checks on the state of its multifile, if set.
     *
     * @method Phaser.Loader.File#onProcessError
     * @since 3.7.0
     */
    public function onProcessError():Void;
    /**
     * Checks if a key matching the one used by this file exists in the target Cache or not.
     * This is called automatically by the LoaderPlugin to decide if the file can be safely
     * loaded or will conflict.
     *
     * @method Phaser.Loader.File#hasCacheConflict
     * @since 3.7.0
     *
     * @return {boolean} `true` if adding this file will cause a conflict, otherwise `false`.
     */
    public function hasCacheConflict():Bool;
    /**
     * Adds this file to its target cache upon successful loading and processing.
     * This method is often overridden by specific file types.
     *
     * @method Phaser.Loader.File#addToCache
     * @since 3.7.0
     */
    public function addToCache():Void;
    /**
     * Called once the file has been added to its cache and is now ready for deletion from the Loader.
     * It will emit a `filecomplete` event from the LoaderPlugin.
     *
     * @method Phaser.Loader.File#pendingDestroy
     * @fires Phaser.Loader.File#fileCompleteEvent
     * @fires Phaser.Loader.File#singleFileCompleteEvent
     * @since 3.7.0
     */
    public function pendingDestroy():Void;
    /**
     * Destroy this File and any references it holds.
     *
     * @method Phaser.Loader.File#destroy
     * @since 3.7.0
     */
    public function destroy():Void;
    /**
     * Static method for creating object URL using URL API and setting it as image 'src' attribute.
     * If URL API is not supported (usually on old browsers) it falls back to creating Base64 encoded url using FileReader.
     *
     * @method Phaser.Loader.File.createObjectURL
     * @static
     * @param {HTMLImageElement} image - Image object which 'src' attribute should be set to object URL.
     * @param {Blob} blob - A Blob object to create an object URL for.
     * @param {string} defaultType - Default mime type used if blob type is not available.
     */
    public function createObjectURL(image:js.html.ImageElement, blob:js.html.Blob, defaultType:String):Void;
    /**
     * Static method for releasing an existing object URL which was previously created
     * by calling {@link File#createObjectURL} method.
     *
     * @method Phaser.Loader.File.revokeObjectURL
     * @static
     * @param {HTMLImageElement} image - Image object which 'src' attribute should be revoked.
     */
    public function revokeObjectURL(image:js.html.ImageElement):Void;
}
