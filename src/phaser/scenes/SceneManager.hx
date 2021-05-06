package phaser.scenes;

/**
 * @classdesc
 * The Scene Manager.
 *
 * The Scene Manager is a Game level system, responsible for creating, processing and updating all of the
 * Scenes in a Game instance.
 *
 * You should not usually interact directly with the Scene Manager at all. Instead, you should use
 * the Scene Plugin, which is available from every Scene in your game via the `this.scene` property.
 *
 * Using methods in this Scene Manager directly will break queued operations and can cause runtime
 * errors. Instead, go via the Scene Plugin. Every feature this Scene Manager provides is also
 * available via the Scene Plugin.
 *
 * @class SceneManager
 * @memberof Phaser.Scenes
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Game} game - The Phaser.Game instance this Scene Manager belongs to.
 * @param {object} sceneConfig - Scene specific configuration settings.
 */
@:native("Phaser.Scenes.SceneManager")
extern class SceneManager {
    public function new(game:phaser.Game, sceneConfig:Dynamic);
    /**
     * The Game that this SceneManager belongs to.
     *
     * @name Phaser.Scenes.SceneManager#game
     * @type {Phaser.Game}
     * @since 3.0.0
     */
    public var game:phaser.Game;
    /**
     * An object that maps the keys to the scene so we can quickly get a scene from a key without iteration.
     *
     * @name Phaser.Scenes.SceneManager#keys
     * @type {Record<string, Phaser.Scene>}
     * @since 3.0.0
     */
    public var keys:Dynamic;
    /**
     * The array in which all of the scenes are kept.
     *
     * @name Phaser.Scenes.SceneManager#scenes
     * @type {Phaser.Scene[]}
     * @since 3.0.0
     */
    public var scenes:Array<phaser.Scene>;
    /**
     * Is the Scene Manager actively processing the Scenes list?
     *
     * @name Phaser.Scenes.SceneManager#isProcessing
     * @type {boolean}
     * @default false
     * @readonly
     * @since 3.0.0
     */
    public var isProcessing:Bool;
    /**
     * Has the Scene Manager properly started?
     *
     * @name Phaser.Scenes.SceneManager#isBooted
     * @type {boolean}
     * @default false
     * @readonly
     * @since 3.4.0
     */
    public var isBooted:Bool;
    /**
     * Do any of the Cameras in any of the Scenes require a custom viewport?
     * If not we can skip scissor tests.
     *
     * @name Phaser.Scenes.SceneManager#customViewports
     * @type {number}
     * @default 0
     * @since 3.12.0
     */
    public var customViewports:Float;
    /**
     * Process the Scene operations queue.
     *
     * @method Phaser.Scenes.SceneManager#processQueue
     * @since 3.0.0
     */
    public function processQueue():Void;
    /**
     * Adds a new Scene into the SceneManager.
     * You must give each Scene a unique key by which you'll identify it.
     *
     * The `sceneConfig` can be:
     *
     * * A `Phaser.Scene` object, or an object that extends it.
     * * A plain JavaScript object
     * * A JavaScript ES6 Class that extends `Phaser.Scene`
     * * A JavaScript ES5 prototype based Class
     * * A JavaScript function
     *
     * If a function is given then a new Scene will be created by calling it.
     *
     * @method Phaser.Scenes.SceneManager#add
     * @since 3.0.0
     *
     * @param {string} key - A unique key used to reference the Scene, i.e. `MainMenu` or `Level1`.
     * @param {(Phaser.Scene|Phaser.Types.Scenes.SettingsConfig|Phaser.Types.Scenes.CreateSceneFromObjectConfig|function)} sceneConfig - The config for the Scene
     * @param {boolean} [autoStart=false] - If `true` the Scene will be started immediately after being added.
     * @param {object} [data] - Optional data object. This will be set as `Scene.settings.data` and passed to `Scene.init`, and `Scene.create`.
     *
     * @return {?Phaser.Scene} The added Scene, if it was added immediately, otherwise `null`.
     */
    public function add(key:String, sceneConfig:Dynamic, ?autoStart:Bool, ?data:Dynamic):phaser.Scene;
    /**
     * Removes a Scene from the SceneManager.
     *
     * The Scene is removed from the local scenes array, it's key is cleared from the keys
     * cache and Scene.Systems.destroy is then called on it.
     *
     * If the SceneManager is processing the Scenes when this method is called it will
     * queue the operation for the next update sequence.
     *
     * @method Phaser.Scenes.SceneManager#remove
     * @since 3.2.0
     *
     * @param {string} key - A unique key used to reference the Scene, i.e. `MainMenu` or `Level1`.
     *
     * @return {this} This Scene Manager instance.
     */
    public function remove(key:String):Dynamic;
    /**
     * Updates the Scenes.
     *
     * @method Phaser.Scenes.SceneManager#update
     * @since 3.0.0
     *
     * @param {number} time - Time elapsed.
     * @param {number} delta - Delta time from the last update.
     */
    public function update(time:Float, delta:Float):Void;
    /**
     * Renders the Scenes.
     *
     * @method Phaser.Scenes.SceneManager#render
     * @since 3.0.0
     *
     * @param {(Phaser.Renderer.Canvas.CanvasRenderer|Phaser.Renderer.WebGL.WebGLRenderer)} renderer - The renderer to use.
     */
    public function render(renderer:Dynamic):Void;
    /**
     * Returns an array of all the current Scenes being managed by this Scene Manager.
     *
     * You can filter the output by the active state of the Scene and choose to have
     * the array returned in normal or reversed order.
     *
     * @method Phaser.Scenes.SceneManager#getScenes
     * @since 3.16.0
     *
     * @param {boolean} [isActive=true] - Only include Scene's that are currently active?
     * @param {boolean} [inReverse=false] - Return the array of Scenes in reverse?
     *
     * @return {Phaser.Scene[]} An array containing all of the Scenes in the Scene Manager.
     */
    public function getScenes(?isActive:Bool, ?inReverse:Bool):Array<phaser.Scene>;
    /**
     * Retrieves a Scene.
     *
     * @method Phaser.Scenes.SceneManager#getScene
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to retrieve.
     *
     * @return {?Phaser.Scene} The Scene.
     */
    public function getScene(key:Dynamic):phaser.Scene;
    /**
     * Determines whether a Scene is running.
     *
     * @method Phaser.Scenes.SceneManager#isActive
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to check.
     *
     * @return {boolean} Whether the Scene is running, or `null` if no matching Scene was found.
     */
    public function isActive(key:Dynamic):Bool;
    /**
     * Determines whether a Scene is paused.
     *
     * @method Phaser.Scenes.SceneManager#isPaused
     * @since 3.17.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to check.
     *
     * @return {boolean} Whether the Scene is paused, or `null` if no matching Scene was found.
     */
    public function isPaused(key:Dynamic):Bool;
    /**
     * Determines whether a Scene is visible.
     *
     * @method Phaser.Scenes.SceneManager#isVisible
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to check.
     *
     * @return {boolean} Whether the Scene is visible, or `null` if no matching Scene was found.
     */
    public function isVisible(key:Dynamic):Bool;
    /**
     * Determines whether a Scene is sleeping.
     *
     * @method Phaser.Scenes.SceneManager#isSleeping
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to check.
     *
     * @return {boolean} Whether the Scene is sleeping, or `null` if no matching Scene was found.
     */
    public function isSleeping(key:Dynamic):Bool;
    /**
     * Pauses the given Scene.
     *
     * @method Phaser.Scenes.SceneManager#pause
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to pause.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted by its pause event.
     *
     * @return {this} This Scene Manager instance.
     */
    public function pause(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Resumes the given Scene.
     *
     * @method Phaser.Scenes.SceneManager#resume
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to resume.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted by its resume event.
     *
     * @return {this} This Scene Manager instance.
     */
    public function resume(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Puts the given Scene to sleep.
     *
     * @method Phaser.Scenes.SceneManager#sleep
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to put to sleep.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted by its sleep event.
     *
     * @return {this} This Scene Manager instance.
     */
    public function sleep(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Awakens the given Scene.
     *
     * @method Phaser.Scenes.SceneManager#wake
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to wake up.
     * @param {object} [data] - An optional data object that will be passed to the Scene and emitted by its wake event.
     *
     * @return {this} This Scene Manager instance.
     */
    public function wake(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Runs the given Scene.
     *
     * If the given Scene is paused, it will resume it. If sleeping, it will wake it.
     * If not running at all, it will be started.
     *
     * Use this if you wish to open a modal Scene by calling `pause` on the current
     * Scene, then `run` on the modal Scene.
     *
     * @method Phaser.Scenes.SceneManager#run
     * @since 3.10.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to run.
     * @param {object} [data] - A data object that will be passed to the Scene on start, wake, or resume.
     *
     * @return {this} This Scene Manager instance.
     */
    public function run(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Starts the given Scene.
     *
     * @method Phaser.Scenes.SceneManager#start
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to start.
     * @param {object} [data] - Optional data object to pass to `Scene.Settings` and `Scene.init`, and `Scene.create`.
     *
     * @return {this} This Scene Manager instance.
     */
    public function start(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Stops the given Scene.
     *
     * @method Phaser.Scenes.SceneManager#stop
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to stop.
     * @param {object} [data] - Optional data object to pass to Scene.shutdown.
     *
     * @return {this} This Scene Manager instance.
     */
    public function stop(key:Dynamic, ?data:Dynamic):Dynamic;
    /**
     * Sleeps one one Scene and starts the other.
     *
     * @method Phaser.Scenes.SceneManager#switch
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} from - The Scene to sleep.
     * @param {(string|Phaser.Scene)} to - The Scene to start.
     *
     * @return {this} This Scene Manager instance.
     */
    @:native('switch') public function switch_(from:Dynamic, to:Dynamic):Dynamic;
    /**
     * Retrieves a Scene by numeric index.
     *
     * @method Phaser.Scenes.SceneManager#getAt
     * @since 3.0.0
     *
     * @param {number} index - The index of the Scene to retrieve.
     *
     * @return {(Phaser.Scene|undefined)} The Scene.
     */
    public function getAt(index:Float):phaser.Scene;
    /**
     * Retrieves the numeric index of a Scene.
     *
     * @method Phaser.Scenes.SceneManager#getIndex
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The key of the Scene.
     *
     * @return {number} The index of the Scene.
     */
    public function getIndex(key:Dynamic):Float;
    /**
     * Brings a Scene to the top of the Scenes list.
     *
     * This means it will render above all other Scenes.
     *
     * @method Phaser.Scenes.SceneManager#bringToTop
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to move.
     *
     * @return {this} This Scene Manager instance.
     */
    public function bringToTop(key:Dynamic):Dynamic;
    /**
     * Sends a Scene to the back of the Scenes list.
     *
     * This means it will render below all other Scenes.
     *
     * @method Phaser.Scenes.SceneManager#sendToBack
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to move.
     *
     * @return {this} This Scene Manager instance.
     */
    public function sendToBack(key:Dynamic):Dynamic;
    /**
     * Moves a Scene down one position in the Scenes list.
     *
     * @method Phaser.Scenes.SceneManager#moveDown
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to move.
     *
     * @return {this} This Scene Manager instance.
     */
    public function moveDown(key:Dynamic):Dynamic;
    /**
     * Moves a Scene up one position in the Scenes list.
     *
     * @method Phaser.Scenes.SceneManager#moveUp
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} key - The Scene to move.
     *
     * @return {this} This Scene Manager instance.
     */
    public function moveUp(key:Dynamic):Dynamic;
    /**
     * Moves a Scene so it is immediately above another Scene in the Scenes list.
     *
     * This means it will render over the top of the other Scene.
     *
     * @method Phaser.Scenes.SceneManager#moveAbove
     * @since 3.2.0
     *
     * @param {(string|Phaser.Scene)} keyA - The Scene that Scene B will be moved above.
     * @param {(string|Phaser.Scene)} keyB - The Scene to be moved.
     *
     * @return {this} This Scene Manager instance.
     */
    public function moveAbove(keyA:Dynamic, keyB:Dynamic):Dynamic;
    /**
     * Moves a Scene so it is immediately below another Scene in the Scenes list.
     *
     * This means it will render behind the other Scene.
     *
     * @method Phaser.Scenes.SceneManager#moveBelow
     * @since 3.2.0
     *
     * @param {(string|Phaser.Scene)} keyA - The Scene that Scene B will be moved above.
     * @param {(string|Phaser.Scene)} keyB - The Scene to be moved.
     *
     * @return {this} This Scene Manager instance.
     */
    public function moveBelow(keyA:Dynamic, keyB:Dynamic):Dynamic;
    /**
     * Swaps the positions of two Scenes in the Scenes list.
     *
     * @method Phaser.Scenes.SceneManager#swapPosition
     * @since 3.0.0
     *
     * @param {(string|Phaser.Scene)} keyA - The first Scene to swap.
     * @param {(string|Phaser.Scene)} keyB - The second Scene to swap.
     *
     * @return {this} This Scene Manager instance.
     */
    public function swapPosition(keyA:Dynamic, keyB:Dynamic):Dynamic;
    /**
     * Dumps debug information about each Scene to the developer console.
     *
     * @method Phaser.Scenes.SceneManager#dump
     * @since 3.2.0
     */
    public function dump():Void;
    /**
     * Destroy this Scene Manager and all of its systems.
     *
     * This process cannot be reversed.
     *
     * This method is called automatically when a Phaser Game instance is destroyed.
     *
     * @method Phaser.Scenes.SceneManager#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
