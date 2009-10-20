﻿package  
{
	import com.completeperspective.zsort.*;
	
	import flash.display.*;
	import flash.events.*;
	
	public class ZSort3D_FlashTest extends Sprite {
		
		// Constants:
		// Public Properties:
		// Private Properties:
		private var _mouseDrag : Boolean;
		private var _nav3D : Z3DRenderer;
		
		// Initialization:
		public function ZSort3D_FlashTest() 
		{ 
			var dataProvider : Array = new Array();
			
			for( var i : int = 0; i < 20; i++) {
				var ball : Z3DBall = new Z3DBall();
				ball.addEventListener( MouseEvent.CLICK, caughtMe );
				dataProvider.push( ball );
			}
			
			_nav3D = new Z3DRenderer( stage.stageWidth, stage.stageHeight, dataProvider );
			addChild( _nav3D );
			
			stage.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
			stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUp)
			
		}
		
		private function caughtMe( e : MouseEvent ) : void
		{
			//trace( "caught: " + e.currentTarget );
		}
		
		private function onMouseMove( e : MouseEvent ) : void
		{
			// if user is draging mouse, update current x and y vars
			if(_mouseDrag) {
				//trace( "LocalX : " + e.localX );
				_nav3D.currentX = this.mouseX;
				_nav3D.currentY = this.mouseY;
			}
		}
		
		private function onMouseDown( e : MouseEvent ) : void
		{
			// set mouse down toggle
			_mouseDrag = true;
		}
		
		private function onMouseUp( e : MouseEvent ) : void
		{
			// user released, untoggle mouse down
			_mouseDrag = false;
		}
	}
	
}