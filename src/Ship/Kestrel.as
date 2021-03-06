﻿package Ship {
	import Crew.Crew;
	import Crew.Gerhard;
	import Crew.Sergay;
	import Crew.Wolfgang;
	import Ship.Ship;
	
	public class Kestrel extends Ship {
		public function Kestrel() {
			shipName = "The Kestrel";
			shipLayout = new LIB_Kestrel();
			mapOffsetX = 32;
			mapOffsetY = 66;
			
			_statHealthMax = 30;
			_statHealthNow = 30;
			_statShieldMax = 4;
			_statShieldNow = 1;
			
			
			
			
			
			constructNodes();
			constructCrew();
			initShip();
		}
		
		override protected function constructNodes():void {
			trace("constructNodes Kestrel");

			super.constructNodes();
			
			//0=none
			//1=thin
			//2=normal
			//3=thick
			
			var node:Node;
			
			generateRoom();
			
			node = generateNode(0, 2);
			node.setBorders(3,2,3,1);
			node.setDoors(true, false, true, false);
			addNode(node);
			
			node = generateNode(0, 3);
			node.setBorders(3,1,3,2);
			node.setDoors(true, false, true, false);
			addNode(node);
			
			generateRoom();

			node = generateNode(1, 1);
			node.setBorders(2, 2, 1, 3);
			node.setDoors(false, true, false, false);
			addNode(node);
			
			node = generateNode(2, 1);
			node.setBorders(1,2,3,3);
			node.setDoors(false, false, true, true);
			addNode(node);
			
			generateRoom();

			node = generateNode(1, 2);
			node.setBorders(3,3,1,1);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(2, 2);
			node.setBorders(1,3,2,1);
			node.setDoors(false, true, false, false);
			addNode(node);
			
			node = generateNode(1, 3);
			node.setBorders(3,1,1,3);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(2, 3);
			node.setBorders(1,1,2,3);
			node.setDoors(false, false, false, true);
			addNode(node);
			
			generateRoom();
			
			node = generateNode(1, 4);
			node.setBorders(2,3,1,2);
			node.setDoors(false, false, false, false);
			addNode(node);

			node = generateNode(2, 4);
			node.setBorders(1,3,3,2);
			node.setDoors(false, true, true, false);
			addNode(node);
			
			generateRoom();
			
			node = generateNode(3, 1);
			node.setBorders(3,2,1,2);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(4, 1);
			node.setBorders(1,2,2,3);
			node.setDoors(false, false, false, true);
			addNode(node);
			
			generateRoom();

			node = generateNode(4, 2);
			node.setBorders(2,3,1,1);
			node.setDoors(false, true, false, false);
			addNode(node);

			node = generateNode(5, 2);
			node.setBorders(1,2,3,1);
			node.setDoors(false, false, true, false);
			addNode(node);
			
			node = generateNode(4, 3);
			node.setBorders(2,1,1,3);
			node.setDoors(false, false, false, true);
			addNode(node);

			node = generateNode(5, 3);
			node.setBorders(1,1,3,2);
			node.setDoors(false, false, true, false);
			addNode(node);	

			generateRoom();
			
			node = generateNode(3, 4);
			node.setBorders(3,2,1,2);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(4, 4);
			node.setBorders(1,3,2,2);
			node.setDoors(false, true, false, false);
			addNode(node);
			
			generateRoom();

			node = generateNode(6, 0);
			node.setBorders(2, 3, 1, 3);
			node.setDoors(false, true, false, false);
			addNode(node);
			
			node = generateNode(7, 0);
			node.setBorders(1, 3, 2, 3);
			node.setDoors(false, true, false, true);
			addNode(node);			
			
			generateRoom();
			
			node = generateNode(6, 1);
			node.setBorders(2,3,1,1);
			node.setDoors(false, false, false, false);
			addNode(node);

			node = generateNode(7, 1);
			node.setBorders(1,3,3,1);
			node.setDoors(false, true, true, false);
			addNode(node);
			
			node = generateNode(6, 2);
			node.setBorders(3,1,1,3);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(7, 2);
			node.setBorders(1,1,3,3);
			node.setDoors(false, false, false, false);
			addNode(node);			
			
			generateRoom();

			node = generateNode(6, 3);
			node.setBorders(3,3,1,1);
			node.setDoors(true, false, false, false);
			addNode(node);
			
			node = generateNode(7, 3);
			node.setBorders(1,3,3,1);
			node.setDoors(false, false, false, false);
			addNode(node);
			
			node = generateNode(6, 4);
			node.setBorders(2,1,1,3);
			node.setDoors(false, false, false, false);
			addNode(node);

			node = generateNode(7, 4);
			node.setBorders(1,1,3,3);
			node.setDoors(false, false, true, true);
			addNode(node);
			
			generateRoom();
			
			node = generateNode(6, 5);
			node.setBorders(2,3,1,3);
			node.setDoors(false, false, false, true);
			addNode(node);

			node = generateNode(7, 5);
			node.setBorders(1,3,2,3);
			node.setDoors(false, true, false, true);
			addNode(node);
			
			generateRoom();
			
			node = generateNode(8, 1);
			node.setBorders(3,2,1,1);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(9, 1);
			node.setBorders(1,2,2,1);
			node.setDoors(false, false, false, false);
			addNode(node);
			
			node = generateNode(8, 2);
			node.setBorders(3,1,1,3);
			node.setDoors(false, false, false, true);
			addNode(node);

			node = generateNode(9, 2);
			node.setBorders(1,1,3,3);
			node.setDoors(false, false, true, false);
			addNode(node);
			
			generateRoom();

			node = generateNode(8, 3);
			node.setBorders(3,3,1,1);
			node.setDoors(false, true, false, false);
			addNode(node);

			node = generateNode(9, 3);
			node.setBorders(1,3,3,1);
			node.setDoors(false, false, true, false);
			addNode(node);

			node = generateNode(8, 4);
			node.setBorders(3,1,1,2);
			node.setDoors(true, false, false, false);
			addNode(node);
			
			node = generateNode(9, 4);
			node.setBorders(1,1,2,2);
			node.setDoors(false, false, false, false);
			addNode(node);
			
			generateRoom();

			node = generateNode(10, 2);
			node.setBorders(3,2,1,3);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(11, 2);
			node.setBorders(1,2,3,3);
			node.setDoors(false, false, true, false);
			addNode(node);

			node = generateNode(10, 3);
			node.setBorders(3,3,1,2);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(11, 3);
			node.setBorders(1,3,3,2);
			node.setDoors(false, false, true, false);
			addNode(node);			
			
			generateRoom();

			node = generateNode(12, 2);
			node.setBorders(3,2,1,1);
			node.setDoors(true, false, false, false);
			addNode(node);

			node = generateNode(13, 2);
			node.setBorders(1,2,3,1);
			node.setDoors(false, false, false, false);
			addNode(node);
			
			node = generateNode(12, 3);
			node.setBorders(3,1,1,2);
			node.setDoors(true, false, false, false);
			addNode(node);
			
			node = generateNode(13, 3);
			node.setBorders(1,1,3,2);
			node.setDoors(false, false, true, false);
			addNode(node);			
			
			generateRoom();

			node = generateNode(14, 2);
			node.setBorders(3,2,2,1);
			node.setDoors(false, false, false, false);
			addNode(node);
			
			node = generateNode(14, 3);
			node.setBorders(3,1,2,2);
			node.setDoors(true, false, false, false);
			addNode(node);
		}
	
		override protected function constructCrew():void {
			trace("constructCrew");
			var member:Crew;
			
			member = new Gerhard();
			member.map = nodes;
			addCrew(member, 20);
			
			member = new Wolfgang();
			member.map = nodes;
			addCrew(member, 21);

			member = new Sergay();
			member.map = nodes;
			addCrew(member, 22);
			
			member = new Gerhard();
			member.map = nodes;
			addCrew(member, 5);
			
			member = new Wolfgang();
			member.map = nodes;
			addCrew(member, 5);

			member = new Sergay();
			member.map = nodes;
			addCrew(member, 7);

			member = new Gerhard();
			member.map = nodes;
			addCrew(member, 9);
			
			member = new Wolfgang();
			member.map = nodes;
			addCrew(member, 12);

			member = new Sergay();
			member.map = nodes;
			addCrew(member, 15);

		}
	}
}
