package phaser;

/**
 * @typedef {object} BannerConfig
 *
 * @property {boolean} [hidePhaser=false] - Omit Phaser's name and version from the banner.
 * @property {string} [text='#ffffff'] - The color of the banner text.
 * @property {string[]} [background] - The background colors of the banner.
 */
typedef BannerConfig = {
    @:optional var hidePhaser:Bool;
    @:optional var text:String;
    @:optional var background:Array<String>;
};
