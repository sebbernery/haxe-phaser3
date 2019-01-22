package phaser.math;

/**
 * @classdesc
 * A seeded Random Data Generator.
 *
 * Access via `Phaser.Math.RND` which is an instance of this class pre-defined
 * by Phaser. Or, create your own instance to use as you require.
 *
 * The `Math.RND` generator is seeded by the Game Config property value `seed`.
 * If no such config property exists, a random number is used.
 *
 * If you create your own instance of this class you should provide a seed for it.
 * If no seed is given it will use a 'random' one based on Date.now.
 *
 * @class RandomDataGenerator
 * @memberof Phaser.Math
 * @constructor
 * @since 3.0.0
 *
 * @param {(string|string[])} [seeds] - The seeds to use for the random number generator.
 */
@:native("Phaser.Math.RandomDataGenerator")
extern class RandomDataGenerator {
    public function new(?seeds:Dynamic);
    /**
     * Signs to choose from.
     *
     * @name Phaser.Math.RandomDataGenerator#signs
     * @type {number[]}
     * @since 3.0.0
     */
    public var signs:Array<Float>;
    /**
     * Initialize the state of the random data generator.
     *
     * @method Phaser.Math.RandomDataGenerator#init
     * @since 3.0.0
     *
     * @param {(string|string[])} seeds - The seeds to initialize the random data generator with.
     */
    public function init(seeds:Dynamic):Void;
    /**
     * Reset the seed of the random data generator.
     *
     * _Note_: the seed array is only processed up to the first `undefined` (or `null`) value, should such be present.
     *
     * @method Phaser.Math.RandomDataGenerator#sow
     * @since 3.0.0
     *
     * @param {string[]} seeds - The array of seeds: the `toString()` of each value is used.
     */
    public function sow(seeds:Array<String>):Void;
    /**
     * Returns a random integer between 0 and 2^32.
     *
     * @method Phaser.Math.RandomDataGenerator#integer
     * @since 3.0.0
     *
     * @return {number} A random integer between 0 and 2^32.
     */
    public function integer():Float;
    /**
     * Returns a random real number between 0 and 1.
     *
     * @method Phaser.Math.RandomDataGenerator#frac
     * @since 3.0.0
     *
     * @return {number} A random real number between 0 and 1.
     */
    public function frac():Float;
    /**
     * Returns a random real number between 0 and 2^32.
     *
     * @method Phaser.Math.RandomDataGenerator#real
     * @since 3.0.0
     *
     * @return {number} A random real number between 0 and 2^32.
     */
    public function real():Float;
    /**
     * Returns a random integer between and including min and max.
     *
     * @method Phaser.Math.RandomDataGenerator#integerInRange
     * @since 3.0.0
     *
     * @param {number} min - The minimum value in the range.
     * @param {number} max - The maximum value in the range.
     *
     * @return {number} A random number between min and max.
     */
    public function integerInRange(min:Float, max:Float):Float;
    /**
     * Returns a random integer between and including min and max.
     * This method is an alias for RandomDataGenerator.integerInRange.
     *
     * @method Phaser.Math.RandomDataGenerator#between
     * @since 3.0.0
     *
     * @param {number} min - The minimum value in the range.
     * @param {number} max - The maximum value in the range.
     *
     * @return {number} A random number between min and max.
     */
    public function between(min:Float, max:Float):Float;
    /**
     * Returns a random real number between min and max.
     *
     * @method Phaser.Math.RandomDataGenerator#realInRange
     * @since 3.0.0
     *
     * @param {number} min - The minimum value in the range.
     * @param {number} max - The maximum value in the range.
     *
     * @return {number} A random number between min and max.
     */
    public function realInRange(min:Float, max:Float):Float;
    /**
     * Returns a random real number between -1 and 1.
     *
     * @method Phaser.Math.RandomDataGenerator#normal
     * @since 3.0.0
     *
     * @return {number} A random real number between -1 and 1.
     */
    public function normal():Float;
    /**
     * Returns a valid RFC4122 version4 ID hex string from https://gist.github.com/1308368
     *
     * @method Phaser.Math.RandomDataGenerator#uuid
     * @since 3.0.0
     *
     * @return {string} A valid RFC4122 version4 ID hex string
     */
    public function uuid():String;
    /**
     * Returns a random element from within the given array.
     *
     * @method Phaser.Math.RandomDataGenerator#pick
     * @since 3.0.0
     *
     * @param {array} array - The array to pick a random element from.
     *
     * @return {*} A random member of the array.
     */
    public function pick(array:Array<Dynamic>):Dynamic;
    /**
     * Returns a sign to be used with multiplication operator.
     *
     * @method Phaser.Math.RandomDataGenerator#sign
     * @since 3.0.0
     *
     * @return {number} -1 or +1.
     */
    public function sign():Float;
    /**
     * Returns a random element from within the given array, favoring the earlier entries.
     *
     * @method Phaser.Math.RandomDataGenerator#weightedPick
     * @since 3.0.0
     *
     * @param {array} array - The array to pick a random element from.
     *
     * @return {*} A random member of the array.
     */
    public function weightedPick(array:Array<Dynamic>):Dynamic;
    /**
     * Returns a random timestamp between min and max, or between the beginning of 2000 and the end of 2020 if min and max aren't specified.
     *
     * @method Phaser.Math.RandomDataGenerator#timestamp
     * @since 3.0.0
     *
     * @param {number} min - The minimum value in the range.
     * @param {number} max - The maximum value in the range.
     *
     * @return {number} A random timestamp between min and max.
     */
    public function timestamp(min:Float, max:Float):Float;
    /**
     * Returns a random angle between -180 and 180.
     *
     * @method Phaser.Math.RandomDataGenerator#angle
     * @since 3.0.0
     *
     * @return {number} A random number between -180 and 180.
     */
    public function angle():Float;
    /**
     * Returns a random rotation in radians, between -3.141 and 3.141
     *
     * @method Phaser.Math.RandomDataGenerator#rotation
     * @since 3.0.0
     *
     * @return {number} A random number between -3.141 and 3.141
     */
    public function rotation():Float;
    /**
     * Gets or Sets the state of the generator. This allows you to retain the values
     * that the generator is using between games, i.e. in a game save file.
     *
     * To seed this generator with a previously saved state you can pass it as the
     * `seed` value in your game config, or call this method directly after Phaser has booted.
     *
     * Call this method with no parameters to return the current state.
     *
     * If providing a state it should match the same format that this method
     * returns, which is a string with a header `!rnd` followed by the `c`,
     * `s0`, `s1` and `s2` values respectively, each comma-delimited.
     *
     * @method Phaser.Math.RandomDataGenerator#state
     * @since 3.0.0
     *
     * @param {string} [state] - Generator state to be set.
     *
     * @return {string} The current state of the generator.
     */
    public function state(?state:String):String;
    /**
     * Shuffles the given array, using the current seed.
     *
     * @method Phaser.Math.RandomDataGenerator#shuffle
     * @since 3.7.0
     *
     * @param {array} [array] - The array to be shuffled.
     *
     * @return {array} The shuffled array.
     */
    public function shuffle(?array:Array<Dynamic>):Array<Dynamic>;
}
