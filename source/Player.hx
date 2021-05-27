package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;

class Player extends FlxSprite
{
    var running = false;

    public function new(x:Float, y:Float)
    {
        super(x, y);
        // LOADS SPRITE OF CHARACTER
        loadGraphic(AssetPaths.Stickman__png, true, 16, 16);

        setFacingFlip(FlxObject.LEFT, false, false);
        setFacingFlip(FlxObject.RIGHT, true, false);

        animation.add("idle", [0, 1], 6, true);
        animation.add("walk", [2, 3], 6, true);

        animation.play("idle");

        setGraphicSize(100, 100);
        updateHitbox();
    }

    override public function update(elapsed:Float):Void
        {
            if(FlxG.keys.pressed.UP || FlxG.keys.pressed.DOWN || FlxG.keys.pressed.RIGHT || FlxG.keys.pressed.LEFT)
            {
                if(!running)
                {
                    animation.stop();
                    animation.play("walk");
                    running = true;
                }
            } else {
                if(running)
                {
                    animation.stop();
                    animation.play("idle");
                    running = false;
                }
            }
        
            super.update(elapsed);
        }
}