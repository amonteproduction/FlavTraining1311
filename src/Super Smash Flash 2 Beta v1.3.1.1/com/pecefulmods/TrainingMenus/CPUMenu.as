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
	import com.mcleodgaming.ssf2.engine.AI;
	import com.mcleodgaming.ssf2.menus.HudMenu;
	
	public class CPUMenu 
	{
		
		public static var hitLag:Boolean = true;
		private var buttonsMenu:Vector.<MovieClip>;
		private var MapperButtons:Vector.<MenuMapperNode>;
		private var m_menuMapper:MenuMapper;
		
		public function CPUMenu(traininghud:TrainingHUD):void
		{	
			buttonsMenu = new Vector.<MovieClip>();
			MapperButtons = new Vector.<MenuMapperNode>();
			m_trainingHud = traininghud;
			
		
			var m_diMenu = ["No DI", "DI Up", "DI Down", "DI Left", "DI Right", "DI UpLeft", "DI UpRight", "DI DownLeft", "DI DownRight", "Random"];
			// var m_techMenu = ["None", "Left", "Right", "In Place" ,"Random"];
			
	
			buttonsMenu.push(m_trainingHud.createButton("DI", 2 , m_trainingHud._containerWidth,null,this.di_CHANGE, null, m_diMenu));
			// buttonsMenu.push(m_trainingHud.createButton("Permanant Shield", 1 , m_trainingHud._containerWidth,null,this.shieldPerm_CLICK, null));
			// buttonsMenu.push(m_trainingHud.createButton("Shield Grabbing", 1 , m_trainingHud._containerWidth,null,this.shieldGrab_CLICK, null));
			// buttonsMenu.push(m_trainingHud.createButton("Tech", 2 , m_trainingHud._containerWidth,null,this.tech_CHANGE, null, m_techMenu));
			m_menuMapper = m_trainingHud.initMenuMapping(MapperButtons,buttonsMenu);

		}

		public function get buttonmenu():Object
		{
			return buttonsMenu;
		}

		public function get menuMapper():MenuMapper
		{
			return m_menuMapper;
		}
		
		
		public function shieldPerm_CLICK(ON:Boolean):void
		{
			HudMenu.PermanantShieldCPU = ON;
		}

		public function shieldGrab_CLICK(ON:Boolean):void
		{
			 AI.CPUShieldGrabbing = ON;
		}
		
		public function tech_CHANGE(value:String):void
		{
			AI.TechMode = value;
		}

		public function di_CHANGE(value:String):void
		{
			AI.DIMode = value;
		}



		public function killEvents():void
		{
			trace("killed game cpu events")
			//Main.Root.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.toggleDebugConsole);
		}
		
	}
}