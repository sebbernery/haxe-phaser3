# Haxe Phaser 3 bindings

This contains bindings for Phaser 3 (3.12).

Note: those bindings are autogenerated and can contains some errors.

It's recommanded to understand how bindings works to use that. If you have a compilation error (function call mismatch for example), check if it's not a bad definition in the bindings.

Those bindings have been used for two LudumDare game. For the last one, no problem was caused by those bindings.
Here is the game repo for example of how to use it : https://code.vikindie.fr/ldrs/LD41 or https://code.vikindie.fr/ldrs/LD42

The bindings have been generated with this script : https://github.com/sebbernery/haxe-phaser3-generator .

## How to use it

Add the lib in your build.hxml

```
-lib haxe-phaser3
```

## Hacks

To access to static attributes contained in the 'Phaser' class, you must use untyped. Ex:

```
var game = new phaser.Game({
    width: 900,
    height: 600,
    type: untyped Phaser.CANVAS
});
```

To use an attribute called "switch" or "default", add an underscore after the attribute name. (those are reserved words in Phaser)
