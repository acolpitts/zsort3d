package com.completeperspective.zsort
{
	import flash.display.Sprite

	/**
	 * Abstract ZSortable object to be extended to specific implementations
	 */
	public class Z3DSortable extends Sprite implements IZ3DSortable
	{
		public var _x : Number;
		public var _y : Number;
		public var _xpos : Number;
		public var _ypos : Number;
		public var _zpos : Number;
		public var _xnum : Number;
		public var _ynum : Number;
		public var _znum : Number;
		public var _width : Number;
		public var _height : Number;
		/**
		 * ABSTRACT CLASS : Not to be instantiated
		 */
		public function Z3DSortable(){}
	}
}