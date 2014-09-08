package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Kevin Boogaard
	 */
	public class Main extends Sprite 
	{
		
		private var _game:game;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		 _game = new game();
		 addChild(_game);
		
	}
	
	
	
	
}
}