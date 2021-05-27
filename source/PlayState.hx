package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var coolPlayer = new Player(0,0);

		add(coolPlayer);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
