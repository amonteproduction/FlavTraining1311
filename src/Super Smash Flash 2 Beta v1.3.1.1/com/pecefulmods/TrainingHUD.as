package com.pecefulmods
{
	public class TrainingHUD 
	{
		import com.mcleodgaming.ssf2.util.ResourceManager;
		import com.mcleodgaming.ssf2.Main;
		import flash.events.KeyboardEvent;
		import flash.events.Event;
		import com.mcleodgaming.ssf2.util.Key;
		import com.mcleodgaming.ssf2.engine.Character;
		import com.mcleodgaming.ssf2.engine.StageData;
		import com.mcleodgaming.ssf2.net.MultiplayerManager;

		private var m_stage:StageData;
		private var char_position:Object = new Object();
		private var setsave:Boolean = false;
		public static var BETA_ON:Boolean = true;
		
		public function TrainingHUD(stage:StageData)
		{
			m_stage = stage;
         	MultiplayerManager.makeNotifier();
			Main.Root.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
			trace("started Training HUD")
		}

		public function toggleDebugConsole(e:KeyboardEvent):void
		{
			if (BETA_ON)
			{
				if (e.keyCode === Key.F1)
				{
					 //Set 
					 
					for (i = 0; i < 2 ; i++)
					{
						var obj_str:String = "_" + i.toString();
						trace(obj_str);
						char_position["scale" + obj_str] = m_stage.Players[i].getScale();
						char_position["dam" + obj_str]   = m_stage.Players[i].getDamage() ;
						char_position["x" + obj_str] 	 = m_stage.Players[i].X;
						char_position["y" + obj_str] 	 = m_stage.Players[i].Y;
						
						char_position["facingForward" + obj_str] = m_stage.Players[i].FacingForward;
						
						
						
					}
					

	
					setsave = true;
				  	MultiplayerManager.notify("Saved position");
				};
				if (e.keyCode === Key.F2)
				{
					 //Get
					 if (setsave == false)
					 {
						 return;
					 }

					for (i = 0; i < 2 ; i++)
					{
						obj_str = "_" + i;
						m_stage.Players[i].setScale(char_position["scale"  + obj_str].x, char_position["scale"  + obj_str].y);
						m_stage.Players[i].setDamage(char_position["dam" + obj_str]);
						m_stage.Players[i].setPosition(char_position["x" + obj_str], char_position["y" + obj_str]);
						m_stage.Players[i].fliplocation(char_position["facingForward" + obj_str]);
						//m_stage.Players[i].CharacterStats.importData(char_position["data" + obj_str]);
					}

					 //m_stage.Players[1].setState(char_position.state);
					 MultiplayerManager.notify("Loaded position");

					
				};
			}
			
		}

		public function kill():void
		{
			Main.Root.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
		}
	}
}