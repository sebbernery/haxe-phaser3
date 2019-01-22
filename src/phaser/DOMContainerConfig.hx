package phaser;

/**
 * @typedef {object} DOMContainerConfig
 *
 * @property {boolean} [createContainer=false] - Create a div element in which DOM Elements will be contained. You must also provide a parent.
 * @property {boolean} [behindCanvas=false] - Place the DOM Container behind the Phaser Canvas. The default is to place it over the Canvas.
 */
typedef DOMContainerConfig = {
    @:optional var createContainer:Bool;
    @:optional var behindCanvas:Bool;
};
