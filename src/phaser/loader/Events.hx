package phaser.loader;

/**
 * @namespace Phaser.Loader.Events
 */
@:native("Phaser.Loader.Events")
class Events {
    /**
     * The Loader Plugin Add File Event.
     * 
     * This event is dispatched when a new file is successfully added to the Loader and placed into the load queue.
     * 
     * Listen to it from a Scene using: `this.load.on('addfile', listener)`.
     * 
     * If you add lots of files to a Loader from a `preload` method, it will dispatch this event for each one of them.
     */
    public static final ADD : String = "addfile";

    /**
     * The Loader Plugin Complete Event.
     * 
     * This event is dispatched when the Loader has fully processed everything in the load queue.
     * By this point every loaded file will now be in its associated cache and ready for use.
     * 
     * Listen to it from a Scene using: `this.load.on('complete', listener)`.
     */
    public static final COMPLETE : String = "complete";

    /**
     * The File Load Complete Event.
     * 
     * This event is dispatched by the Loader Plugin when any file in the queue finishes loading.
     * 
     * Listen to it from a Scene using: `this.load.on('filecomplete', listener)`.
     * 
     * You can also listen for the completion of a specific file. See the [FILE_KEY_COMPLETE]{@linkcode Phaser.Loader.Events#event:FILE_KEY_COMPLETE} event.
     */
    public static final FILE_COMPLETE : String = "filecomplete";

    /**
     * The File Load Complete Event.
     * 
     * This event is dispatched by the Loader Plugin when any file in the queue finishes loading.
     * 
     * It uses a special dynamic event name constructed from the key and type of the file.
     * 
     * For example, if you have loaded an `image` with a key of `monster`, you can listen for it
     * using the following:
     * 
     * ```javascript
     * this.load.on('filecomplete-image-monster', function (key, type, data) {
     *     // Your handler code
     * });
     * ```
     * 
     * Or, if you have loaded a texture `atlas` with a key of `Level1`:
     * 
     * ```javascript
     * this.load.on('filecomplete-atlas-Level1', function (key, type, data) {
     *     // Your handler code
     * });
     * ```
     * 
     * Or, if you have loaded a sprite sheet with a key of `Explosion` and a prefix of `GAMEOVER`:
     * 
     * ```javascript
     * this.load.on('filecomplete-spritesheet-GAMEOVERExplosion', function (key, type, data) {
     *     // Your handler code
     * });
     * ```
     * 
     * You can also listen for the generic completion of files. See the [FILE_COMPLETE]{@linkcode Phaser.Loader.Events#event:FILE_COMPLETE} event.
     */
    public static final FILE_KEY_COMPLETE : String = "filecomplete-";

    /**
     * The File Load Error Event.
     * 
     * This event is dispatched by the Loader Plugin when a file fails to load.
     * 
     * Listen to it from a Scene using: `this.load.on('loaderror', listener)`.
     */
    public static final FILE_LOAD_ERROR : String = "loaderror";

    /**
     * The File Load Event.
     * 
     * This event is dispatched by the Loader Plugin when a file finishes loading,
     * but _before_ it is processed and added to the internal Phaser caches.
     * 
     * Listen to it from a Scene using: `this.load.on('load', listener)`.
     */
    public static final FILE_LOAD : String = "load";

    /**
     * The File Load Progress Event.
     * 
     * This event is dispatched by the Loader Plugin during the load of a file, if the browser receives a DOM ProgressEvent and
     * the `lengthComputable` event property is true. Depending on the size of the file and browser in use, this may, or may not happen.
     * 
     * Listen to it from a Scene using: `this.load.on('fileprogress', listener)`.
     */
    public static final FILE_PROGRESS : String = "fileprogress";

    /**
     * The Loader Plugin Post Process Event.
     * 
     * This event is dispatched by the Loader Plugin when the Loader has finished loading everything in the load queue.
     * It is dispatched before the internal lists are cleared and each File is destroyed.
     * 
     * Use this hook to perform any last minute processing of files that can only happen once the
     * Loader has completed, but prior to it emitting the `complete` event.
     * 
     * Listen to it from a Scene using: `this.load.on('postprocess', listener)`.
     */
    public static final POST_PROCESS : String = "postprocess";

    /**
     * The Loader Plugin Progress Event.
     * 
     * This event is dispatched when the Loader updates its load progress, typically as a result of a file having completed loading.
     * 
     * Listen to it from a Scene using: `this.load.on('progress', listener)`.
     */
    public static final PROGRESS : String = "progress";

    /**
     * The Loader Plugin Start Event.
     * 
     * This event is dispatched when the Loader starts running. At this point load progress is zero.
     * 
     * This event is dispatched even if there aren't any files in the load queue.
     * 
     * Listen to it from a Scene using: `this.load.on('start', listener)`.
     */
    public static final START : String = "start";
}
