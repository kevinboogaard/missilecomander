package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author Kevin Boogaard
	 */
	public class Main extends Sprite 
	{
		private var Rocketarray:Array = [];
		
		private var Rocket:rocket = new rocket;
		private	var Random:Number = Math.floor(Math.random()*4);
	}
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		addEventListener(Event.ENTER_FRAME, loop);
		addEventListener(KeyboardEvent.KEY_DOWN, keydown);

		Rocket.x = Random *100;
		Rocket.y = 300;
		addChild(Rocket);
	}
	
	private function keydown(e:KeyboardEvent):void 
	{
		
	}
	
	private function loop(e:Event):void 
	{
		var Random:Number = Math.floor(Math.random() * 4);
	}
	
}
}