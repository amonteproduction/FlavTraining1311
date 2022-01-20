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
	
	public class GameMenu 
	{
		

		private var buttonsMenu:Vector.<MovieClip>;
		private var MapperButtons:Vector.<MenuMapperNode>;
		private var m_menuMapper:MenuMapper;
		
		public function GameMenu(traininghud:TrainingHUD):void
		{	
			m_trainingHud = traininghud;
			
			buttonsMenu = new Vector.<MovieClip>();
			MapperButtons = new Vector.<MenuMapperNode>();
			
			
			buttonsMenu.push(m_trainingHud.createButton("Hitboxes", 1 , m_trainingHud._containerWidth,null,this.hitboxes_CLICK));
			m_menuMapper = m_trainingHud.initMenuMapping(MapperButtons,buttonsMenu);

		}

		public function menuswitch():void
		{
			
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