﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.controllers.GameSettings

package com.mcleodgaming.ssf2.controllers
{
    import com.mcleodgaming.ssf2.util.SaveData;
    import com.mcleodgaming.ssf2.enums.Difficulty;
    import com.mcleodgaming.ssf2.util.Utils;

    public class GameSettings 
    {

        public var stage:String;
        public var musicOverride:String;
        public var sizeRatio:Number;
        public var lives:int;
        public var usingStamina:Boolean;
        public var time:int;
        public var countdown:Boolean;
        public var usingTime:Boolean;
        public var usingLives:Boolean;
        public var finalSmashMeter:Boolean;
        public var scoreDisplay:Boolean;
        public var hudDisplay:Boolean;
        public var pauseEnabled:Boolean;
        public var showPlayerID:Boolean;
        public var damageRatio:Number;
        public var startDamage:int;
        public var startStamina:int;
        public var teams:Boolean;
        public var teamDamage:Boolean;
        public var hazards:Boolean;
        public var specialModes:uint;
        public var randSeed:Number;
        public var inputBuffer:Number;
        public var scoreLimit:int;
        public var difficulty:uint;
        public var showEntrances:Boolean;
        public var showCountdown:Boolean;
        public var showCountdownType:int;
        public var showEndCountdown:Boolean;
        public var customModeID:String;
        public var unlocks:Object;

        public function GameSettings()
        {
            this.stage = null;
            this.musicOverride = null;
            this.sizeRatio = 1;
            this.lives = 1;
            this.usingStamina = false;
            this.time = 2;
            this.countdown = true;
            this.usingTime = true;
            this.usingLives = false;
            this.finalSmashMeter = false;
            this.scoreDisplay = false;
            this.hudDisplay = true;
            this.pauseEnabled = true;
            this.showPlayerID = false;
            this.startDamage = 0;
            this.startStamina = 150;
            this.damageRatio = 1;
            this.teams = false;
            this.teamDamage = false;
            this.hazards = true;
            this.specialModes = 0;
            this.randSeed = 0;
            this.inputBuffer = 3;
            this.scoreLimit = SaveData.getSavedVSOptions().scoreLimit;
            this.difficulty = Difficulty.NORMAL;
            this.showEntrances = true;
            this.showCountdown = true;
            this.showCountdownType = 0;
            this.showEndCountdown = true;
            this.customModeID = null;
            this.unlocks = Utils.cloneObject(SaveData.Unlocks);
        }

        public function exportSettings():Object
        {
            return ({
                "stage":this.stage,
                "musicOverride":this.musicOverride,
                "sizeRatio":this.sizeRatio,
                "lives":this.lives,
                "usingStamina":this.usingStamina,
                "time":this.time,
                "countdown":this.countdown,
                "usingTime":this.usingTime,
                "usingLives":this.usingLives,
                "finalSmashMeter":this.finalSmashMeter,
                "scoreDisplay":this.scoreDisplay,
                "hudDisplay":this.hudDisplay,
                "pauseEnabled":this.pauseEnabled,
                "showPlayerID":this.showPlayerID,
                "startDamage":this.startDamage,
                "startStamina":this.startStamina,
                "damageRatio":this.damageRatio,
                "teams":this.teams,
                "teamDamage":this.teamDamage,
                "hazards":this.hazards,
                "specialModes":this.specialModes,
                "randSeed":this.randSeed,
                "inputBuffer":this.inputBuffer,
                "scoreLimit":this.scoreLimit,
                "difficulty":this.difficulty,
                "showEntrances":this.showEntrances,
                "showCountdown":this.showCountdown,
                "showCountdownType":this.showCountdownType,
                "showEndCountdown":this.showEndCountdown,
                "customModeID":this.customModeID,
                "unlocks":this.unlocks
            });
        }

        public function importSettings(data:Object):void
        {
            var obj:*;
            for (obj in data)
            {
                if (this[obj] !== undefined)
                {
                    this[obj] = data[obj];
                }
                else
                {
                    trace((('You tried to set "' + obj) + "\" but it doesn't exist in the GameSetting class."));
                };
            };
        }


    }
}//package com.mcleodgaming.ssf2.controllers

