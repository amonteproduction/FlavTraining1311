﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.menus.QualityMenu

package com.mcleodgaming.ssf2.menus
{
    import com.mcleodgaming.ssf2.controllers.SelectHand;
    import fl.controls.ComboBox;
    import flash.display.MovieClip;
    import com.mcleodgaming.ssf2.util.ResourceManager;
    import com.mcleodgaming.ssf2.controllers.QualitySelectHand;
    import com.mcleodgaming.ssf2.controllers.HandButton;
    import com.mcleodgaming.ssf2.Main;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import com.mcleodgaming.ssf2.util.SaveDataMigrations;
    import flash.display.StageQuality;
    import com.mcleodgaming.ssf2.util.SaveData;
    import com.mcleodgaming.ssf2.audio.SoundQueue;
    import com.mcleodgaming.ssf2.controllers.MenuController;
    import com.mcleodgaming.ssf2.util.*;
    import com.mcleodgaming.ssf2.audio.*;
    import com.mcleodgaming.ssf2.controllers.*;
    import __AS3__.vec.*;

    public class QualityMenu extends Menu 
    {

        private var selectHand:SelectHand;
        private var m_fullscreen_quality:ComboBox;
        private var m_display_quality:ComboBox;
        private var m_stage_effects:ComboBox;
        private var m_global_effects:ComboBox;
        private var m_hit_effects:ComboBox;
        private var m_hud_alpha:ComboBox;
        private var m_knockback_smoke:ComboBox;
        private var m_screen_flash:ComboBox;
        private var m_shadows:ComboBox;
        private var m_weather:ComboBox;
        private var m_ambient_lighting:ComboBox;
        private var m_menu_bg:ComboBox;
        private var m_advanced_btn:MovieClip;
        private var m_advanced_mc:MovieClip;

        public function QualityMenu()
        {
            m_subMenu = ResourceManager.getLibraryMC("menu_quality");
            m_backgroundID = "space";
            m_container.addChild(m_subMenu);
            this.m_advanced_btn = m_subMenu.advanced_btn;
            this.m_advanced_mc = m_subMenu.advanced_mc;
            this.m_advanced_mc.visible = false;
            this.m_fullscreen_quality = this.m_advanced_mc.fullscreen_quality;
            this.m_fullscreen_quality.addItem({"label":"Hardware (Speed)"});
            this.m_fullscreen_quality.addItem({"label":"Software (Quality)"});
            this.m_display_quality = this.m_advanced_mc.display_quality;
            this.m_display_quality.addItem({"label":"Low"});
            this.m_display_quality.addItem({"label":"Medium"});
            this.m_display_quality.addItem({"label":"High"});
            this.m_display_quality.addItem({"label":"Best"});
            this.m_stage_effects = this.m_advanced_mc.stage_effects;
            this.m_stage_effects.addItem({"label":"Disabled"});
            this.m_stage_effects.addItem({"label":"Simple"});
            this.m_stage_effects.addItem({"label":"Enabled"});
            this.m_global_effects = this.m_advanced_mc.global_effects;
            this.m_global_effects.addItem({"label":"Disabled"});
            this.m_global_effects.addItem({"label":"Enabled"});
            this.m_hit_effects = this.m_advanced_mc.hit_effects;
            this.m_hit_effects.addItem({"label":"Disabled"});
            this.m_hit_effects.addItem({"label":"Enabled"});
            this.m_hud_alpha = this.m_advanced_mc.hud_alpha;
            this.m_hud_alpha.addItem({"label":"Disabled"});
            this.m_hud_alpha.addItem({"label":"Enabled"});
            this.m_knockback_smoke = this.m_advanced_mc.knockback_smoke;
            this.m_knockback_smoke.addItem({"label":"Disabled"});
            this.m_knockback_smoke.addItem({"label":"Enabled"});
            this.m_screen_flash = this.m_advanced_mc.screen_flash;
            this.m_screen_flash.addItem({"label":"Disabled"});
            this.m_screen_flash.addItem({"label":"Enabled"});
            this.m_shadows = this.m_advanced_mc.shadows;
            this.m_shadows.addItem({"label":"Disabled"});
            this.m_shadows.addItem({"label":"Enabled"});
            this.m_weather = this.m_advanced_mc.weather;
            this.m_weather.addItem({"label":"Disabled"});
            this.m_weather.addItem({"label":"Enabled"});
            this.m_ambient_lighting = this.m_advanced_mc.ambient_lighting;
            this.m_ambient_lighting.addItem({"label":"Disabled"});
            this.m_ambient_lighting.addItem({"label":"Enabled"});
            this.m_menu_bg = this.m_advanced_mc.menu_bg;
            this.m_menu_bg.addItem({"label":"Disabled"});
            this.m_menu_bg.addItem({"label":"Enabled"});
            this.selectHand = new QualitySelectHand(m_subMenu, new Vector.<HandButton>(), this.back_CLICK_quality);
            this.selectHand.addClickEventClipHitTest(m_subMenu.bg_top.back_btn);
            this.selectHand.addClickEventClipHitTest(m_subMenu.bg_top.home_btn);
            this.selectHand.addClickEventClipCheckBounds(m_subMenu.potato_btn);
            this.selectHand.addClickEventClipCheckBounds(m_subMenu.extra_low_btn);
            this.selectHand.addClickEventClipCheckBounds(m_subMenu.low_btn);
            this.selectHand.addClickEventClipCheckBounds(m_subMenu.med_btn);
            this.selectHand.addClickEventClipCheckBounds(m_subMenu.high_btn);
            this.selectHand.addClickEventClipCheckBounds(m_subMenu.custom_btn);
            this.selectHand.addClickEventClipCheckBounds(this.m_advanced_btn);
            initMenuMappings();
            m_subMenu.x = (Main.Width / 2);
            m_subMenu.y = (Main.Height / 2);
        }

        public function get FullScreenQualityComboBox():ComboBox
        {
            return (this.m_fullscreen_quality);
        }

        public function get DisplayQualityComboBox():ComboBox
        {
            return (this.m_display_quality);
        }

        public function get StageEffectsQualityComboBox():ComboBox
        {
            return (this.m_stage_effects);
        }

        public function get GlobalEffectsQualityComboBox():ComboBox
        {
            return (this.m_global_effects);
        }

        public function get HitEffectsComboBox():ComboBox
        {
            return (this.m_hit_effects);
        }

        public function get HUDAlphaQualityComboBox():ComboBox
        {
            return (this.m_hud_alpha);
        }

        public function get KnockbackSmokeQualityComboBox():ComboBox
        {
            return (this.m_knockback_smoke);
        }

        public function get ScreenFlashQualityComboBox():ComboBox
        {
            return (this.m_screen_flash);
        }

        public function get ShadowsQualityComboBox():ComboBox
        {
            return (this.m_shadows);
        }

        public function get WeatherQualityComboBox():ComboBox
        {
            return (this.m_weather);
        }

        public function get AmbientLightingQualityComboBox():ComboBox
        {
            return (this.m_ambient_lighting);
        }

        public function get MenuBGQualityComboBox():ComboBox
        {
            return (this.m_menu_bg);
        }

        public function get AdvancedMC():MovieClip
        {
            return (this.m_advanced_btn);
        }

        override public function makeEvents():void
        {
            if (m_showCount == 0)
            {
                findSubMenuButtons();
                findSpecificMenuButtons(m_subMenu.bg_top);
            };
            super.makeEvents();
            this.m_advanced_btn.visible = true;
            this.m_advanced_mc.visible = false;
            m_subMenu.bg_top.back_btn.addEventListener(MouseEvent.CLICK, this.back_CLICK_quality);
            m_subMenu.bg_top.back_btn.addEventListener(MouseEvent.ROLL_OVER, this.back_ROLL_OVER_quality);
            m_subMenu.bg_top.home_btn.addEventListener(MouseEvent.CLICK, this.home_CLICK);
            this.m_fullscreen_quality.addEventListener(Event.CHANGE, this.fullscreen_quality_CLICK);
            this.m_fullscreen_quality.addEventListener(MouseEvent.MOUSE_OVER, this.fullscreen_quality_HOVER);
            this.m_fullscreen_quality.addEventListener(MouseEvent.MOUSE_OUT, this.fullscreen_quality_MOUSE_OUT);
            this.m_display_quality.addEventListener(Event.CHANGE, this.display_quality_CLICK);
            this.m_display_quality.addEventListener(MouseEvent.MOUSE_OVER, this.display_quality_HOVER);
            this.m_display_quality.addEventListener(MouseEvent.MOUSE_OUT, this.display_quality_MOUSE_OUT);
            this.m_stage_effects.addEventListener(Event.CHANGE, this.stage_effects_CLICK);
            this.m_stage_effects.addEventListener(MouseEvent.MOUSE_OVER, this.stage_effects_HOVER);
            this.m_stage_effects.addEventListener(MouseEvent.MOUSE_OUT, this.stage_effects_MOUSE_OUT);
            this.m_global_effects.addEventListener(Event.CHANGE, this.global_effects_CLICK);
            this.m_global_effects.addEventListener(MouseEvent.MOUSE_OVER, this.global_effects_HOVER);
            this.m_global_effects.addEventListener(MouseEvent.MOUSE_OUT, this.global_effects_MOUSE_OUT);
            this.m_hit_effects.addEventListener(Event.CHANGE, this.hit_effects_CLICK);
            this.m_hit_effects.addEventListener(MouseEvent.MOUSE_OVER, this.hit_effects_HOVER);
            this.m_hit_effects.addEventListener(MouseEvent.MOUSE_OUT, this.hit_effects_MOUSE_OUT);
            this.m_hud_alpha.addEventListener(Event.CHANGE, this.hud_alpha_CLICK);
            this.m_hud_alpha.addEventListener(MouseEvent.MOUSE_OVER, this.hud_alpha_HOVER);
            this.m_hud_alpha.addEventListener(MouseEvent.MOUSE_OUT, this.hud_alpha_MOUSE_OUT);
            this.m_knockback_smoke.addEventListener(Event.CHANGE, this.knockback_smoke_CLICK);
            this.m_knockback_smoke.addEventListener(MouseEvent.MOUSE_OVER, this.knockback_smoke_HOVER);
            this.m_knockback_smoke.addEventListener(MouseEvent.MOUSE_OUT, this.knockback_smoke_MOUSE_OUT);
            this.m_screen_flash.addEventListener(Event.CHANGE, this.screen_flash_CLICK);
            this.m_screen_flash.addEventListener(MouseEvent.MOUSE_OVER, this.screen_flash_HOVER);
            this.m_screen_flash.addEventListener(MouseEvent.MOUSE_OUT, this.screen_flash_MOUSE_OUT);
            this.m_shadows.addEventListener(Event.CHANGE, this.shadows_CLICK);
            this.m_shadows.addEventListener(MouseEvent.MOUSE_OVER, this.shadows_HOVER);
            this.m_shadows.addEventListener(MouseEvent.MOUSE_OUT, this.shadows_MOUSE_OUT);
            this.m_weather.addEventListener(Event.CHANGE, this.weather_CLICK);
            this.m_weather.addEventListener(MouseEvent.MOUSE_OVER, this.weather_HOVER);
            this.m_weather.addEventListener(MouseEvent.MOUSE_OUT, this.weather_MOUSE_OUT);
            this.m_ambient_lighting.addEventListener(Event.CHANGE, this.ambient_lighting_CLICK);
            this.m_ambient_lighting.addEventListener(MouseEvent.MOUSE_OVER, this.ambient_lighting_HOVER);
            this.m_ambient_lighting.addEventListener(MouseEvent.MOUSE_OUT, this.ambient_lighting_MOUSE_OUT);
            this.m_advanced_btn.addEventListener(MouseEvent.CLICK, this.advanced_btn_CLICK);
            this.m_menu_bg.addEventListener(Event.CHANGE, this.menu_bg_CLICK);
            this.m_menu_bg.addEventListener(MouseEvent.MOUSE_OVER, this.menu_bg_HOVER);
            this.m_menu_bg.addEventListener(MouseEvent.MOUSE_OUT, this.menu_bg_MOUSE_OUT);
            m_subMenu.high_btn.addEventListener(MouseEvent.CLICK, this.high_CLICK);
            m_subMenu.med_btn.addEventListener(MouseEvent.CLICK, this.medium_CLICK);
            m_subMenu.low_btn.addEventListener(MouseEvent.CLICK, this.low_CLICK);
            m_subMenu.extra_low_btn.addEventListener(MouseEvent.CLICK, this.extra_low_CLICK);
            m_subMenu.potato_btn.addEventListener(MouseEvent.CLICK, this.potato_CLICK);
            this.selectHand.makeEvents();
            this.resetPresets();
            this.redrawDropdowns();
        }

        override public function killEvents():void
        {
            super.killEvents();
            m_subMenu.bg_top.back_btn.removeEventListener(MouseEvent.CLICK, this.back_CLICK_quality);
            m_subMenu.bg_top.back_btn.removeEventListener(MouseEvent.ROLL_OVER, this.back_ROLL_OVER_quality);
            m_subMenu.bg_top.home_btn.removeEventListener(MouseEvent.CLICK, this.home_CLICK);
            this.m_fullscreen_quality.removeEventListener(Event.CHANGE, this.fullscreen_quality_CLICK);
            this.m_fullscreen_quality.removeEventListener(MouseEvent.MOUSE_OVER, this.fullscreen_quality_HOVER);
            this.m_fullscreen_quality.removeEventListener(MouseEvent.MOUSE_OUT, this.fullscreen_quality_MOUSE_OUT);
            this.m_display_quality.removeEventListener(Event.CHANGE, this.display_quality_CLICK);
            this.m_display_quality.removeEventListener(MouseEvent.MOUSE_OVER, this.display_quality_HOVER);
            this.m_display_quality.removeEventListener(MouseEvent.MOUSE_OUT, this.display_quality_MOUSE_OUT);
            this.m_stage_effects.removeEventListener(Event.CHANGE, this.stage_effects_CLICK);
            this.m_stage_effects.removeEventListener(MouseEvent.MOUSE_OVER, this.stage_effects_HOVER);
            this.m_stage_effects.removeEventListener(MouseEvent.MOUSE_OUT, this.stage_effects_MOUSE_OUT);
            this.m_global_effects.removeEventListener(Event.CHANGE, this.global_effects_CLICK);
            this.m_global_effects.removeEventListener(MouseEvent.MOUSE_OVER, this.global_effects_HOVER);
            this.m_global_effects.removeEventListener(MouseEvent.MOUSE_OUT, this.global_effects_MOUSE_OUT);
            this.m_hit_effects.removeEventListener(Event.CHANGE, this.hit_effects_CLICK);
            this.m_hit_effects.removeEventListener(MouseEvent.MOUSE_OVER, this.hit_effects_HOVER);
            this.m_hit_effects.removeEventListener(MouseEvent.MOUSE_OUT, this.hit_effects_MOUSE_OUT);
            this.m_hud_alpha.removeEventListener(Event.CHANGE, this.hud_alpha_CLICK);
            this.m_hud_alpha.removeEventListener(MouseEvent.MOUSE_OVER, this.hud_alpha_HOVER);
            this.m_hud_alpha.removeEventListener(MouseEvent.MOUSE_OUT, this.hud_alpha_MOUSE_OUT);
            this.m_knockback_smoke.removeEventListener(Event.CHANGE, this.knockback_smoke_CLICK);
            this.m_knockback_smoke.removeEventListener(MouseEvent.MOUSE_OVER, this.knockback_smoke_HOVER);
            this.m_knockback_smoke.removeEventListener(MouseEvent.MOUSE_OUT, this.knockback_smoke_MOUSE_OUT);
            this.m_screen_flash.removeEventListener(Event.CHANGE, this.screen_flash_CLICK);
            this.m_screen_flash.removeEventListener(MouseEvent.MOUSE_OVER, this.screen_flash_HOVER);
            this.m_screen_flash.removeEventListener(MouseEvent.MOUSE_OUT, this.screen_flash_MOUSE_OUT);
            this.m_shadows.removeEventListener(Event.CHANGE, this.shadows_CLICK);
            this.m_shadows.removeEventListener(MouseEvent.MOUSE_OVER, this.shadows_HOVER);
            this.m_shadows.removeEventListener(MouseEvent.MOUSE_OUT, this.shadows_MOUSE_OUT);
            this.m_weather.removeEventListener(Event.CHANGE, this.weather_CLICK);
            this.m_weather.removeEventListener(MouseEvent.MOUSE_OVER, this.weather_HOVER);
            this.m_weather.removeEventListener(MouseEvent.MOUSE_OUT, this.weather_MOUSE_OUT);
            this.m_ambient_lighting.removeEventListener(Event.CHANGE, this.ambient_lighting_CLICK);
            this.m_ambient_lighting.removeEventListener(MouseEvent.MOUSE_OVER, this.ambient_lighting_HOVER);
            this.m_ambient_lighting.removeEventListener(MouseEvent.MOUSE_OUT, this.ambient_lighting_MOUSE_OUT);
            this.m_advanced_btn.removeEventListener(MouseEvent.CLICK, this.advanced_btn_CLICK);
            this.m_menu_bg.removeEventListener(Event.CHANGE, this.menu_bg_CLICK);
            this.m_menu_bg.removeEventListener(MouseEvent.MOUSE_OVER, this.menu_bg_HOVER);
            this.m_menu_bg.removeEventListener(MouseEvent.MOUSE_OUT, this.menu_bg_MOUSE_OUT);
            m_subMenu.high_btn.removeEventListener(MouseEvent.CLICK, this.high_CLICK);
            m_subMenu.med_btn.removeEventListener(MouseEvent.CLICK, this.medium_CLICK);
            m_subMenu.low_btn.removeEventListener(MouseEvent.CLICK, this.low_CLICK);
            m_subMenu.extra_low_btn.removeEventListener(MouseEvent.CLICK, this.extra_low_CLICK);
            m_subMenu.potato_btn.removeEventListener(MouseEvent.CLICK, this.potato_CLICK);
            this.selectHand.killEvents();
        }

        private function getQualityPreset(preset:String):Object
        {
            var i:*;
            var overrides:Object;
            var defaultSettings:Object = SaveDataMigrations.getInitialData().quality;
            if (preset === "maximum")
            {
                overrides = {};
            }
            else
            {
                if (preset === "medium")
                {
                    overrides = {
                        "fullscreen_quality":0,
                        "display_quality":StageQuality.MEDIUM,
                        "stage_effects":"simple"
                    };
                }
                else
                {
                    if (preset === "low")
                    {
                        overrides = {
                            "fullscreen_quality":0,
                            "display_quality":StageQuality.LOW,
                            "stage_effects":"simple",
                            "weather":false,
                            "ambient_lighting":false
                        };
                    }
                    else
                    {
                        if (preset === "extra_low")
                        {
                            overrides = {
                                "stage_effects":"disabled",
                                "fullscreen_quality":0,
                                "display_quality":StageQuality.LOW,
                                "global_effects":false,
                                "hit_effects":false,
                                "hud_alpha":false,
                                "knockback_smoke":false,
                                "screen_flash":false,
                                "shadows":false,
                                "weather":false,
                                "ambient_lighting":false
                            };
                        }
                        else
                        {
                            if (preset === "potato")
                            {
                                overrides = {
                                    "stage_effects":"disabled",
                                    "fullscreen_quality":0,
                                    "display_quality":StageQuality.LOW,
                                    "global_effects":false,
                                    "hit_effects":false,
                                    "hud_alpha":false,
                                    "knockback_smoke":false,
                                    "screen_flash":false,
                                    "shadows":false,
                                    "weather":false,
                                    "ambient_lighting":false,
                                    "menu_bg":false
                                };
                            };
                        };
                    };
                };
            };
            for (i in overrides)
            {
                defaultSettings[i] = overrides[i];
            };
            return (defaultSettings);
        }

        private function setQualityPreset(preset:String):void
        {
            var i:*;
            var settings:Object = this.getQualityPreset(preset);
            for (i in settings)
            {
                SaveData.Quality[i] = settings[i];
            };
            this.redrawDropdowns();
            this.resetPresets();
        }

        private function settingsAreEqual(settings:Object):Boolean
        {
            var i:*;
            for (i in settings)
            {
                if (settings[i] !== SaveData.Quality[i])
                {
                    return (false);
                };
            };
            return (true);
        }

        private function resetPresets():void
        {
            m_subMenu.high_btn.alpha = 0.5;
            m_subMenu.med_btn.alpha = 0.5;
            m_subMenu.low_btn.alpha = 0.5;
            m_subMenu.extra_low_btn.alpha = 0.5;
            m_subMenu.potato_btn.alpha = 0.5;
            m_subMenu.custom_btn.visible = false;
            if (this.settingsAreEqual(this.getQualityPreset("maximum")))
            {
                m_subMenu.high_btn.alpha = 1;
            }
            else
            {
                if (this.settingsAreEqual(this.getQualityPreset("medium")))
                {
                    m_subMenu.med_btn.alpha = 1;
                }
                else
                {
                    if (this.settingsAreEqual(this.getQualityPreset("low")))
                    {
                        m_subMenu.low_btn.alpha = 1;
                    }
                    else
                    {
                        if (this.settingsAreEqual(this.getQualityPreset("extra_low")))
                        {
                            m_subMenu.extra_low_btn.alpha = 1;
                        }
                        else
                        {
                            if (this.settingsAreEqual(this.getQualityPreset("potato")))
                            {
                                m_subMenu.potato_btn.alpha = 1;
                            }
                            else
                            {
                                m_subMenu.custom_btn.visible = true;
                            };
                        };
                    };
                };
            };
        }

        private function redrawDropdowns():void
        {
            this.m_fullscreen_quality.selectedIndex = SaveData.Quality.fullscreen_quality;
            if (SaveData.Quality.display_quality === StageQuality.LOW)
            {
                this.m_display_quality.selectedIndex = 0;
            }
            else
            {
                if (SaveData.Quality.display_quality === StageQuality.MEDIUM)
                {
                    this.m_display_quality.selectedIndex = 1;
                }
                else
                {
                    if (SaveData.Quality.display_quality === StageQuality.HIGH)
                    {
                        this.m_display_quality.selectedIndex = 2;
                    }
                    else
                    {
                        if (SaveData.Quality.display_quality === StageQuality.BEST)
                        {
                            this.m_display_quality.selectedIndex = 3;
                        };
                    };
                };
            };
            if (SaveData.Quality.stage_effects === "disabled")
            {
                this.m_stage_effects.selectedIndex = 0;
            }
            else
            {
                if (SaveData.Quality.stage_effects === "simple")
                {
                    this.m_stage_effects.selectedIndex = 1;
                }
                else
                {
                    if (SaveData.Quality.stage_effects === "enabled")
                    {
                        this.m_stage_effects.selectedIndex = 2;
                    };
                };
            };
            this.m_global_effects.selectedIndex = ((SaveData.Quality.global_effects) ? 1 : 0);
            this.m_hit_effects.selectedIndex = ((SaveData.Quality.hit_effects) ? 1 : 0);
            this.m_hud_alpha.selectedIndex = ((SaveData.Quality.hud_alpha) ? 1 : 0);
            this.m_knockback_smoke.selectedIndex = ((SaveData.Quality.knockback_smoke) ? 1 : 0);
            this.m_screen_flash.selectedIndex = ((SaveData.Quality.screen_flash) ? 1 : 0);
            this.m_shadows.selectedIndex = ((SaveData.Quality.shadows) ? 1 : 0);
            this.m_weather.selectedIndex = ((SaveData.Quality.weather) ? 1 : 0);
            this.m_ambient_lighting.selectedIndex = ((SaveData.Quality.ambient_lighting) ? 1 : 0);
            this.m_menu_bg.selectedIndex = ((SaveData.Quality.menu_bg) ? 1 : 0);
            Main.setFullScreenMode(SaveData.Quality.fullscreen_quality);
            Main.Root.stage.quality = SaveData.Quality.display_quality;
        }

        private function back_CLICK_quality(e:MouseEvent):void
        {
            SaveData.saveGame();
            removeSelf();
            SoundQueue.instance.playSoundEffect("menu_back");
            MenuController.optionsMenu.show();
        }

        private function back_ROLL_OVER_quality(e:MouseEvent):void
        {
            SoundQueue.instance.playSoundEffect("menu_hover");
        }

        private function home_CLICK(e:MouseEvent):void
        {
            SoundQueue.instance.playSoundEffect("menu_back");
            SoundQueue.instance.stopMusic();
            MenuController.removeAllMenus();
            MenuController.titleMenu.show();
        }

        private function high_CLICK(e:MouseEvent):void
        {
            this.setQualityPreset("high");
            this.resetPresets();
            this.redrawDropdowns();
            SoundQueue.instance.playSoundEffect("menu_select");
        }

        private function medium_CLICK(e:MouseEvent):void
        {
            this.setQualityPreset("medium");
            this.resetPresets();
            SoundQueue.instance.playSoundEffect("menu_select");
        }

        private function low_CLICK(e:MouseEvent):void
        {
            this.setQualityPreset("low");
            this.resetPresets();
            this.redrawDropdowns();
            SoundQueue.instance.playSoundEffect("menu_select");
        }

        private function extra_low_CLICK(e:MouseEvent):void
        {
            this.setQualityPreset("extra_low");
            this.resetPresets();
            this.redrawDropdowns();
            SoundQueue.instance.playSoundEffect("menu_select");
        }

        private function potato_CLICK(e:MouseEvent):void
        {
            this.setQualityPreset("potato");
            this.resetPresets();
            this.redrawDropdowns();
            SoundQueue.instance.playSoundEffect("menu_select");
        }

        private function advanced_btn_CLICK(e:MouseEvent):void
        {
            SoundQueue.instance.playSoundEffect("menu_select");
            this.m_advanced_btn.visible = false;
            this.m_advanced_mc.visible = true;
        }

        private function fullscreen_quality_CLICK(e:Event):void
        {
            SaveData.Quality.fullscreen_quality = this.m_fullscreen_quality.selectedIndex;
            Main.setFullScreenMode(SaveData.Quality.fullscreen_quality);
            this.resetPresets();
        }

        private function fullscreen_quality_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Adjust full-screen rendering mode";
        }

        private function fullscreen_quality_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function display_quality_CLICK(e:Event):void
        {
            if (this.m_display_quality.selectedIndex === 0)
            {
                SaveData.Quality.display_quality = StageQuality.LOW;
            }
            else
            {
                if (this.m_display_quality.selectedIndex === 1)
                {
                    SaveData.Quality.display_quality = StageQuality.MEDIUM;
                }
                else
                {
                    if (this.m_display_quality.selectedIndex === 2)
                    {
                        SaveData.Quality.display_quality = StageQuality.HIGH;
                    }
                    else
                    {
                        if (this.m_display_quality.selectedIndex === 3)
                        {
                            SaveData.Quality.display_quality = StageQuality.BEST;
                        };
                    };
                };
            };
            Main.Root.stage.quality = SaveData.Quality.display_quality;
            this.resetPresets();
        }

        private function display_quality_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Adjust display rendering quality (Browser Flash Player Only)";
        }

        private function display_quality_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function stage_effects_CLICK(e:Event):void
        {
            if (this.m_stage_effects.selectedIndex === 0)
            {
                SaveData.Quality.stage_effects = "disabled";
            }
            else
            {
                if (this.m_stage_effects.selectedIndex === 1)
                {
                    SaveData.Quality.stage_effects = "simple";
                }
                else
                {
                    if (this.m_stage_effects.selectedIndex === 2)
                    {
                        SaveData.Quality.stage_effects = "enabled";
                    };
                };
            };
            this.resetPresets();
        }

        private function stage_effects_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable background animations";
        }

        private function stage_effects_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function global_effects_CLICK(e:Event):void
        {
            SaveData.Quality.global_effects = this.m_global_effects.selectedIndex;
            this.resetPresets();
        }

        private function global_effects_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable global graphical effects (dust, sparkles, etc.)";
        }

        private function global_effects_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function hit_effects_CLICK(e:Event):void
        {
            SaveData.Quality.hit_effects = this.m_hit_effects.selectedIndex;
            this.resetPresets();
        }

        private function hit_effects_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable graphical hit effects";
        }

        private function hit_effects_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function hud_alpha_CLICK(e:Event):void
        {
            SaveData.Quality.hud_alpha = this.m_hud_alpha.selectedIndex;
            this.resetPresets();
        }

        private function hud_alpha_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable HUD transparency fade";
        }

        private function hud_alpha_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function knockback_smoke_CLICK(e:Event):void
        {
            SaveData.Quality.knockback_smoke = this.m_knockback_smoke.selectedIndex;
            this.resetPresets();
        }

        private function knockback_smoke_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable character knockback smoke";
        }

        private function knockback_smoke_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function screen_flash_CLICK(e:Event):void
        {
            SaveData.Quality.screen_flash = this.m_screen_flash.selectedIndex;
            this.resetPresets();
        }

        private function screen_flash_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable screen light flashing";
        }

        private function screen_flash_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function shadows_CLICK(e:Event):void
        {
            SaveData.Quality.shadows = this.m_shadows.selectedIndex;
            this.resetPresets();
        }

        private function shadows_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable character shadows";
        }

        private function shadows_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function weather_CLICK(e:Event):void
        {
            SaveData.Quality.weather = this.m_weather.selectedIndex;
            this.resetPresets();
        }

        private function weather_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable stage weather effects";
        }

        private function weather_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function ambient_lighting_CLICK(e:Event):void
        {
            SaveData.Quality.ambient_lighting = this.m_ambient_lighting.selectedIndex;
            this.resetPresets();
        }

        private function ambient_lighting_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable ambient lighting effects";
        }

        private function ambient_lighting_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }

        private function menu_bg_CLICK(e:Event):void
        {
            SaveData.Quality.menu_bg = this.m_menu_bg.selectedIndex;
            updateMenuBackground();
            this.resetPresets();
        }

        private function menu_bg_HOVER(e:Event):void
        {
            m_subMenu.desc_txt.text = "Enable/Disable menu background animation";
        }

        private function menu_bg_MOUSE_OUT(e:Event):void
        {
            m_subMenu.desc_txt.text = "";
        }


    }
}//package com.mcleodgaming.ssf2.menus

