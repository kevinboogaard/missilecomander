package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Kevin Boogaard
	 */
	public class bullit extends Sprite
	{
		private var Rocket:rocket = new rocket;
		private var speed:Number = 10;
		private var movementx:Number;
		private var movementy:Number;
		
		public function bullit() 
		{
			
			
			
		}
		
		public function direction(angle:Number):void
		{
			
			var radion:Number = angle / (180 / Math.PI);
			movementx = Math.cos(radion) * speed;
			movementy = Math.sin(radion) * speed;
			
		}
		
		public function update():void
		{
			this.x += movementx;			
			this.y += movementy;			
		}
		
	}

}