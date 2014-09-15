package
{

	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import utils.Vector2D;
	/**
	 * ...
	 * @author Kevin Boogaard
	 */
	public class game extends Sprite
	{
		private var Rocketarray:Array = [];
		private var AantalTowers:int = 3;
		private var TowerArray:Array = [];
		private var Random:Number = Math.floor(Math.random() * 4);
		private var _mouseLocation:Vector2D = new Vector2D;
		
		public function game():void
		{
			if (stage)init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, loop);
			stage.addEventListener(MouseEvent.CLICK, click);
			 stage.addEventListener(MouseEvent.MOUSE_MOVE, turretRotation);
			
			
			
		for (var i:int = 0; i < AantalTowers; i++)
			{
				var Tower:tower = new tower();
				Tower.x = stage.stageWidth / (AantalTowers - 1) * i;
				Tower.y = stage.stageHeight - Tower.height;
				addChild(Tower);
				TowerArray.push(Tower);
				trace(TowerArray.length);
			}
		}
		
		private function turretRotation(e:MouseEvent):void 
		{
		
			_mouseLocation.y = mouseY;
			_mouseLocation.x = mouseX;
			for (var i:uint = 0; i < TowerArray.length; i++ )
			{
				//var rad:Number = Math.atan2(opp, adj);
				TowerArray[i].rotation = _mouseLocation.angle * 180 / Math.PI;  
				//angle = rad * 180 / Math.PI;
			}
		}
		
		private function click(e:MouseEvent):void
		{
			trace("hoi");
			
			var Rocket:rocket = new rocket;
			
			for (var i:int = 0; i < Rocketarray.length; i++ )
			{
			var Random:uint = Math.floor(Math.random() * 3);
			
			if (Random == 0)
			{
				Rocket.x =  stage.stageWidth / (AantalTowers - 0);
				Rocket.y =  stage.stageHeight - Rocket.height;
				trace("spawn1");
			}
			if (Random == 1);
			{
				Rocket.x =  stage.stageWidth / (AantalTowers - 1);
				Rocket.y =  stage.stageHeight - Rocket.height;
			}
			if (Random == 2);
			{
				Rocket.x =  stage.stageWidth / (AantalTowers - 2);
				Rocket.y =  stage.stageHeight - Rocket.height;
			}
			
			addChild(Rocket);
			Rocketarray.push(Rocket);
			}
			
			trace(Random);			
		}
		
		private function loop(e:Event):void
		{
			
			
		}
	
	}
}