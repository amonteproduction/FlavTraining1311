package com.pecefulmods
{
	
	import com.mcleodgaming.ssf2.menus.*;
	import com.mcleodgaming.ssf2.enums.Mode;
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
	import flash.events.EventDispatcher;
	import com.pecefulmods.DrawingShapes; 
	import com.mcleodgaming.ssf2.util.*;
	import com.mcleodgaming.ssf2.audio.SoundQueue;
	import com.pecefulmods.TrainingMenus.*;
	import flash.geom.ColorTransform;
	import com.mcleodgaming.ssf2.engine.InteractiveSprite;
	import com.mcleodgaming.ssf2.controllers.GameController;	
	import com.mcleodgaming.ssf2.menus.MenuMapper;
	
	public class TrainingHUD extends Menu 
	{
		public var m_stagef:Stage;
		public var m_stage:StageData;
		public var container = new MovieClip(); 
		public var _containerWidth = 180;
		public var Background:Sprite;
		public var m_setKey:MovieClip;
		public static var BETA_ON:Boolean = false;
		
		private var buttonsMenu:Vector.<MovieClip>;
		private var MapperButtons:Vector.<MenuMapperNode>;
		private var char_position:Object =  new Object();
		private var setsave:Boolean = false;
		private var m_homeMenuMapper:MenuMapper;
		public var m_switchMenu:Boolean;
		public var m_keyblocker:Boolean = true;
		public var m_keybutton:MovieClip;
		private var showvisual:Boolean;
		public var m_hud:*;
		
		public function TrainingHUD()
		{	
			trace("started Training HUD")
		}

		public function init()
		{
         	
			
			buttonsMenu = new Vector.<MovieClip>();
			MapperButtons = new Vector.<MenuMapperNode>();
			
			//buttonsMenu.push(createButton("Game", 0 , _containerWidth));
			buttonsMenu.push(createButton("CPU", 0 , _containerWidth, new CPUMenu(this)));
			buttonsMenu.push(createButton("Display (Soon™)", 0 , _containerWidth));
			buttonsMenu.push(createButton("Position Reset", 0 , _containerWidth, new StageMenu(this)));
			buttonsMenu.push(createButton("Options (Hitbox/Hitstun)", 0 , _containerWidth, new GameMenu(this)));
			
			m_menuMapper = this.m_homeMenuMapper = this.initMenuMapping(MapperButtons,buttonsMenu);
			this.createUI(_containerWidth);
			m_disablePauseMapping = true;
			container.visible = false;
			m_switchMenu = true;
			this.makeEvents();
			MultiplayerManager.makeNotifier();
			Main.Root.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.menuswitch);
			
			
			

		}
		
		public function initMenuMapping(_mapbuttons:Vector.<MenuMapperNode>, _buttonsMenu:Vector.<MovieClip>):MenuMapper
        {
        	for (var i:int = 0; i < _buttonsMenu.length; i++)
        	{
        		 _mapbuttons[i] = new MenuMapperNode(_buttonsMenu[i]);
        	}
			
			for (var j:int = 0; j < _buttonsMenu.length; j++)
        	{
				if ((_buttonsMenu.length - 1) == 0)
				{
					_mapbuttons[0].updateNodes([_mapbuttons[0]], [_mapbuttons[0]], null, null, this.buttonOver, null, _buttonsMenu[j].func_CLICK, menu_BACK, null, null,  menu_PREV, menu_NEXT );
				
				}
				else if (j == 0)
				{
					_mapbuttons[j].updateNodes([_mapbuttons[_buttonsMenu.length - 1]], [_mapbuttons[j+1]], null, null, this.buttonOver, null, _buttonsMenu[j].func_CLICK, menu_BACK, null, null,  menu_PREV, menu_NEXT );
				}
				else if (j == _buttonsMenu.length - 1)
				{
					_mapbuttons[j].updateNodes([_mapbuttons[j - 1]], [_mapbuttons[0]], null, null, this.buttonOver, null, _buttonsMenu[j].func_CLICK, menu_BACK, null, null,  menu_PREV, menu_NEXT );			

				}
				else
				{
					_mapbuttons[j].updateNodes([_mapbuttons[j - 1]], [_mapbuttons[j + 1]], null, null, this.buttonOver, null, _buttonsMenu[j].func_CLICK, menu_BACK, null, null, menu_PREV, menu_NEXT );			
				}
        	}
			
        	return new MenuMapper(_mapbuttons[0]);
			
        }
		
		override public function makeEvents():void
		{
			super.makeEvents();
            resetAllButtons();
			Main.Root.stage.addEventListener(Event.ENTER_FRAME, this.manageMenuMappings);
		}

		
		override public function manageMenuMappings(e:Event):void
        {
            if (((((GameController.stageData) && (GameController.stageData.FreezeKeys)) && (GameController.stageData.GameRef.GameMode == Mode.TRAINING)) && (!(this.m_homeMenuMapper == null)) && (this.m_switchMenu == true) && (this.m_keyblocker == true)))
            {
                super.manageMenuMappings(e);
            }
            else
            {
                return;
            };
        }

        public function menuswitch(e:KeyboardEvent):void
        {
        	if (showvisual == false)
        	{
        		return;
        	}
        	if (e.keyCode === Key.TAB)
        	{
        		if (this.m_switchMenu == true)
        		{
					SoundQueue.instance.playSoundEffect("menu_selectstage");
        			//container.visible = false;
        			m_hud.m_switchMenu = true;
        			m_hud.showTrainingDisplay();
        			this.m_switchMenu = false;
        		}
        		else
        		{
					SoundQueue.instance.playSoundEffect("menu_selectstage");					
        			container.visible = true;
        			m_hud.m_switchMenu = false;
        			//m_hud.temphide = false;
        			this.m_switchMenu = true;
        		}

        	}
        }

        private function menukeyset(e:KeyboardEvent):void
        {
            var newKey:Number = e.keyCode;
            controller = SaveData.Controllers[0];
            if (((!(Utils.KEY_ARR[newKey] == undefined)) && (!(Utils.KEY_ARR[newKey] == null))))
            {
                if (newKey != 27)
                {
                    if (newKey == 46)
                    {
						m_keybutton.txt1.text = "N/A";
						m_keybutton.txt1.setTextFormat(m_keybutton.text1format)
						m_keybutton.txt1.textColor = 0xFFFFFF;
						m_keybutton.func_CLICK_OBJ(-1);
						trace("unsetinput");
                    }
                    else if (newKey == controller.KeyboardInstance.ControlsMap[controller._BUTTON1] || newKey == controller.KeyboardInstance.ControlsMap[controller._START])
                    {
                    	//Do nothing
                    }
                    else
                    {
						m_keybutton.txt1.text = Utils.KEY_ARR[newKey];
						m_keybutton.txt1.setTextFormat(m_keybutton.text1format)
						m_keybutton.txt1.textColor = 0xFFFFFF;
						m_keybutton.func_CLICK_OBJ(newKey);
                        trace("Set put here");
                    };
                };
				m_setKey.visible = false;
				this.m_keyblocker = true; 
				trace("Exit menu code here");
				Main.Root.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.menukeyset);

            };
        
        }

		public function showTrainingDisplay():void
        {
        	// if (m_switchMenu == false)
        	// {
        		
        	// 	return;
        	// }
            if ((!(GameController.stageData)))
            {
                return;
            };
           container.visible = true;
		m_hud.showTrainingDisplay();
		showvisual = true;

        }

        public function hideTrainingDisplay():void
        {
           container.visible = false;
           showvisual = false
        }
		
		public function createButton(name:String = "null",type:int = 0, _width:int=0,LinkObj:* = null,funcClick:Function = null, funcBack:Function = null, defualButtons:Array = null):MovieClip
		{
			var buttonContainer = new MovieClip();
			buttonContainer.func_CLICK = menu_CLICK;
			buttonContainer.func_BACK = menu_BACK;
			
			buttonContainer.func_CLICK_OBJ = funcClick;
			

			if (type == 0)
			{
				
				buttonContainer.type = 0;
				buttonContainer.MenuLink = LinkObj;

				var rectangle:Sprite = new Sprite; // initializing the variable named rectangle
				rectangle.graphics.beginFill(0x000000,.1);//.53); // choosing the colour for the fill, here it is red
				//rectangle.graphics.lineStyle(.1,0xFF3030,.13);
				rectangle.graphics.drawRect(0, 0, _width,20); // (x spacing, y spacing, width, height)
				rectangle.graphics.endFill(); // not always needed but I like to put it in to end the fill
				rectangle.x = container.tempx;

				buttonContainer.background_btn = rectangle;

				var format1:TextFormat = new TextFormat();
				format1.font="Arial";
				format1.align = "left"
				format1.size = 10;
				format1.leftMargin = 8;

				var txt:TextField = new TextField();
				txt.selectable = false;
				txt.text = name;
				txt.textColor = 0xFFFFFF;
				txt.setTextFormat(format1);
				txt.border  = false;
				txt.borderColor =  0xFFFFFF;
				txt.width = container.tempwidth;
				txt.height = 19;
				txt.y = 3

				buttonContainer.txt = txt;
				buttonContainer.addChild(txt);	
				buttonContainer.addChild(rectangle);
				
				return buttonContainer;
			}
			
			else if (type == 1 || type == 2 || type == 3)
			{
				buttonContainer.type = type;
				var rectangle:Sprite = new Sprite; // initializing the variable named rectangle
				rectangle.graphics.beginFill(0x000000,.1);//.53); // choosing the colour for the fill, here it is red
				rectangle.graphics.lineStyle(.1,0xFF3030,.13);
				rectangle.graphics.drawRect(0, 0, _width,20); // (x spacing, y spacing, width, height)
				rectangle.graphics.endFill(); // not always needed but I like to put it in to end the fill
				rectangle.x = container.tempx;

				buttonContainer.background_btn = rectangle;

				var format1:TextFormat = new TextFormat();
				format1.font="Arial";
				format1.align = "left"
				format1.size = 10;
				format1.leftMargin = 8;

				var format2:TextFormat = new TextFormat();
				format2.font="Arial";
				format2.align = "right"
				format2.size = 10;
				format2.rightMargin = 8;

				var txt:TextField = new TextField();
				txt.selectable = false;
				txt.text = name;
				txt.textColor = 0xFFFFFF;
				txt.setTextFormat(format1);
				txt.border  = false;
				txt.borderColor =  0xFFFFFF;
				txt.width = _width;
				txt.height = 19;
				txt.y = 3
				
				var txt1:TextField = new TextField();
				txt1.selectable = false;
				txt1.text = ((defualButtons != null) ? defualButtons[0] : "OFF"); 
				txt1.textColor = ((defualButtons != null && defualButtons[0] == "ON") ? 0x57EEFF : 0xFFFFFF); 
				txt1.setTextFormat(format2);
				txt1.border  = false;
				txt1.borderColor =  0xFFFFFF;
				txt1.width = _width;
				txt1.height = 19;
				txt1.y = 3

				if (type == 2 || type == 3)
				{	
					txt1 = new TextField();
					txt1.selectable = false;
					txt1.text = defualButtons[0];
					txt1.textColor = 0xFFFFFF;
					txt1.setTextFormat(format2);
					txt1.border  = false;
					txt1.borderColor =  0xFFFFFF;
					txt1.width = _width;
					txt1.height = 19;
					txt1.y = 3
					
					buttonContainer.buttonlist = defualButtons;
					buttonContainer.pointer = 0;
				}
				
				buttonContainer.txt = txt;
				buttonContainer.txt1 = txt1;
				buttonContainer.text1format = format2;
				buttonContainer.addChild(txt);	
				buttonContainer.addChild(txt1);	
				buttonContainer.addChild(rectangle);
				return buttonContainer;
				
			}
			

			
			
		}

		public function createUI(_width:int):void
		{
			container = new MovieClip()
			 
			var format1:TextFormat = new TextFormat();

			format1.font="Eras Light ITC"; //Eras Light ITC
			format1.size=14;
			format1.align = "center";
			
			//Background
			Background = new Sprite; // initializing the variable named rectangle
			Background.graphics.beginFill(0x000000,.53); // choosing the colour for the fill, here it is red
			Background.graphics.lineStyle(1,0xFFFFFF,.13);
			Background.graphics.drawRect(0, 0, _width,180); // (x spacing, y spacing, width, height)
			Background.graphics.endFill(); // not always needed but I like to put it in to end the fill
			Background.x = Main.Width - Background.width 
			Background.y = 80
			
			//Background Container 
			container.tempx = Main.Width - Background.width;
			container.tempy = Background.y;
			container.tempwidth = _width;
			container.addChild(Background); 
			
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
			Menutext.text = "TRAINING MOD";
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
			footer.text = "Select [ATK], Back [SP], Switch Menu [TAB]";
			footer.textColor = 0xC0C0C0;
			footer.setTextFormat(format2);
			footer.border  = false;
			footer.borderColor =  0xFFFFFF;
			footer.width = container.tempwidth;
			footer.height = 19;
			footer.y = 165;

			Background.addChild(footer); 


			
			this.addButtons(buttonsMenu);			
			m_stagef.addChild(container);
			
		}

		public function addButtons(buttonsObj:Object, menuMapper:MenuMapper = null):void
		{
			var ymulti = 10;
			var tempmovieclip:MovieClip = new MovieClip();
			for each(var i in buttonsObj)
			{
				i.y = ymulti = 20 + ymulti;
				i.addEventListener(MouseEvent.MOUSE_OVER, this.menu_OVER);
				i.addEventListener(MouseEvent.MOUSE_OUT, this.menu_MOUSE_OUT);
				i.addEventListener(MouseEvent.CLICK, i.func_CLICK);
				tempmovieclip.addChild(i);

			}
			if (menuMapper == null)
			{
				menuMapper = this.m_homeMenuMapper;
			}
			
			Background.addChild(tempmovieclip);
			m_menuMapper = menuMapper;
			setMenuMappingFocus();
		}

		override public function killEvents():void
        {
            super.killEvents();
            for each(var i in buttonsMenu)
			{
                i.removeEventListener(MouseEvent.MOUSE_OVER, this.menu_OVER);
				i.removeEventListener(MouseEvent.MOUSE_OUT, this.menu_MOUSE_OUT);
				i.removeEventListener(MouseEvent.CLICK, i.func_CLICK);
				if (i.MenuLink != null)
				{
					i.MenuLink.killEvents();
				}
            };
            Main.Root.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.menuswitch);
            Main.Root.stage.removeEventListener(Event.ENTER_FRAME, manageMenuMappings);
            m_hud.restartinit();
        	m_stagef.removeChild(container);
        }

        public override function resetButtonFocus(mc:MovieClip):void
        {
            this.buttonOut(mc);
        }

        public override function setButtonFocus(mc:MovieClip):void
        {
			 this.buttonOver(mc);
        }

		
		
		public function buttonOver(mc:MovieClip):void
		{
			if (mc == null)
			{
				mc = m_menuMapper.currentNode.clip;
			}


			var ct:ColorTransform = new ColorTransform();
			ct.color = 0xFFFFFF;
			ct.alphaMultiplier = .56;
			mc.background_btn.transform.colorTransform = ct; // choosing the colour for the fill, here it is red
			mc.txt.textColor = 0x57EEFF;
		}
		
		public function buttonOut(mc:MovieClip):void
		{
			var ct:ColorTransform = new ColorTransform();
			mc.background_btn.transform.colorTransform = ct;
			mc.txt.textColor = 0xFFFFFF;
		}


		
		public function menu_PREV(e:MouseEvent):void
		{
			var mc = this.movieClipFinder(e);
			if (mc == null || mc.buttonlist == null || mc.type == 3) { return; }
			
			mc.pointer--
			
			if (mc.pointer < 0)
			{
				mc.pointer = mc.buttonlist.length - 1
			}
			mc.txt1.text = mc.buttonlist[mc.pointer];
			mc.txt1.setTextFormat(mc.text1format)
			mc.txt1.textColor = 0xFFFFFF;
			mc.func_CLICK_OBJ(mc.buttonlist[mc.pointer]);
		}

		public function menu_NEXT(e:MouseEvent):void
		{
			var mc = this.movieClipFinder(e);
			
			if (mc == null || mc.buttonlist == null || mc.type == 3) { return; }
			mc.pointer++
			if (mc.pointer > (mc.buttonlist.length - 1 ))
			{
				mc.pointer = 0
			}
			
			mc.txt1.text = mc.buttonlist[mc.pointer];
			mc.txt1.setTextFormat(mc.text1format)
			mc.txt1.textColor = 0xFFFFFF;
			
			mc.func_CLICK_OBJ(mc.buttonlist[mc.pointer]);
		}
		
		public function menu_OVER(e:MouseEvent) {
			this.buttonOver(e.currentTarget);
		}
		
		public function menu_MOUSE_OUT(e:MouseEvent) {
			this.buttonOut(e.currentTarget);
		}
		
		public function menu_CLICK(e:MouseEvent) 
		{
			
			var mc = this.movieClipFinder(e);

			if (mc == null) { return; }
			
			//trace("Type" + mc.type);
			
			if (mc.type == 0)
			{
				if (mc.MenuLink == null)
				{
					//SoundQueue.instance.playSoundEffect("menu_error"); Works but dont really like that sound that much
					return;
				}
				Background.removeChild(mc.parent);
				this.addButtons(mc.MenuLink.buttonmenu,mc.MenuLink.menuMapper);
			}
			else if (mc.type == 1)
			{
				if (mc.txt1.text == "OFF")
				{
					
					mc.txt1.text = "ON";
					mc.txt1.setTextFormat(mc.text1format)
					mc.txt1.textColor = 0x57EEFF;
					mc.func_CLICK_OBJ(true);
				
				}
				else if (mc.txt1.text == "ON")
				{	
					mc.txt1.text = "OFF";
					mc.txt1.setTextFormat(mc.text1format)
					mc.txt1.textColor = 0xFFFFFF;
					mc.func_CLICK_OBJ(false);

				}
			}
			else if (mc.type == 2)
			{
				this.menu_NEXT(e);
			}
			else if (mc.type == 3)
			{
				// If working on this again change this so that it works with menu
				Main.Root.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.menukeyset);
				m_setKey.visible = true; //Opens the Key setter
				this.m_keyblocker = false; // Pauses the Menu mapper from changing focus 
				mc.m_prevblock = true;
				this.m_keybutton = mc; //Save the button focus for later so it can change once the key comes in 

			}
			SoundQueue.instance.playSoundEffect("menu_select");
		
		}
		
		public function menu_BACK(e:MouseEvent) 
		{
			var mc = this.movieClipFinder(e);

			if (m_menuMapper == this.m_homeMenuMapper)
			{
				return;
			}

			if (mc.m_prevblock != null && mc.m_prevblock == true)
			{
				mc.m_prevblock = false;
				return;
			}
	
			if (mc == null) { return; }

			Background.removeChild(mc.parent);
			this.addButtons(buttonsMenu);
		}

		
		
        public function movieClipFinder(e:*):MovieClip
        {
        	var mc:MovieClip;
        	if (e != null)
			{
				mc = e.currentTarget;
			}
			else if (e == null)
			{
				mc = m_menuMapper.currentNode.clip;
				if (mc == null)
				{
					return null;
				}
			}
			else
			{
				return null;
			}

			return mc;
        }
		
		

	}
}