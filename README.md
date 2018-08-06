# Haxe Phaser 3 bindings

This contains bindings for Phaser 3 (3.11).

!!! BE CAREFULL, those bindings are not perfect !!!

It's highly recommanded to understand how bindings works to use that. If you have a compilation error (function call mismatch for example), check if it's not a bad definition in the bindings.

Those bindings have been used for a LudumDare game and it was usable. Some manual editing have been made (It's now integrated to the script that generates the bindings).
Here is the game repo for example of how to use it : https://code.vikindie.fr/ldrs/LD41

The bindings have been generated with this script : https://github.com/sebbernery/haxe-phaser3-generator .

## How to use it

Add the lib in your build.hxml

```
-lib haxe-phaser3
```

