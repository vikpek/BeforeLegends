private class Vec2i{
	var x : int;
	var y : int;
		
	function Vec2i(x : int, y : int){
		this.x = x;
		this.y = y;
	}
	
	function ToString() : String{
		return x + " | " + y;
	}
}