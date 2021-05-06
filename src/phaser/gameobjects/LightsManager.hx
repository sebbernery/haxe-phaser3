package phaser.gameobjects;

/**
 * @classdesc
 * Manages Lights for a Scene.
 *
 * Affects the rendering of Game Objects using the `Light2D` pipeline.
 *
 * @class LightsManager
 * @memberof Phaser.GameObjects
 * @constructor
 * @since 3.0.0
 */
@:native("Phaser.GameObjects.LightsManager")
extern class LightsManager {
    public function new();
    /**
     * The Lights in the Scene.
     *
     * @name Phaser.GameObjects.LightsManager#lights
     * @type {Phaser.GameObjects.Light[]}
     * @default []
     * @since 3.0.0
     */
    public var lights:Array<phaser.gameobjects.Light>;
    /**
     * The ambient color.
     *
     * @name Phaser.GameObjects.LightsManager#ambientColor
     * @type {Phaser.Display.RGB}
     * @since 3.50.0
     */
    public var ambientColor:phaser.display.RGB;
    /**
     * Whether the Lights Manager is enabled.
     *
     * @name Phaser.GameObjects.LightsManager#active
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * The maximum number of lights that a single Camera and the lights shader can process.
     * Change this via the `maxLights` property in your game config, as it cannot be changed at runtime.
     *
     * @name Phaser.GameObjects.LightsManager#maxLights
     * @type {number}
     * @readonly
     * @since 3.15.0
     */
    public var maxLights:Float;
    /**
     * The number of lights that the LightPipeline processed in the _previous_ frame.
     *
     * @name Phaser.GameObjects.LightsManager#visibleLights
     * @type {number}
     * @readonly
     * @since 3.50.0
     */
    public var visibleLights:Float;
    /**
     * Creates a new Point Light Game Object and adds it to the Scene.
     *
     * Note: This method will only be available if the Point Light Game Object has been built into Phaser.
     *
     * The Point Light Game Object provides a way to add a point light effect into your game,
     * without the expensive shader processing requirements of the traditional Light Game Object.
     *
     * The difference is that the Point Light renders using a custom shader, designed to give the
     * impression of a point light source, of variable radius, intensity and color, in your game.
     * However, unlike the Light Game Object, it does not impact any other Game Objects, or use their
     * normal maps for calcuations. This makes them extremely fast to render compared to Lights
     * and perfect for special effects, such as flickering torches or muzzle flashes.
     *
     * For maximum performance you should batch Point Light Game Objects together. This means
     * ensuring they follow each other consecutively on the display list. Ideally, use a Layer
     * Game Object and then add just Point Lights to it, so that it can batch together the rendering
     * of the lights. You don't _have_ to do this, and if you've only a handful of Point Lights in
     * your game then it's perfectly safe to mix them into the dislay list as normal. However, if
     * you're using a large number of them, please consider how they are mixed into the display list.
     *
     * The renderer will automatically cull Point Lights. Those with a radius that does not intersect
     * with the Camera will be skipped in the rendering list. This happens automatically and the
     * culled state is refreshed every frame, for every camera.
     *
     * The origin of a Point Light is always 0.5 and it cannot be changed.
     *
     * Point Lights are a WebGL only feature and do not have a Canvas counterpart.
     *
     * @method Phaser.GameObjects.LightsManager#addPointLight
     * @since 3.50.0
     *
     * @param {number} x - The horizontal position of this Point Light in the world.
     * @param {number} y - The vertical position of this Point Light in the world.
     * @param {number} [color=0xffffff] - The color of the Point Light, given as a hex value.
     * @param {number} [radius=128] - The radius of the Point Light.
     * @param {number} [intensity=1] - The intensity, or colr blend, of the Point Light.
     * @param {number} [attenuation=0.1] - The attenuation  of the Point Light. This is the reduction of light from the center point.
     *
     * @return {Phaser.GameObjects.PointLight} The Game Object that was created.
     */
    public function addPointLight(x:Float, y:Float, ?color:Float, ?radius:Float, ?intensity:Float, ?attenuation:Float):phaser.gameobjects.PointLight;
    /**
     * Enable the Lights Manager.
     *
     * @method Phaser.GameObjects.LightsManager#enable
     * @since 3.0.0
     *
     * @return {this} This Lights Manager instance.
     */
    public function enable():Dynamic;
    /**
     * Disable the Lights Manager.
     *
     * @method Phaser.GameObjects.LightsManager#disable
     * @since 3.0.0
     *
     * @return {this} This Lights Manager instance.
     */
    public function disable():Dynamic;
    /**
     * Get all lights that can be seen by the given Camera.
     *
     * It will automatically cull lights that are outside the world view of the Camera.
     *
     * If more lights are returned than supported by the pipeline, the lights are then culled
     * based on the distance from the center of the camera. Only those closest are rendered.
     *
     * @method Phaser.GameObjects.LightsManager#getLights
     * @since 3.50.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The Camera to cull Lights for.
     *
     * @return {Phaser.GameObjects.Light[]} The culled Lights.
     */
    public function getLights(camera:phaser.cameras.scene2d.Camera):Array<phaser.gameobjects.Light>;
    /**
     * Set the ambient light color.
     *
     * @method Phaser.GameObjects.LightsManager#setAmbientColor
     * @since 3.0.0
     *
     * @param {number} rgb - The integer RGB color of the ambient light.
     *
     * @return {this} This Lights Manager instance.
     */
    public function setAmbientColor(rgb:Float):Dynamic;
    /**
     * Returns the maximum number of Lights allowed to appear at once.
     *
     * @method Phaser.GameObjects.LightsManager#getMaxVisibleLights
     * @since 3.0.0
     *
     * @return {number} The maximum number of Lights allowed to appear at once.
     */
    public function getMaxVisibleLights():Float;
    /**
     * Get the number of Lights managed by this Lights Manager.
     *
     * @method Phaser.GameObjects.LightsManager#getLightCount
     * @since 3.0.0
     *
     * @return {number} The number of Lights managed by this Lights Manager.
     */
    public function getLightCount():Float;
    /**
     * Add a Light.
     *
     * @method Phaser.GameObjects.LightsManager#addLight
     * @since 3.0.0
     *
     * @param {number} [x=0] - The horizontal position of the Light.
     * @param {number} [y=0] - The vertical position of the Light.
     * @param {number} [radius=128] - The radius of the Light.
     * @param {number} [rgb=0xffffff] - The integer RGB color of the light.
     * @param {number} [intensity=1] - The intensity of the Light.
     *
     * @return {Phaser.GameObjects.Light} The Light that was added.
     */
    public function addLight(?x:Float, ?y:Float, ?radius:Float, ?rgb:Float, ?intensity:Float):phaser.gameobjects.Light;
    /**
     * Remove a Light.
     *
     * @method Phaser.GameObjects.LightsManager#removeLight
     * @since 3.0.0
     *
     * @param {Phaser.GameObjects.Light} light - The Light to remove.
     *
     * @return {this} This Lights Manager instance.
     */
    public function removeLight(light:phaser.gameobjects.Light):Dynamic;
    /**
     * Shut down the Lights Manager.
     *
     * Recycles all active Lights into the Light pool, resets ambient light color and clears the lists of Lights and
     * culled Lights.
     *
     * @method Phaser.GameObjects.LightsManager#shutdown
     * @since 3.0.0
     */
    public function shutdown():Void;
    /**
     * Destroy the Lights Manager.
     *
     * Cleans up all references by calling {@link Phaser.GameObjects.LightsManager#shutdown}.
     *
     * @method Phaser.GameObjects.LightsManager#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
