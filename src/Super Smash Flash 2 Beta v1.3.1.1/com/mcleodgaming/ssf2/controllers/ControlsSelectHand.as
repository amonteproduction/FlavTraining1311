﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.controllers.ControlsSelectHand

package com.mcleodgaming.ssf2.controllers
{
    import __AS3__.vec.Vector;
    import flash.display.MovieClip;
    import flash.events.Event;
    import com.mcleodgaming.ssf2.events.GamepadEvent;
    import flash.events.KeyboardEvent;
    import flash.events.MouseEvent;
    import __AS3__.vec.*;

    public class ControlsSelectHand extends SelectHand 
    {

        private var m_enabled:Boolean;

        public function ControlsSelectHand(targetMC:MovieClip, buttons:Vector.<ControlsButton>, backFunc:Function)
        {
            var convertedButtons:Vector.<HandButton> = new Vector.<HandButton>();
            var i:int;
            while (i < buttons.length)
            {
                convertedButtons.push(buttons[i]);
                i++;
            };
            super(targetMC, convertedButtons, backFunc);
            START_POSITION.x = -295;
            START_POSITION.y = 113;
            BOUNDS_RECT.x = -300;
            BOUNDS_RECT.y = -165;
            BOUNDS_RECT.width = 580;
            BOUNDS_RECT.height = 360;
            this.m_enabled = true;
        }

        public function get enabled():Boolean
        {
            return (this.m_enabled);
        }

        public function set enabled(value:Boolean):void
        {
            this.m_enabled = value;
        }

        override protected function checkControls(e:Event):void
        {
            if ((!(this.m_enabled)))
            {
                return;
            };
            super.checkControls(e);
        }

        override protected function checkHit(e:Event):void
        {
            if ((!(this.m_enabled)))
            {
                return;
            };
            var isInputEvent:Boolean = ((e is KeyboardEvent) || (e is GamepadEvent));
            var j:int;
            if (((((MenuController.controlsMenu.TapJumpCheckBox.enabled) && (checkBounds(MenuController.controlsMenu.TapJumpCheckBox))) && (m_hand.visible)) && (isInputEvent)))
            {
                j = 0;
                while (j < m_players.length)
                {
                    if (m_players[j].IsDown(m_players[j]._BUTTON2))
                    {
                        MenuController.controlsMenu.TapJumpCheckBox.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
                    };
                    j++;
                };
            };
            if (((((MenuController.controlsMenu.AutoDashCheckBox.enabled) && (checkBounds(MenuController.controlsMenu.AutoDashCheckBox))) && (m_hand.visible)) && (isInputEvent)))
            {
                j = 0;
                while (j < m_players.length)
                {
                    if (m_players[j].IsDown(m_players[j]._BUTTON2))
                    {
                        MenuController.controlsMenu.AutoDashCheckBox.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
                    };
                    j++;
                };
            };
            if (((((MenuController.controlsMenu.DTDashCheckBox.enabled) && (checkBounds(MenuController.controlsMenu.DTDashCheckBox))) && (m_hand.visible)) && (isInputEvent)))
            {
                j = 0;
                while (j < m_players.length)
                {
                    if (m_players[j].IsDown(m_players[j]._BUTTON2))
                    {
                        MenuController.controlsMenu.DTDashCheckBox.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
                    };
                    j++;
                };
            };
            super.checkHit(e);
        }


    }
}//package com.mcleodgaming.ssf2.controllers

