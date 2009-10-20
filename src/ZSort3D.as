package
{
	// Import all classes
	import com.completeperspective.zsort.*;
	
	import flash.display.Sprite;
	
	public class ZSort3D extends Sprite
	{
		public static const VERSION : String = "1.0.0";
		
		public function ZSort3D()
		{
			com.completeperspective.zsort.Z3DRenderer;
			
			com.completeperspective.zsort.IZ3DSortable;
			com.completeperspective.zsort.Z3DSortable;
			com.completeperspective.zsort.Z3DContainer;
			com.completeperspective.zsort.Z3DBall;
						
			trace( "ZSort3D Library Compiled..." );
		}
	}
}