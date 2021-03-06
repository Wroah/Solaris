package State {
	import Crew.Crew;
	import Ship.Ship;
	
	public final class GameData {
		//{ Singelton init
		private static var _instance:GameData;

		public function GameData(){
			if(_instance){
				throw new Error("Game... use getInstance()");
			} 
			_instance = this;
			init();
		}

		public static function getInstance():GameData {
			if(!_instance){
				new GameData();
			} 
			return _instance;
		}
		//}
	
		public function init():void {
			_difficulty = 1;
		}
		
		private var _difficulty:int; //1 or 2
		private var _ship:Ship;
		private var _crew:Crew;
		
		public function get difficulty():int {
			return _difficulty;
		}
		
		public function set difficulty(value:int):void {
			_difficulty = value;
		}
		
		public function get ship():Ship {
			return _ship;
		}
		
		public function set ship(value:Ship):void {
			_ship = value;
		}
	}
}