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
	
	public class GameMenu 
	{
		
		public static var HitStun:Boolean = true;
		private var buttonsMenu:Vector.<MovieClip>;
		private var MapperButtons:Vector.<MenuMapperNode>;
		private var m_menuMapper:MenuMapper;
		
		public function GameMenu(traininghud:TrainingHUD):void
		{	
			buttonsMenu = new Vector.<MovieClip>();
			MapperButtons = new Vector.<MenuMapperNode>();
			m_trainingHud = traininghud;
			
		
			var m_offlineBuffer = ["Low (2f)", "Normal (3f)", "High (4f)", "Offline (0f)"];
			
			buttonsMenu.push(m_trainingHud.createButton("Hitboxes", 1 , m_trainingHud._containerWidth,null,this.hitboxes_CLICK, null));
			buttonsMenu.push(m_trainingHud.createButton("HitStun", 1 , m_trainingHud._containerWidth,null,this.hitstun_CLICK, null));
			// buttonsMenu.push(m_trainingHud.createButton("Offline Buffer", 2 , m_trainingHud._containerWidth,null,this.buffer_CHANGE, null, m_offlineBuffer));
			// buttonsMenu.push(m_trainingHud.createButton("DI Lines (Not made)", 1 , m_trainingHud._containerWidth,null,this.hitboxes_CLICK, null));
			// buttonsMenu.push(m_trainingHud.createButton("Position Reset (Not made)", 1 , m_trainingHud._containerWidth,null,this.hitboxes_CLICK, null));
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

		public function hitstun_CLICK(ON:Boolean):void
		{
			GameMenu.HitStun = ON;
		}
		
		public function buffer_CHANGE(value:String):void
		{
			if(value == "Low")
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
			else if(value == "Offline")
			{
				GameController.currentGame.LevelData.inputBuffer = 0;
			}
			trace(GameController.currentGame.LevelData.inputBuffer)
		}


		public function killEvents():void
		{
			trace("killed game menu events")
			//Main.Root.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
		}
		
	}
}