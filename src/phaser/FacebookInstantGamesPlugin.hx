package phaser;

@:native("Phaser.FacebookInstantGamesPlugin")
extern class FacebookInstantGamesPlugin extends phaser.events.EventEmitter {
    public function new(game:phaser.Game, config:FBConfig);
}
