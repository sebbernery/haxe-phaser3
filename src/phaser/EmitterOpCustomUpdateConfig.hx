package phaser;

/**
 * @typedef {object} EmitterOpCustomUpdateConfig
 *
 * @property {EmitterOpOnEmitCallback} [onEmit] - [description]
 * @property {EmitterOpOnUpdateCallback} onUpdate - [description]
 */
typedef EmitterOpCustomUpdateConfig = {
    @:optional var onEmit:EmitterOpOnEmitCallback;
var onUpdate:EmitterOpOnUpdateCallback;
};
