package phaser.gameobjects;

/**
 * @classdesc
 * A Video Game Object.
 *
 * This Game Object is capable of handling playback of a previously loaded video from the Phaser Video Cache,
 * or playing a video based on a given URL. Videos can be either local, or streamed.
 *
 * ```javascript
 * preload () {
 *   this.load.video('pixar', 'nemo.mp4');
 * }
 *
 * create () {
 *   this.add.video(400, 300, 'pixar');
 * }
 * ```
 *
 * To all intents and purposes, a video is a standard Game Object, just like a Sprite. And as such, you can do
 * all the usual things to it, such as scaling, rotating, cropping, tinting, making interactive, giving a
 * physics body, etc.
 *
 * Transparent videos are also possible via the WebM file format. Providing the video file has was encoded with
 * an alpha channel, and providing the browser supports WebM playback (not all of them do), then it will render
 * in-game with full transparency.
 *
 * ### Autoplaying Videos
 *
 * Videos can only autoplay if the browser has been unlocked with an interaction, or satisfies the MEI settings.
 * The policies that control autoplaying are vast and vary between browser.
 * You can, ahd should, read more about it here: https://developer.mozilla.org/en-US/docs/Web/Media/Autoplay_guide
 *
 * If your video doesn't contain any audio, then set the `noAudio` parameter to `true` when the video is _loaded_,
 * and it will often allow the video to play immediately:
 *
 * ```javascript
 * preload () {
 *   this.load.video('pixar', 'nemo.mp4', 'loadeddata', false, true);
 * }
 * ```
 *
 * The 5th parameter in the load call tells Phaser that the video doesn't contain any audio tracks. Video without
 * audio can autoplay without requiring a user interaction. Video with audio cannot do this unless it satisfies
 * the browsers MEI settings. See the MDN Autoplay Guide for further details.
 *
 * Note that due to a bug in IE11 you cannot play a video texture to a Sprite in WebGL. For IE11 force Canvas mode.
 *
 * More details about video playback and the supported media formats can be found on MDN:
 *
 * https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement
 * https://developer.mozilla.org/en-US/docs/Web/Media/Formats
 *
 * @class Video
 * @extends Phaser.GameObjects.GameObject
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.20.0
 *
 * @extends Phaser.GameObjects.Components.Alpha
 * @extends Phaser.GameObjects.Components.BlendMode
 * @extends Phaser.GameObjects.Components.Depth
 * @extends Phaser.GameObjects.Components.Flip
 * @extends Phaser.GameObjects.Components.GetBounds
 * @extends Phaser.GameObjects.Components.Mask
 * @extends Phaser.GameObjects.Components.Origin
 * @extends Phaser.GameObjects.Components.Pipeline
 * @extends Phaser.GameObjects.Components.ScrollFactor
 * @extends Phaser.GameObjects.Components.Size
 * @extends Phaser.GameObjects.Components.TextureCrop
 * @extends Phaser.GameObjects.Components.Tint
 * @extends Phaser.GameObjects.Components.Transform
 * @extends Phaser.GameObjects.Components.Visible
 *
 * @param {Phaser.Scene} scene - The Scene to which this Game Object belongs. A Game Object can only belong to one Scene at a time.
 * @param {number} x - The horizontal position of this Game Object in the world.
 * @param {number} y - The vertical position of this Game Object in the world.
 * @param {string} [key] - Optional key of the Video this Game Object will play, as stored in the Video Cache.
 */
