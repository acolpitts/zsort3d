package com.completeperspective.zsort
{
	import flash.events.MouseEvent;
	import flash.display.Sprite;
		
	/** 
	 * Basic Z3DSortable object to test Z3DRenderer Class
	 */
	public class Z3DBall extends Z3DSortable
	{
		import flash.display.*;
		import flash.geom.Rectangle;
		import flash.events.MouseEvent;
	  
		private var _w : uint;
		private var _h : uint;
		private var _color : int;
		private var _ball : Sprite;
	  	
		public function Z3DBall()
		{
			_w = 200;
			_h = 200;
			_color = Math.round( Math.random()*0xFFFFFF );
			init();
		}
	   
		private function init() : void
		{
			draw();
		}
		
		protected function draw( ) : void
		{
			_ball = new Sprite();
			var g:Graphics = _ball.graphics;
	    	g.lineStyle(1,0x33CCFF,0);
	  	    	
		    // Draw a box and fill it with the LinearGradient.
		    g.beginFill( _color, 1 );
		    g.drawCircle( 0, 0, 50 );
		  	g.endFill();
		  	
		    // Add the new Sprite to the display list.
			addChild(_ball); 
			
		    
		}
		
		public function get ball() : Sprite
		{
			return _ball;
		}
		
		public function set ball( sprite : Sprite ) : void
		{
			_ball = sprite;	
		}
		
		public function get color() : int
		{
			return _color;
		}
		
		public function get h() : uint
		{
			return _h;
		}
		
		public function get w() : uint
		{
			return _w;
		}
		
	}
}