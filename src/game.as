package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Kevin Boogaard
	 */
	public class game extends Sprite
	{
		private var AantalTowers:int = 3;
		private var TowerArray:Array = [];
		private var Rocketarray:Array = [];
		private var Rocket:rocket = new rocket;
		private var Random:Number = Math.floor(Math.random() * 4);
		
		public function game():void
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, loop);
			addEventListener(MouseEvent.CLICK, click);
			
			Rocket.x = Random * 100;
			Rocket.y = 300;
			addChild(Rocket);
			
			for (var i:int = 0; i < AantalTowers; i++)
			{
				var Tower:tower = new tower;
				Tower.x = stage.stageWidth / (AantalTowers - 1) * i;
				Tower.y = stage.stageHeight - Tower.height;
				addChild(Tower);
				TowerArray.push(Tower);
				trace(TowerArray.length);
				
			}
		}
		
		private function click(e:MouseEvent):void
		{
		
		}
		
		private function loop(e:Event):void
		{
			var Random:Number = Math.floor(Math.random() * 4);
		}
	
	}
}