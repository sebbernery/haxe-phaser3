package phaser;

/**
 * @typedef {object} JSONPath
 *
 * @property {string} type - The of the curve.
 * @property {number} x - The X coordinate of the curve's starting point.
 * @property {number} y - The Y coordinate of the path's starting point.
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
