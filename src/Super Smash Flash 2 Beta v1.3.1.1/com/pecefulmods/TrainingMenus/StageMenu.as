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
	import com.pecefulmods.DrawingShapes;
	import com.mcleodgaming.ssf2.controllers.GameController;	
	
	public class StageMenu 
	{
		
		public static var hitLag:Boolean = true;
		private var buttonsMenu:Vector.<MovieClip>;
		private var MapperButtons:Vector.<MenuMapperNode>;
		private var m_menuMapper:MenuMapper;
		private var m_trainingHud:TrainingHUD;
		private var m_setKey:MovieClip;

		public function StageMenu(traininghud:TrainingHUD):void
		{	
			buttonsMenu = new Vector.<MovieClip>();
			MapperButtons = new Vector.<MenuMapperNode>();
			m_trainingHud = traininghud;
				
			buttonsMenu.push(m_trainingHud.createButton("Position Reset ", 1 , m_trainingHud._containerWidth,null,this.hitboxes_CLICK, null));
			buttonsMenu.push(m_trainingHud.createButton("Load", 3 , m_trainingHud._containerWidth, null, this.loadSet_CLICK, null, ["N/A"]));
			buttonsMenu.push(m_trainingHud.createButton("Save", 3 , m_trainingHud._containerWidth,null,this.hitboxes_CLICK,null,  ["N/A"]));
			m_menuMapper = m_trainingHud.initMenuMapping(MapperButtons,buttonsMenu);
			this.createUI(260,120);
			m_setKey.visible = false;

		}


		public function get buttonmenu():Object
		{
			return buttonsMenu;
		}

		public function get menuMapper():MenuMapper
		{
			return m_menuMapper;
		}
		
		
		public function hitboxes_CLICK(ON:Boolean):void
		{
			InteractiveSprite.SHOW_HITBOXES = ON;
			Main.fixFocus();
		}

		public function hitstun_CLICK(ON:Boolean):void
		{
			hitLag = ON;
		}

		public function loadSet_CLICK():String
		{
			
			m_setKey.visible = true;
			return "F1";
		}

		public function createUI(_width:int,_height:int):void
		{
			m_setKey = new MovieClip()
			 
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
			m_setKey.tempx =  Main.Width / 2;
			m_setKey.tempy =  Main.Height / 2;
			m_setKey.tempwidth = _width;
			m_setKey.addChild(Background); 
			
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
			footer.width = m_setKey.tempwidth;
			footer.height = 19;
			footer.y = _height - 15;

			Background.addChild(footer); 


					
			m_trainingHud.m_stagef.addChild(m_setKey);
			
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
			if (BETA_ON)
			{
				if (e.keyCode === Key.F1)
				{
					m_stage.Paused = true;
					trace("pause")

					 //Set 
					// char_position.scalev = m_stage.Players[0].getScale();
					// char_position.dam = m_stage.Players[0].getDamage() ;
					// char_position.x = m_stage.Players[0].X;
					// char_position.y = m_stage.Players[0].Y;
					 
					// char_position.scale1 = m_stage.Players[1].getScale();
					// char_position.dam1 = m_stage.Players[1].getDamage();
					// char_position.x1 = m_stage.Players[1].X;
					// char_position.y1 = m_stage.Players[1].Y;
					// char_position.state = m_stage.Players[1].getState() ;
					// setsave = true;
				 //  	MultiplayerManager.notify("Saved position");
					
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

			//TODO when adding this put in kill function and init function
			//Main.Root.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
			//Main.Root.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
		}
		
	}
}