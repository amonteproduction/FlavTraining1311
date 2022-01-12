﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.menus.MuteMenu

package com.mcleodgaming.ssf2.menus
{
    import com.mcleodgaming.ssf2.util.FrameTimer;
    import com.mcleodgaming.ssf2.util.ResourceManager;
    import com.mcleodgaming.ssf2.Main;
    import flash.events.Event;

    public class MuteMenu extends Menu 
    {

        private var m_state:int;
        private var m_stateTimer:FrameTimer;

        public function MuteMenu()
        {
            m_subMenu = ResourceManager.getLibraryMC("menu_mute");
            m_container.addChild(m_subMenu);
            m_subMenu.x = (Main.Width / 2);
            m_subMenu.y = (Main.Height / 2);
            this.m_state = 0;
            this.m_stateTimer = new FrameTimer(30);
            m_fillBackground = false;
        }

        override public function makeEvents():void
        {
            super.makeEvents();
            Main.Root.addEventListener(Event.ADDED, moveToFront);
            Main.Root.addEventListener(Event.ENTER_FRAME, this.fade);
            this.m_stateTimer.reset();
            m_subMenu.alpha = 1;
            this.m_state = 0;
        }

        override public function killEvents():void
        {
            super.killEvents();
            Main.Root.removeEventListener(Event.ADDED, moveToFront);
            Main.Root.removeEventListener(Event.ENTER_FRAME, this.fade);
        }

        private function fade(e:Event):void
        {
            if (this.m_state === 0)
            {
                this.m_stateTimer.tick();
                if (this.m_stateTimer.IsComplete)
                {
                    this.m_stateTimer.reset();
                    this.m_state = 1;
                };
            }
            else
            {
                if (this.m_state === 1)
                {
                    this.m_stateTimer.tick();
                    m_subMenu.alpha = (1 - (this.m_stateTimer.CurrentTime / this.m_stateTimer.MaxTime));
                    if (this.m_stateTimer.IsComplete)
                    {
                        this.m_stateTimer.reset();
                        removeSelf();
                    };
                };
            };
        }


    }
}//package com.mcleodgaming.ssf2.menus