@:native("Phaser.GameObjects.Video")
extern class Video extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, x:Float, y:Float, ?key:String);
    /**
     * A reference to the HTML Video Element this Video Game Object is playing.
     * Will be `null` until a video is loaded for playback.
     *
     * @name Phaser.GameObjects.Video#video
     * @type {?HTMLVideoElement}
     * @since 3.20.0
     */
    public var video:js.html.VideoElement;
    /**
     * The Phaser Texture this Game Object is using to render the video to.
     * Will be `null` until a video is loaded for playback.
     *
     * @name Phaser.GameObjects.Video#videoTexture
     * @type {?Phaser.Textures.Texture}
     * @since 3.20.0
     */
    public var videoTexture:phaser.textures.Texture;
    /**
     * A reference to the TextureSource belong to the `videoTexture` Texture object.
     * Will be `null` until a video is loaded for playback.
     *
     * @name Phaser.GameObjects.Video#videoTextureSource
     * @type {?Phaser.Textures.TextureSource}
     * @since 3.20.0
     */
    public var videoTextureSource:phaser.textures.TextureSource;
    /**
     * A Phaser CanvasTexture instance that holds the most recent snapshot taken from the video.
     * This will only be set if `snapshot` or `snapshotArea` have been called, and will be `null` until that point.
     *
     * @name Phaser.GameObjects.Video#snapshotTexture
     * @type {?Phaser.Textures.CanvasTexture}
     * @since 3.20.0
     */
    public var snapshotTexture:phaser.textures.CanvasTexture;
    /**
     * An internal flag holding the current state of the video lock, should document interaction be required
     * before playback can begin.
     *
     * @name Phaser.GameObjects.Video#touchLocked
     * @type {boolean}
     * @since 3.20.0
     */
    public var touchLocked:Bool;
    /**
     * Should the video auto play when document interaction is required and happens?
     *
     * @name Phaser.GameObjects.Video#playWhenUnlocked
     * @type {boolean}
     * @since 3.20.0
     */
    public var playWhenUnlocked:Bool;
    /**
     * When starting playback of a video Phaser will monitor its `readyState` using a `setTimeout` call.
     * The `setTimeout` happens once every `Video.retryInterval` ms. It will carry on monitoring the video
     * state in this manner until the `retryLimit` is reached and then abort.
     *
     * @name Phaser.GameObjects.Video#retryLimit
     * @type {integer}
     * @since 3.20.0
     */
    public var retryLimit:Int;
    /**
     * The current retry attempt.
     *
     * @name Phaser.GameObjects.Video#retry
     * @type {integer}
     * @since 3.20.0
     */
    public var retry:Int;
    /**
     * The number of ms between each retry while monitoring the ready state of a downloading video.
     *
     * @name Phaser.GameObjects.Video#retryInterval
     * @type {integer}
     * @since 3.20.0
     */
    public var retryInterval:Int;
    /**
     * An object containing in and out markers for sequence playback.
     *
     * @name Phaser.GameObjects.Video#markers
     * @type {any}
     * @since 3.20.0
     */
    public var markers:Dynamic;
    /**
     * Should the Video element that this Video is using, be removed from the DOM
     * when this Video is destroyed?
     *
     * @name Phaser.GameObjects.Video#removeVideoElementOnDestroy
     * @type {boolean}
     * @since 3.21.0
     */
    public var removeVideoElementOnDestroy:Bool;
    /**
     * Starts this video playing.
     *
     * If the video is already playing, or has been queued to play with `changeSource` then this method just returns.
     *
     * Videos can only autoplay if the browser has been unlocked. This happens if you have interacted with the browser, i.e.
     * by clicking on it or pressing a key, or due to server settings. The policies that control autoplaying are vast and
     * vary between browser. You can read more here: https://developer.mozilla.org/en-US/docs/Web/Media/Autoplay_guide
     *
     * If your video doesn't contain any audio, then set the `noAudio` parameter to `true` when the video is loaded,
     * and it will often allow the video to play immediately:
     *
     * ```javascript
     * preload () {
     *   this.load.video('pixar', 'nemo.mp4', 'loadeddata', false, true);
     * }
     * ```
     *
     * The 5th parameter in the load call tells Phaser that the video doesn't contain any audio tracks. Video without
     * audio can autoplay without requiring a user interaction. Video with audio cannot do this unless it satisfies
     * the browsers MEI settings. See the MDN Autoplay Guide for details.
     *
     * If you need audio in your videos, then you'll have to consider the fact that the video cannot start playing until the
     * user has interacted with the browser, into your game flow.
     *
     * @method Phaser.GameObjects.Video#play
     * @since 3.20.0
     *
     * @param {boolean} [loop=false] - Should the video loop automatically when it reaches the end? Please note that not all browsers support _seamless_ video looping for all encoding formats.
     * @param {integer} [markerIn] - Optional in marker time, in seconds, for playback of a sequence of the video.
     * @param {integer} [markerOut] - Optional out marker time, in seconds, for playback of a sequence of the video.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function play(?loop:Bool, ?markerIn:Int, ?markerOut:Int):Dynamic;
    /**
     * This method allows you to change the source of the current video element. It works by first stopping the
     * current video, if playing. Then deleting the video texture, if one has been created. Finally, it makes a
     * new video texture and starts playback of the new source through the existing video element.
     *
     * The reason you may wish to do this is because videos that require interaction to unlock, remain in an unlocked
     * state, even if you change the source of the video. By changing the source to a new video you avoid having to
     * go through the unlock process again.
     *
     * @method Phaser.GameObjects.Video#changeSource
     * @since 3.20.0
     *
     * @param {string} key - The key of the Video this Game Object will swap to playing, as stored in the Video Cache.
     * @param {boolean} [autoplay=true] - Should the video start playing immediately, once the swap is complete?
     * @param {boolean} [loop=false] - Should the video loop automatically when it reaches the end? Please note that not all browsers support _seamless_ video looping for all encoding formats.
     * @param {integer} [markerIn] - Optional in marker time, in seconds, for playback of a sequence of the video.
     * @param {integer} [markerOut] - Optional out marker time, in seconds, for playback of a sequence of the video.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function changeSource(key:String, ?autoplay:Bool, ?loop:Bool, ?markerIn:Int, ?markerOut:Int):Dynamic;
    /**
     * Adds a sequence marker to this video.
     *
     * Markers allow you to split a video up into sequences, delineated by a start and end time, given in seconds.
     *
     * You can then play back specific markers via the `playMarker` method.
     *
     * Note that marker timing is _not_ frame-perfect. You should construct your videos in such a way that you allow for
     * plenty of extra padding before and after each sequence to allow for discrepancies in browser seek and currentTime accuracy.
     *
     * See https://github.com/w3c/media-and-entertainment/issues/4 for more details about this issue.
     *
     * @method Phaser.GameObjects.Video#addMarker
     * @since 3.20.0
     *
     * @param {string} key - A unique name to give this marker.
     * @param {integer} markerIn - The time, in seconds, representing the start of this marker.
     * @param {integer} markerOut - The time, in seconds, representing the end of this marker.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function addMarker(key:String, markerIn:Int, markerOut:Int):Dynamic;
    /**
     * Plays a pre-defined sequence in this video.
     *
     * Markers allow you to split a video up into sequences, delineated by a start and end time, given in seconds and
     * specified via the `addMarker` method.
     *
     * Note that marker timing is _not_ frame-perfect. You should construct your videos in such a way that you allow for
     * plenty of extra padding before and after each sequence to allow for discrepancies in browser seek and currentTime accuracy.
     *
     * See https://github.com/w3c/media-and-entertainment/issues/4 for more details about this issue.
     *
     * @method Phaser.GameObjects.Video#playMarker
     * @since 3.20.0
     *
     * @param {string} key - The name of the marker sequence to play.
     * @param {boolean} [loop=false] - Should the video loop automatically when it reaches the end? Please note that not all browsers support _seamless_ video looping for all encoding formats.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function playMarker(key:String, ?loop:Bool):Dynamic;
    /**
     * Removes a previously set marker from this video.
     *
     * If the marker is currently playing it will _not_ stop playback.
     *
     * @method Phaser.GameObjects.Video#removeMarker
     * @since 3.20.0
     *
     * @param {string} key - The name of the marker to remove.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function removeMarker(key:String):Dynamic;
    /**
     * Takes a snapshot of the current frame of the video and renders it to a CanvasTexture object,
     * which is then returned. You can optionally resize the grab by passing a width and height.
     *
     * This method returns a reference to the `Video.snapshotTexture` object. Calling this method
     * multiple times will overwrite the previous snapshot with the most recent one.
     *
     * @method Phaser.GameObjects.Video#snapshot
     * @since 3.20.0
     *
     * @param {integer} [width] - The width of the resulting CanvasTexture.
     * @param {integer} [height] - The height of the resulting CanvasTexture.
     *
     * @return {Phaser.Textures.CanvasTexture}
     */
    public function snapshot(?width:Int, ?height:Int):phaser.textures.CanvasTexture;
    /**
     * Takes a snapshot of the specified area of the current frame of the video and renders it to a CanvasTexture object,
     * which is then returned. You can optionally resize the grab by passing a different `destWidth` and `destHeight`.
     *
     * This method returns a reference to the `Video.snapshotTexture` object. Calling this method
     * multiple times will overwrite the previous snapshot with the most recent one.
     *
     * @method Phaser.GameObjects.Video#snapshotArea
     * @since 3.20.0
     *
     * @param {integer} [x=0] - The horizontal location of the top-left of the area to grab from.
     * @param {integer} [y=0] - The vertical location of the top-left of the area to grab from.
     * @param {integer} [srcWidth] - The width of area to grab from the video. If not given it will grab the full video dimensions.
     * @param {integer} [srcHeight] - The height of area to grab from the video. If not given it will grab the full video dimensions.
     * @param {integer} [destWidth] - The destination width of the grab, allowing you to resize it.
     * @param {integer} [destHeight] - The destination height of the grab, allowing you to resize it.
     *
     * @return {Phaser.Textures.CanvasTexture}
     */
    public function snapshotArea(?x:Int, ?y:Int, ?srcWidth:Int, ?srcHeight:Int, ?destWidth:Int, ?destHeight:Int):phaser.textures.CanvasTexture;
    /**
     * Stores a copy of this Videos `snapshotTexture` in the Texture Manager using the given key.
     *
     * This texture is created when the `snapshot` or `snapshotArea` methods are called.
     *
     * After doing this, any texture based Game Object, such as a Sprite, can use the contents of the
     * snapshot by using the texture key:
     *
     * ```javascript
     * var vid = this.add.video(0, 0, 'intro');
     *
     * vid.snapshot();
     *
     * vid.saveSnapshotTexture('doodle');
     *
     * this.add.image(400, 300, 'doodle');
     * ```
     *
     * Updating the contents of the `snapshotTexture`, for example by calling `snapshot` again,
     * will automatically update _any_ Game Object that is using it as a texture.
     * Calling `saveSnapshotTexture` again will not save another copy of the same texture,
     * it will just rename the existing one.
     *
     * By default it will create a single base texture. You can add frames to the texture
     * by using the `Texture.add` method. After doing this, you can then allow Game Objects
     * to use a specific frame.
     *
     * @method Phaser.GameObjects.Video#saveSnapshotTexture
     * @since 3.20.0
     *
     * @param {string} key - The unique key to store the texture as within the global Texture Manager.
     *
     * @return {Phaser.Textures.CanvasTexture} The Texture that was saved.
     */
    public function saveSnapshotTexture(key:String):phaser.textures.CanvasTexture;
    /**
     * Loads a Video from the given URL, ready for playback with the `Video.play` method.
     *
     * You can control at what point the browser determines the video as being ready for playback via
     * the `loadEvent` parameter. See https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement
     * for more details.
     *
     * @method Phaser.GameObjects.Video#loadURL
     * @since 3.20.0
     *
     * @param {string} url - The URL of the video to load or be streamed.
     * @param {string} [loadEvent='loadeddata'] - The load event to listen for. Either `loadeddata`, `canplay` or `canplaythrough`.
     * @param {boolean} [noAudio=false] - Does the video have an audio track? If not you can enable auto-playing on it.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function loadURL(url:String, ?loadEvent:String, ?noAudio:Bool):Dynamic;
    /**
     * Called when the video emits a `playing` event during load.
     *
     * This is only listened for if the browser doesn't support Promises.
     *
     * @method Phaser.GameObjects.Video#playHandler
     * @fires Phaser.GameObjects.Events#VIDEO_PLAY
     * @since 3.20.0
     */
    public function playHandler():Void;
    /**
     * Called when the video completes playback, i.e. reaches an `ended` state.
     *
     * This will never happen if the video is coming from a live stream, where the duration is `Infinity`.
     *
     * @method Phaser.GameObjects.Video#completeHandler
     * @fires Phaser.GameObjects.Events#VIDEO_COMPLETE
     * @since 3.20.0
     */
    public function completeHandler():Void;
    /**
     * Called when the video emits a `timeUpdate` event during playback.
     *
     * This event is too slow and irregular to be used for actual video timing or texture updating,
     * but we can use it to determine if a video has looped.
     *
     * @method Phaser.GameObjects.Video#timeUpdateHandler
     * @fires Phaser.GameObjects.Events#VIDEO_LOOP
     * @since 3.20.0
     */
    public function timeUpdateHandler():Void;
    /**
     * Internal method that is called when enough video data has been received in order to create a texture
     * from it. The texture is assigned to the `Video.videoTexture` property and given a base frame that
     * encompases the whole video size.
     *
     * @method Phaser.GameObjects.Video#updateTexture
     * @since 3.20.0
     */
    public function updateTexture():Void;
    /**
     * Returns the key of the currently played video, as stored in the Video Cache.
     * If the video did not come from the cache this will return an empty string.
     *
     * @method Phaser.GameObjects.Video#getVideoKey
     * @since 3.20.0
     *
     * @return {string} The key of the video being played from the Video Cache, if any.
     */
    public function getVideoKey():String;
    /**
     * Seeks to a given point in the video. The value is given as a float between 0 and 1,
     * where 0 represents the start of the video and 1 represents the end.
     *
     * Seeking only works if the video has a duration, so will not work for live streams.
     *
     * When seeking begins, this video will emit a `seeking` event. When the video completes
     * seeking (i.e. reaches its designated timestamp) it will emit a `seeked` event.
     *
     * If you wish to seek based on time instead, use the `Video.setCurrentTime` method.
     *
     * @method Phaser.GameObjects.Video#seekTo
     * @since 3.20.0
     *
     * @param {number} value - The point in the video to seek to. A value between 0 and 1.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function seekTo(value:Float):Dynamic;
    /**
     * A double-precision floating-point value indicating the current playback time in seconds.
     * If the media has not started to play and has not been seeked, this value is the media's initial playback time.
     *
     * @method Phaser.GameObjects.Video#getCurrentTime
     * @since 3.20.0
     *
     * @return {number} A double-precision floating-point value indicating the current playback time in seconds.
     */
    public function getCurrentTime():Float;
    /**
     * Seeks to a given playback time in the video. The value is given in _seconds_ or as a string.
     *
     * Seeking only works if the video has a duration, so will not work for live streams.
     *
     * When seeking begins, this video will emit a `seeking` event. When the video completes
     * seeking (i.e. reaches its designated timestamp) it will emit a `seeked` event.
     *
     * You can provide a string prefixed with either a `+` or a `-`, such as `+2.5` or `-2.5`.
     * In this case it will seek to +/- the value given, relative to the _current time_.
     *
     * If you wish to seek based on a duration percentage instead, use the `Video.seekTo` method.
     *
     * @method Phaser.GameObjects.Video#setCurrentTime
     * @since 3.20.0
     *
     * @param {(string|number)} value - The playback time to seek to in seconds. Can be expressed as a string, such as `+2` to seek 2 seconds ahead from the current time.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function setCurrentTime(value:Dynamic):Dynamic;
    /**
     * Returns a boolean indicating if this Video is currently seeking, or not.
     *
     * @method Phaser.GameObjects.Video#isSeeking
     * @since 3.20.0
     *
     * @return {boolean} A boolean indicating if this Video is currently seeking, or not.
     */
    public function isSeeking():Bool;
    /**
     * Returns the current progress of the video. Progress is defined as a value between 0 (the start)
     * and 1 (the end).
     *
     * Progress can only be returned if the video has a duration, otherwise it will always return zero.
     *
     * @method Phaser.GameObjects.Video#getProgress
     * @since 3.20.0
     *
     * @return {number} The current progress of playback. If the video has no duration, will always return zero.
     */
    public function getProgress():Float;
    /**
     * A double-precision floating-point value which indicates the duration (total length) of the media in seconds,
     * on the media's timeline. If no media is present on the element, or the media is not valid, the returned value is NaN.
     *
     * If the media has no known end (such as for live streams of unknown duration, web radio, media incoming from WebRTC,
     * and so forth), this value is +Infinity.
     *
     * @method Phaser.GameObjects.Video#getDuration
     * @since 3.20.0
     *
     * @return {number} A double-precision floating-point value indicating the duration of the media in seconds.
     */
    public function getDuration():Float;
    /**
     * Sets the muted state of the currently playing video, if one is loaded.
     *
     * @method Phaser.GameObjects.Video#setMute
     * @since 3.20.0
     *
     * @param {boolean} [value=true] - The mute value. `true` if the video should be muted, otherwise `false`.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function setMute(?value:Bool):Dynamic;
    /**
     * Returns a boolean indicating if this Video is currently muted.
     *
     * @method Phaser.GameObjects.Video#isMuted
     * @since 3.20.0
     *
     * @return {boolean} A boolean indicating if this Video is currently muted, or not.
     */
    public function isMuted():Bool;
    /**
     * Sets the paused state of the currently loaded video.
     *
     * If the video is playing, calling this method with `true` will pause playback.
     * If the video is paused, calling this method with `false` will resume playback.
     *
     * If no video is loaded, this method does nothing.
     *
     * @method Phaser.GameObjects.Video#setPaused
     * @since 3.20.0
     *
     * @param {boolean} [value=true] - The paused value. `true` if the video should be paused, `false` to resume it.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function setPaused(?value:Bool):Dynamic;
    /**
     * Returns a double indicating the audio volume, from 0.0 (silent) to 1.0 (loudest).
     *
     * @method Phaser.GameObjects.Video#getVolume
     * @since 3.20.0
     *
     * @return {number} A double indicating the audio volume, from 0.0 (silent) to 1.0 (loudest).
     */
    public function getVolume():Float;
    /**
     * Sets the volume of the currently playing video.
     *
     * The value given is a double indicating the audio volume, from 0.0 (silent) to 1.0 (loudest).
     *
     * @method Phaser.GameObjects.Video#setVolume
     * @since 3.20.0
     *
     * @param {number} [value=1] - A double indicating the audio volume, from 0.0 (silent) to 1.0 (loudest).
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function setVolume(?value:Float):Dynamic;
    /**
     * Returns a double that indicates the rate at which the media is being played back.
     *
     * @method Phaser.GameObjects.Video#getPlaybackRate
     * @since 3.20.0
     *
     * @return {number} A double that indicates the rate at which the media is being played back.
     */
    public function getPlaybackRate():Float;
    /**
     * Sets the playback rate of the current video.
     *
     * The value given is a double that indicates the rate at which the media is being played back.
     *
     * @method Phaser.GameObjects.Video#setPlaybackRate
     * @since 3.20.0
     *
     * @param {number} [rate] - A double that indicates the rate at which the media is being played back.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function setPlaybackRate(?rate:Float):Dynamic;
    /**
     * Returns a boolean which indicates whether the media element should start over when it reaches the end.
     *
     * @method Phaser.GameObjects.Video#getLoop
     * @since 3.20.0
     *
     * @return {boolean} A boolean which indicates whether the media element will start over when it reaches the end.
     */
    public function getLoop():Bool;
    /**
     * Sets the loop state of the current video.
     *
     * The value given is a boolean which indicates whether the media element will start over when it reaches the end.
     *
     * Not all videos can loop, for example live streams.
     *
     * Please note that not all browsers support _seamless_ video looping for all encoding formats.
     *
     * @method Phaser.GameObjects.Video#setLoop
     * @since 3.20.0
     *
     * @param {boolean} [value=true] - A boolean which indicates whether the media element will start over when it reaches the end.
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function setLoop(?value:Bool):Dynamic;
    /**
     * Returns a boolean which indicates whether the video is currently playing.
     *
     * @method Phaser.GameObjects.Video#isPlaying
     * @since 3.20.0
     *
     * @return {boolean} A boolean which indicates whether the video is playing, or not.
     */
    public function isPlaying():Bool;
    /**
     * Returns a boolean which indicates whether the video is currently paused.
     *
     * @method Phaser.GameObjects.Video#isPaused
     * @since 3.20.0
     *
     * @return {boolean} A boolean which indicates whether the video is paused, or not.
     */
    public function isPaused():Bool;
    /**
     * Stores this Video in the Texture Manager using the given key as a dynamic texture,
     * which any texture-based Game Object, such as a Sprite, can use as its texture:
     *
     * ```javascript
     * var vid = this.add.video(0, 0, 'intro');
     *
     * vid.play();
     *
     * vid.saveTexture('doodle');
     *
     * this.add.image(400, 300, 'doodle');
     * ```
     *
     * The saved texture is automatically updated as the video plays. If you pause this video,
     * or change its source, then the saved texture updates instantly.
     *
     * Calling `saveTexture` again will not save another copy of the same texture, it will just rename the existing one.
     *
     * By default it will create a single base texture. You can add frames to the texture
     * by using the `Texture.add` method. After doing this, you can then allow Game Objects
     * to use a specific frame.
     *
     * If you intend to save the texture so you can use it as the input for a Shader, you may need to set the
     * `flipY` parameter to `true` if you find the video renders upside down in your shader.
     *
     * @method Phaser.GameObjects.Video#saveTexture
     * @since 3.20.0
     *
     * @param {string} key - The unique key to store the texture as within the global Texture Manager.
     * @param {boolean} [flipY=false] - Should the WebGL Texture set `UNPACK_MULTIPLY_FLIP_Y` during upload?
     *
     * @return {Phaser.Textures.Texture} The Texture that was saved.
     */
    public function saveTexture(key:String, ?flipY:Bool):phaser.textures.Texture;
    /**
     * Stops the video playing and clears all internal event listeners.
     *
     * If you only wish to pause playback of the video, and resume it a later time, use the `Video.pause` method instead.
     *
     * If the video hasn't finished downloading, calling this method will not abort the download. To do that you need to
     * call `destroy` instead.
     *
     * @method Phaser.GameObjects.Video#stop
     * @fires Phaser.GameObjects.Events#VIDEO_STOP
     * @since 3.20.0
     *
     * @return {this} This Video Game Object for method chaining.
     */
    public function stop():Dynamic;
    /**
     * Removes the Video element from the DOM by calling parentNode.removeChild on itself.
     *
     * Also removes the autoplay and src attributes and nulls the Video reference.
     *
     * You should not call this method if you were playing a video from the Video Cache that
     * you wish to play again in your game, or if another Video object is also using the same
     * video.
     *
     * If you loaded an external video via `Video.loadURL` then you should call this function
     * to clear up once you are done with the instance.
     *
     * @method Phaser.GameObjects.Video#removeVideoElement
     * @since 3.20.0
     */
    public function removeVideoElement():Void;
    /**
     * The alpha value of the Game Object.
     *
     * This is a global value, impacting the entire Game Object, not just a region of it.
     *
     * @name Phaser.GameObjects.Components.Alpha#alpha
     * @type {number}
     * @since 3.0.0
     */
    public var alpha:Float;
    /**
     * The alpha value starting from the top-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaTopLeft
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaTopLeft:Float;
    /**
     * The alpha value starting from the top-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaTopRight
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaTopRight:Float;
    /**
     * The alpha value starting from the bottom-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaBottomLeft
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaBottomLeft:Float;
    /**
     * The alpha value starting from the bottom-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Alpha#alphaBottomRight
     * @type {number}
     * @webglOnly
     * @since 3.0.0
     */
    public var alphaBottomRight:Float;
    /**
     * Clears all alpha values associated with this Game Object.
     *
     * Immediately sets the alpha levels back to 1 (fully opaque).
     *
     * @method Phaser.GameObjects.Components.Alpha#clearAlpha
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearAlpha():Dynamic;
    /**
     * Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
     * Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
     *
     * If your game is running under WebGL you can optionally specify four different alpha values, each of which
     * correspond to the four corners of the Game Object. Under Canvas only the `topLeft` value given is used.
     *
     * @method Phaser.GameObjects.Components.Alpha#setAlpha
     * @since 3.0.0
     *
     * @param {number} [topLeft=1] - The alpha value used for the top-left of the Game Object. If this is the only value given it's applied across the whole Game Object.
     * @param {number} [topRight] - The alpha value used for the top-right of the Game Object. WebGL only.
     * @param {number} [bottomLeft] - The alpha value used for the bottom-left of the Game Object. WebGL only.
     * @param {number} [bottomRight] - The alpha value used for the bottom-right of the Game Object. WebGL only.
     *
     * @return {this} This Game Object instance.
     */
    public function setAlpha(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
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
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
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
     * The depth starts from zero (the default value) and increases from that point. A Game Object with a higher depth
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
     * The horizontally flipped state of the Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @name Phaser.GameObjects.Components.Flip#flipX
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var flipX:Bool;
    /**
     * The vertically flipped state of the Game Object.
     *
     * A Game Object that is flipped vertically will render inversed on the vertical axis (i.e. upside down)
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @name Phaser.GameObjects.Components.Flip#flipY
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var flipY:Bool;
    /**
     * Toggles the horizontal flipped state of this Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#toggleFlipX
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function toggleFlipX():Dynamic;
    /**
     * Toggles the vertical flipped state of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Flip#toggleFlipY
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function toggleFlipY():Dynamic;
    /**
     * Sets the horizontal flipped state of this Game Object.
     *
     * A Game Object that is flipped horizontally will render inversed on the horizontal axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlipX
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlipX(value:Bool):Dynamic;
    /**
     * Sets the vertical flipped state of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlipY
     * @since 3.0.0
     *
     * @param {boolean} value - The flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlipY(value:Bool):Dynamic;
    /**
     * Sets the horizontal and vertical flipped state of this Game Object.
     *
     * A Game Object that is flipped will render inversed on the flipped axis.
     * Flipping always takes place from the middle of the texture and does not impact the scale value.
     * If this Game Object has a physics body, it will not change the body. This is a rendering toggle only.
     *
     * @method Phaser.GameObjects.Components.Flip#setFlip
     * @since 3.0.0
     *
     * @param {boolean} x - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     * @param {boolean} y - The horizontal flipped state. `false` for no flip, or `true` to be flipped.
     *
     * @return {this} This Game Object instance.
     */
    public function setFlip(x:Bool, y:Bool):Dynamic;
    /**
     * Resets the horizontal and vertical flipped state of this Game Object back to their default un-flipped state.
     *
     * @method Phaser.GameObjects.Components.Flip#resetFlip
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function resetFlip():Dynamic;
    /**
     * Gets the center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getCenter
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getCenter(?output:Dynamic):phaser.math.Vector2;
    /**
     * Gets the top-left corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopLeft
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the top-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the top-right corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getTopRight
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getTopRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the left-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getLeftCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getLeftCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the right-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getRightCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getRightCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-left corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomLeft
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-center coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomCenter
     * @since 3.18.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomCenter(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bottom-right corner coordinate of this Game Object, regardless of origin.
     * The returned point is calculated in local space and does not factor in any parent containers
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBottomRight
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [output,$return]
     *
     * @param {(Phaser.Math.Vector2|object)} [output] - An object to store the values in. If not provided a new Vector2 will be created.
     * @param {boolean} [includeParent=false] - If this Game Object has a parent Container, include it (and all other ancestors) in the resulting vector?
     *
     * @return {(Phaser.Math.Vector2|object)} The values stored in the output object.
     */
    public function getBottomRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    /**
     * Gets the bounds of this Game Object, regardless of origin.
     * The values are stored and returned in a Rectangle, or Rectangle-like, object.
     *
     * @method Phaser.GameObjects.Components.GetBounds#getBounds
     * @since 3.0.0
     *
     * @generic {Phaser.Geom.Rectangle} O - [output,$return]
     *
     * @param {(Phaser.Geom.Rectangle|object)} [output] - An object to store the values in. If not provided a new Rectangle will be created.
     *
     * @return {(Phaser.Geom.Rectangle|object)} The values stored in the output object.
     */
    public function getBounds(?output:Dynamic):phaser.geom.Rectangle;
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
     * The initial WebGL pipeline of this Game Object.
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
     * Sets the initial WebGL Pipeline of this Game Object.
     * This should only be called during the instantiation of the Game Object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#initPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {string} [pipelineName=TextureTintPipeline] - The name of the pipeline to set on this Game Object. Defaults to the Texture Tint Pipeline.
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function initPipeline(?pipelineName:String):Bool;
    /**
     * Sets the active WebGL Pipeline of this Game Object.
     *
     * @method Phaser.GameObjects.Components.Pipeline#setPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @param {string} pipelineName - The name of the pipeline to set on this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setPipeline(pipelineName:String):Dynamic;
    /**
     * Resets the WebGL Pipeline of this Game Object back to the default it was created with.
     *
     * @method Phaser.GameObjects.Components.Pipeline#resetPipeline
     * @webglOnly
     * @since 3.0.0
     *
     * @return {boolean} `true` if the pipeline was set successfully, otherwise `false`.
     */
    public function resetPipeline():Bool;
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
     * The native (un-scaled) width of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayWidth` property.
     *
     * @name Phaser.GameObjects.Components.Size#width
     * @type {number}
     * @since 3.0.0
     */
    public var width:Float;
    /**
     * The native (un-scaled) height of this Game Object.
     *
     * Changing this value will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or use
     * the `displayHeight` property.
     *
     * @name Phaser.GameObjects.Components.Size#height
     * @type {number}
     * @since 3.0.0
     */
    public var height:Float;
    /**
     * The displayed width of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.Size#displayWidth
     * @type {number}
     * @since 3.0.0
     */
    public var displayWidth:Float;
    /**
     * The displayed height of this Game Object.
     *
     * This value takes into account the scale factor.
     *
     * Setting this value will adjust the Game Object's scale property.
     *
     * @name Phaser.GameObjects.Components.Size#displayHeight
     * @type {number}
     * @since 3.0.0
     */
    public var displayHeight:Float;
    /**
     * Sets the size of this Game Object to be that of the given Frame.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.Size#setSizeToFrame
     * @since 3.0.0
     *
     * @param {Phaser.Textures.Frame} frame - The frame to base the size of this Game Object on.
     *
     * @return {this} This Game Object instance.
     */
    public function setSizeToFrame(frame:phaser.textures.Frame):Dynamic;
    /**
     * Sets the internal size of this Game Object, as used for frame or physics body creation.
     *
     * This will not change the size that the Game Object is rendered in-game.
     * For that you need to either set the scale of the Game Object (`setScale`) or call the
     * `setDisplaySize` method, which is the same thing as changing the scale but allows you
     * to do so by giving pixel values.
     *
     * If you have enabled this Game Object for input, changing the size will _not_ change the
     * size of the hit area. To do this you should adjust the `input.hitArea` object directly.
     *
     * @method Phaser.GameObjects.Components.Size#setSize
     * @since 3.0.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setSize(width:Float, height:Float):Dynamic;
    /**
     * Sets the display size of this Game Object.
     *
     * Calling this will adjust the scale.
     *
     * @method Phaser.GameObjects.Components.Size#setDisplaySize
     * @since 3.0.0
     *
     * @param {number} width - The width of this Game Object.
     * @param {number} height - The height of this Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setDisplaySize(width:Float, height:Float):Dynamic;
    /**
     * The Texture this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.TextureCrop#texture
     * @type {Phaser.Textures.Texture|Phaser.Textures.CanvasTexture}
     * @since 3.0.0
     */
    public var texture:Dynamic;
    /**
     * The Texture Frame this Game Object is using to render with.
     *
     * @name Phaser.GameObjects.Components.TextureCrop#frame
     * @type {Phaser.Textures.Frame}
     * @since 3.0.0
     */
    public var frame:phaser.textures.Frame;
    /**
     * A boolean flag indicating if this Game Object is being cropped or not.
     * You can toggle this at any time after `setCrop` has been called, to turn cropping on or off.
     * Equally, calling `setCrop` with no arguments will reset the crop and disable it.
     *
     * @name Phaser.GameObjects.Components.TextureCrop#isCropped
     * @type {boolean}
     * @since 3.11.0
     */
    public var isCropped:Bool;
    /**
     * Applies a crop to a texture based Game Object, such as a Sprite or Image.
     *
     * The crop is a rectangle that limits the area of the texture frame that is visible during rendering.
     *
     * Cropping a Game Object does not change its size, dimensions, physics body or hit area, it just
     * changes what is shown when rendered.
     *
     * The crop coordinates are relative to the texture frame, not the Game Object, meaning 0 x 0 is the top-left.
     *
     * Therefore, if you had a Game Object that had an 800x600 sized texture, and you wanted to show only the left
     * half of it, you could call `setCrop(0, 0, 400, 600)`.
     *
     * It is also scaled to match the Game Object scale automatically. Therefore a crop rect of 100x50 would crop
     * an area of 200x100 when applied to a Game Object that had a scale factor of 2.
     *
     * You can either pass in numeric values directly, or you can provide a single Rectangle object as the first argument.
     *
     * Call this method with no arguments at all to reset the crop, or toggle the property `isCropped` to `false`.
     *
     * You should do this if the crop rectangle becomes the same size as the frame itself, as it will allow
     * the renderer to skip several internal calculations.
     *
     * @method Phaser.GameObjects.Components.TextureCrop#setCrop
     * @since 3.11.0
     *
     * @param {(number|Phaser.Geom.Rectangle)} [x] - The x coordinate to start the crop from. Or a Phaser.Geom.Rectangle object, in which case the rest of the arguments are ignored.
     * @param {number} [y] - The y coordinate to start the crop from.
     * @param {number} [width] - The width of the crop rectangle in pixels.
     * @param {number} [height] - The height of the crop rectangle in pixels.
     *
     * @return {this} This Game Object instance.
     */
    public function setCrop(?x:Dynamic, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    /**
     * Sets the texture and frame this Game Object will use to render with.
     *
     * Textures are referenced by their string-based keys, as stored in the Texture Manager.
     *
     * @method Phaser.GameObjects.Components.TextureCrop#setTexture
     * @since 3.0.0
     *
     * @param {string} key - The key of the texture to be used, as stored in the Texture Manager.
     * @param {(string|integer)} [frame] - The name or index of the frame within the Texture.
     *
     * @return {this} This Game Object instance.
     */
    public function setTexture(key:String, ?frame:Dynamic):Dynamic;
    /**
     * Sets the frame this Game Object will use to render with.
     *
     * The Frame has to belong to the current Texture being used.
     *
     * It can be either a string or an index.
     *
     * Calling `setFrame` will modify the `width` and `height` properties of your Game Object.
     * It will also change the `origin` if the Frame has a custom pivot point, as exported from packages like Texture Packer.
     *
     * @method Phaser.GameObjects.Components.TextureCrop#setFrame
     * @since 3.0.0
     *
     * @param {(string|integer)} frame - The name or index of the frame within the Texture.
     * @param {boolean} [updateSize=true] - Should this call adjust the size of the Game Object?
     * @param {boolean} [updateOrigin=true] - Should this call adjust the origin of the Game Object?
     *
     * @return {this} This Game Object instance.
     */
    public function setFrame(frame:Dynamic, ?updateSize:Bool, ?updateOrigin:Bool):Dynamic;
    /**
     * Fill or additive?
     *
     * @name Phaser.GameObjects.Components.Tint#tintFill
     * @type {boolean}
     * @default false
     * @since 3.11.0
     */
    public var tintFill:Bool;
    /**
     * The tint value being applied to the top-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintTopLeft
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintTopLeft:Int;
    /**
     * The tint value being applied to the top-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintTopRight
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintTopRight:Int;
    /**
     * The tint value being applied to the bottom-left of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintBottomLeft
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintBottomLeft:Int;
    /**
     * The tint value being applied to the bottom-right of the Game Object.
     * This value is interpolated from the corner to the center of the Game Object.
     *
     * @name Phaser.GameObjects.Components.Tint#tintBottomRight
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tintBottomRight:Int;
    /**
     * The tint value being applied to the whole of the Game Object.
     * This property is a setter-only. Use the properties `tintTopLeft` etc to read the current tint value.
     *
     * @name Phaser.GameObjects.Components.Tint#tint
     * @type {integer}
     * @webglOnly
     * @since 3.0.0
     */
    public var tint:Int;
    /**
     * Does this Game Object have a tint applied to it or not?
     *
     * @name Phaser.GameObjects.Components.Tint#isTinted
     * @type {boolean}
     * @webglOnly
     * @readonly
     * @since 3.11.0
     */
    public var isTinted:Bool;
    /**
     * Clears all tint values associated with this Game Object.
     *
     * Immediately sets the color values back to 0xffffff and the tint type to 'additive',
     * which results in no visible change to the texture.
     *
     * @method Phaser.GameObjects.Components.Tint#clearTint
     * @webglOnly
     * @since 3.0.0
     *
     * @return {this} This Game Object instance.
     */
    public function clearTint():Dynamic;
    /**
     * Sets an additive tint on this Game Object.
     *
     * The tint works by taking the pixel color values from the Game Objects texture, and then
     * multiplying it by the color value of the tint. You can provide either one color value,
     * in which case the whole Game Object will be tinted in that color. Or you can provide a color
     * per corner. The colors are blended together across the extent of the Game Object.
     *
     * To modify the tint color once set, either call this method again with new values or use the
     * `tint` property to set all colors at once. Or, use the properties `tintTopLeft`, `tintTopRight,
     * `tintBottomLeft` and `tintBottomRight` to set the corner color values independently.
     *
     * To remove a tint call `clearTint`.
     *
     * To swap this from being an additive tint to a fill based tint set the property `tintFill` to `true`.
     *
     * @method Phaser.GameObjects.Components.Tint#setTint
     * @webglOnly
     * @since 3.0.0
     *
     * @param {integer} [topLeft=0xffffff] - The tint being applied to the top-left of the Game Object. If no other values are given this value is applied evenly, tinting the whole Game Object.
     * @param {integer} [topRight] - The tint being applied to the top-right of the Game Object.
     * @param {integer} [bottomLeft] - The tint being applied to the bottom-left of the Game Object.
     * @param {integer} [bottomRight] - The tint being applied to the bottom-right of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setTint(?topLeft:Int, ?topRight:Int, ?bottomLeft:Int, ?bottomRight:Int):Dynamic;
    /**
     * Sets a fill-based tint on this Game Object.
     *
     * Unlike an additive tint, a fill-tint literally replaces the pixel colors from the texture
     * with those in the tint. You can use this for effects such as making a player flash 'white'
     * if hit by something. You can provide either one color value, in which case the whole
     * Game Object will be rendered in that color. Or you can provide a color per corner. The colors
     * are blended together across the extent of the Game Object.
     *
     * To modify the tint color once set, either call this method again with new values or use the
     * `tint` property to set all colors at once. Or, use the properties `tintTopLeft`, `tintTopRight,
     * `tintBottomLeft` and `tintBottomRight` to set the corner color values independently.
     *
     * To remove a tint call `clearTint`.
     *
     * To swap this from being a fill-tint to an additive tint set the property `tintFill` to `false`.
     *
     * @method Phaser.GameObjects.Components.Tint#setTintFill
     * @webglOnly
     * @since 3.11.0
     *
     * @param {integer} [topLeft=0xffffff] - The tint being applied to the top-left of the Game Object. If not other values are given this value is applied evenly, tinting the whole Game Object.
     * @param {integer} [topRight] - The tint being applied to the top-right of the Game Object.
     * @param {integer} [bottomLeft] - The tint being applied to the bottom-left of the Game Object.
     * @param {integer} [bottomRight] - The tint being applied to the bottom-right of the Game Object.
     *
     * @return {this} This Game Object instance.
     */
    public function setTintFill(?topLeft:Int, ?topRight:Int, ?bottomLeft:Int, ?bottomRight:Int):Dynamic;
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
