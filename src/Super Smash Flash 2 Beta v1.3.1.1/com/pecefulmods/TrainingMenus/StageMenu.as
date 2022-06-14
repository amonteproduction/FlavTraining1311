package com.pecefulmods.TrainingMenus
{
	
	import com.mcleodgaming.ssf2.menus.*;
	import com.mcleodgaming.ssf2.util.ResourceManager;
	import com.mcleodgaming.ssf2.Main;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import com.mcleodgaming.ssf2.util.Key;
	import com.mcleodgaming.ssf2.engine.Character;
	import com.mcleodgaming.ssf2.engine.StageData;
	import com.mcleodgaming.ssf2.net.MultiplayerManager;
	import flash.display.Sprite;
	import flash.display.Graphics;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import com.mcleodgaming.ssf2.Main;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import fl.controls.Button;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	import flash.events.MouseEvent;
	import com.pecefulmods.TrainingHUD;
	import com.mcleodgaming.ssf2.engine.InteractiveSprite;
	import com.mcleodgaming.ssf2.menus.MenuMapper;
	import com.mcleodgaming.ssf2.controllers.MenuController;
	   import com.mcleodgaming.ssf2.util.Controller;
   import com.mcleodgaming.ssf2.util.ControlsObject;	
	import com.mcleodgaming.ssf2.menus.DebugConsole;
	import com.pecefulmods.DrawingShapes;
	import com.mcleodgaming.ssf2.controllers.GameController;
	import com.mcleodgaming.ssf2.util.Utils;
	import com.mcleodgaming.ssf2.util.SaveData;
	
	public class StageMenu 
	{
		
		public static var hitLag:Boolean = true;
		private var buttonsMenu:Vector.<MovieClip>;
		private var MapperButtons:Vector.<MenuMapperNode>;
		private var m_menuMapper:MenuMapper;
		private var damnIsItTrue:Boolean = true;
		private var m_trainingHud:TrainingHUD;
		private var m_loadcode:int;
		private var m_savecode:int;
		private var m_positionBool:Boolean = false;
		private var setsave:Boolean = false;
		private var char_position:Object =  new Object();

		public function StageMenu(traininghud:TrainingHUD):void
		{	
			buttonsMenu = new Vector.<MovieClip>();
			MapperButtons = new Vector.<MenuMapperNode>();
			m_trainingHud = traininghud;

			m_loadcode = SaveData.LoadCode;
			m_savecode = SaveData.SaveCode;
			m_positionBool = SaveData.PositionBool;
				
			buttonsMenu.push(m_trainingHud.createButton("Position Reset ", 1 , m_trainingHud._containerWidth,null,this.position_CLICK, null, [ ((this.m_positionBool == true) ? "ON" : "OFF" )]));
			buttonsMenu.push(m_trainingHud.createButton("Load", 3 , m_trainingHud._containerWidth, null, this.loadSet_CLICK, null, [Utils.KEY_ARR[m_loadcode]]));
			buttonsMenu.push(m_trainingHud.createButton("Save", 3 , m_trainingHud._containerWidth,null,this.saveSet_CLICK,null,  [Utils.KEY_ARR[m_savecode]]));
			m_menuMapper = m_trainingHud.initMenuMapping(MapperButtons,buttonsMenu);
			this.createUI(260,120);
			m_trainingHud.m_setKey.visible = false;

			Main.Root.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
						trace(GameController.currentGame.LevelData.inputBuffer);

		}

		public function keyselect(e:KeyboardEvent):void
        {
        	if (m_keyblocker == false)
        	{
        		return;
        	}
        	
        }

		public function get buttonmenu():Object
		{
			return buttonsMenu;
		}

		public function get menuMapper():MenuMapper
		{
			return m_menuMapper;
		}
		
		
		public function position_CLICK(ON:Boolean):void
		{
			m_positionBool = ON;
		}

		public function hitstun_CLICK(ON:Boolean):void
		{
			hitLag = ON;
		}

		public function loadSet_CLICK(keycode:int):void
		{
			m_loadcode = keycode;
			SaveData.LoadCode = keycode;
			SaveData.saveGame();
		}
		
		public function saveSet_CLICK(keycode:int):void
		{
			m_savecode = keycode;
			SaveData.SaveCode = keycode;
			SaveData.saveGame();
		}


		public function createUI(_width:int,_height:int):void
		{
			m_trainingHud.m_setKey = new MovieClip()
			 
			var format1:TextFormat = new TextFormat();

			format1.font= "Eras Light ITC";//"Eras Light ITC"; //Eras Light ITC
			format1.size=14;
			format1.align = "center";
			
			//Background
			Background = new Sprite; // initializing the variable named rectangle
			Background.graphics.beginFill(0x000000,.53); // choosing the colour for the fill, here it is red
			Background.graphics.lineStyle(1,0xFFFFFF,.13);
			Background.graphics.drawRect(0, 0, _width,_height); // (x spacing, y spacing, width, height)
			Background.graphics.endFill(); // not always needed but I like to put it in to end the fill
			Background.x = 150;
			Background.y = 80;
			

			//Background Container 
			m_trainingHud.m_setKey.tempx =  Main.Width / 2;
			m_trainingHud.m_setKey.tempy =  Main.Height / 2;
			m_trainingHud.m_setKey.tempwidth = _width;
			m_trainingHud.m_setKey.addChild(Background); 
			
			//Menu name underline
			/*var NameLine:Sprite= new Sprite(); //Removed could add later on
			NameLine.graphics.moveTo(0 + 12,20);
			NameLine.graphics.lineStyle(1,0xFFFFFF);
			NameLine.graphics.lineTo(Background.width -12,20);
			Nameline.visible = false;
			Background.addChild(NameLine); */
			
			//Menu Text
			var Menutext:TextField = new TextField();
			Menutext.selectable = false;
			Menutext.text = "Select the binding key";
			Menutext.y =  5;
			Menutext.width = _width;
			Menutext.textColor = 0xFFFFFF;
			Menutext.setTextFormat(format1); 
			Background.addChild(Menutext); 
			
			var format2:TextFormat = new TextFormat();
			format2.font="Arial";
			format2.align = "center"
			format2.size = 8;
			
			var footer:TextField = new TextField();
			footer.selectable = false;
			footer.text = "Clear [DEL], Back [SP]";
			footer.textColor = 0xC0C0C0;
			footer.setTextFormat(format2);
			footer.border  = false;
			footer.borderColor =  0xFFFFFF;
			footer.width = m_trainingHud.m_setKey.tempwidth;
			footer.height = 19;
			footer.y = _height - 15;

			Background.addChild(footer); 


					
			m_trainingHud.m_stagef.addChild(m_trainingHud.m_setKey);
			
		}
		public function buffer_CHANGE(value:String):void
		{
			if(value == "Offline")
			{
				GameController.currentGame.LevelData.inputBuffer = 0;
			}
			else if(value == "Low")
			{
				GameController.currentGame.LevelData.inputBuffer = 2;
			}
			else if(value == "Normal")
			{
				GameController.currentGame.LevelData.inputBuffer = 3;
			}
			else if(value == "High")
			{
				GameController.currentGame.LevelData.inputBuffer = 4;
			}
			trace(GameController.currentGame.LevelData.inputBuffer)
		}

		public function toggleDebugConsole(e:KeyboardEvent):void
		{
			if (m_positionBool)
			{
				var m_stage = m_trainingHud.m_stage;
				if (e.keyCode === m_savecode)
				{
					if(this.damnIsItTrue == true){
							MenuController.debugConsole.ReplayPlayback = false;
						MenuController.debugConsole.ControlsCapture = true;
					}
					else{
						MenuController.debugConsole.ControlsCapture = false;
					};
					 //Set 
					for (var i:int = 0; i < 2 ; i++)
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
					this.damnIsItTrue = !this.damnIsItTrue;
				  	MultiplayerManager.notify("Saved position");
					
				};
				if (e.keyCode === m_loadcode)
				{
					 //Get
					 if (setsave == false)
					 {
						 return;
					 }
					for (var i:int = 0; i < 2 ; i++)
					{
						obj_str = "_" + i;
						m_stage.Players[i].setScale(char_position["scale"  + obj_str].x, char_position["scale"  + obj_str].y);
						m_stage.Players[i].setDamage(char_position["dam" + obj_str]);
						m_stage.Players[i].setPosition(char_position["x" + obj_str], char_position["y" + obj_str]);
						m_stage.Players[i].fliplocation(char_position["facingForward" + obj_str]);
						//m_stage.Players[i].CharacterStats.importData(char_position["data" + obj_str]);
					}
					 //m_stage.Players[1].setState(char_position.state);
											MenuController.debugConsole.ControlsCapture = false;
															MenuController.debugConsole.ReplayPlayback = true;
					 MultiplayerManager.notify("Loaded position");
					MenuController.debugConsole.myresetPointers();
				};
			}

			//TODO when adding this put in kill function and init function
		}

		public function killEvents():void
		{
			trace("killed stage menu events")
			Main.Root.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
		}
		
	}
}