package phaser;

/**
 * @typedef {object} JSONPath
 *
 * @property {string} type - The of the curve.
 * @property {number} x - [description]
 * @property {number} y - [description]
 * @property {boolean} autoClose - The path is auto closed.
 * @property {JSONCurve[]} curves - The list of the curves
 */
typedef JSONPath = {
var type:String;
var x:Float;
var y:Float;
var autoClose:Bool;
var curves:Array<JSONCurve>;
};
