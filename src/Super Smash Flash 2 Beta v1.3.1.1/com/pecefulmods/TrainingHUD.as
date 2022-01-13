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
		private var char_position:Object =  new Object();
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
					char_position.scalev = m_stage.Players[0].getScale();
					char_position.dam = m_stage.Players[0].getDamage() ;
					char_position.x = m_stage.Players[0].X;
					char_position.y = m_stage.Players[0].Y;
					 
					char_position.scale1 = m_stage.Players[1].getScale();
					char_position.dam1 = m_stage.Players[1].getDamage();
					char_position.x1 = m_stage.Players[1].X;
					char_position.y1 = m_stage.Players[1].Y;
					char_position.state = m_stage.Players[1].getState() ;
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
					 
					 m_stage.Players[0].setScale(char_position.scalev.x,char_position.scalev.y);
					 m_stage.Players[0].setPosition(char_position.x,char_position.y);
					 m_stage.Players[0].setDamage(char_position.dam);
					 
					 m_stage.Players[1].setScale(char_position.scale1.x,char_position.scale1.y);
					 m_stage.Players[1].setDamage(char_position.dam1);
					 m_stage.Players[1].setPosition(char_position.x1,char_position.y1);
					 m_stage.Players[1].setState(char_position.state);
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