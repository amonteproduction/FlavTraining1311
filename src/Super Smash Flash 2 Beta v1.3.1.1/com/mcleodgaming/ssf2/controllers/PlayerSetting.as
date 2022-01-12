﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.controllers.PlayerSetting

package com.mcleodgaming.ssf2.controllers
{
    import com.mcleodgaming.ssf2.util.SaveData;

    public class PlayerSetting 
    {

        public var character:String;
        public var name:String;
        public var level:int;
        public var damageRatio:Number;
        public var attackRatio:Number;
        public var human:Boolean;
        public var exist:Boolean;
        public var team:Number;
        public var costume:int;
        public var alternate:String;
        public var team_prev:Number;
        public var lives:Number;
        public var x_start:Number;
        public var y_start:Number;
        public var x_respawn:Number;
        public var y_respawn:Number;
        public var facingRight:Boolean;
        public var unlimitedFinal:Boolean;
        public var finalSmashMeter:Boolean;
        public var startDamage:int;
        public var expansion:int;
        public var isRandom:Boolean;
        public var socket_id:String;
        public var beatDevOnline:Boolean;
        public var ranked:Boolean;

        public function PlayerSetting()
        {
            this.init();
        }

        public function init():void
        {
            this.character = null;
            this.name = null;
            this.level = 1;
            this.attackRatio = 1;
            this.damageRatio = 1;
            this.human = false;
            this.exist = true;
            this.team = -1;
            this.costume = -1;
            this.alternate = null;
            this.team_prev = 1;
            this.lives = 0;
            this.x_start = 0;
            this.y_start = 0;
            this.x_respawn = 0;
            this.y_respawn = 0;
            this.facingRight = true;
            this.unlimitedFinal = false;
            this.finalSmashMeter = false;
            this.startDamage = 0;
            this.expansion = -1;
            this.isRandom = false;
            this.socket_id = null;
            this.beatDevOnline = false;
            this.ranked = false;
        }

        public function getVar(varName:String):*
        {
            if (this[varName] !== undefined)
            {
                return (this[varName]);
            };
            return (null);
        }

        public function exportSettings():Object
        {
            return ({
                "character":this.character,
                "name":this.name,
                "level":this.level,
                "damageRatio":this.damageRatio,
                "attackRatio":this.attackRatio,
                "human":this.human,
                "exist":this.exist,
                "team":this.team,
                "team_prev":this.team_prev,
                "costume":this.costume,
                "lives":this.lives,
                "x_start":this.x_start,
                "y_start":this.y_start,
                "x_respawn":this.x_respawn,
                "y_respawn":this.y_respawn,
                "facingRight":this.facingRight,
                "unlimitedFinal":this.unlimitedFinal,
                "finalSmashMeter":this.finalSmashMeter,
                "startDamage":this.startDamage,
                "expansion":this.expansion,
                "isRandom":(this.character === "random"),
                "socket_id":this.socket_id,
                "beatDevOnline":SaveData.Unlocks.beatDevOnline,
                "ranked":this.ranked
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
                    trace((('You tried to set "' + obj) + "\" but it doesn't exist in the PlayerSetting class."));
                };
            };
        }


    }
}//package com.mcleodgaming.ssf2.controllers

