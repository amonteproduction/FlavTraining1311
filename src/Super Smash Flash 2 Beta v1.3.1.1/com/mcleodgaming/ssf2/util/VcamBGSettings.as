﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.util.VcamBGSettings

package com.mcleodgaming.ssf2.util
{
    public class VcamBGSettings 
    {

        public static const BOUNDS_MODE:String = "boundsMode";
        public static const PAN_MODE:String = "panMode";

        public var linkage_id:String;
        public var mode:String;
        public var autoPanMultiplier:Boolean;
        public var width_override:Number;
        public var height_override:Number;
        public var horizontalPanLock:Boolean;
        public var horizontalScroll:Boolean;
        public var verticalPanLock:Boolean;
        public var verticalScroll:Boolean;
        public var x_start:Number;
        public var y_start:Number;
        public var xPanMultiplier:Number;
        public var yPanMultiplier:Number;
        public var foreground:Boolean;

        public function VcamBGSettings(resourceID:String, settings:Object=null):void
        {
            this.linkage_id = resourceID;
            this.mode = VcamBGSettings.PAN_MODE;
            this.autoPanMultiplier = true;
            this.width_override = 0;
            this.height_override = 0;
            this.horizontalPanLock = false;
            this.verticalPanLock = false;
            this.horizontalScroll = false;
            this.verticalScroll = false;
            this.x_start = 0;
            this.y_start = 0;
            this.xPanMultiplier = 1;
            this.yPanMultiplier = 1;
            this.foreground = false;
            this.importSettings(settings);
        }

        public function importSettings(settings:Object):VcamBGSettings
        {
            var i:*;
            if (settings)
            {
                for (i in settings)
                {
                    if (typeof(this[i]) !== "undefined")
                    {
                        this[i] = settings[i];
                    };
                };
            };
            return (this);
        }

        public function exportSettings():Object
        {
            return ({
                "linkage_id":this.linkage_id,
                "mode":this.mode,
                "autoPanMultiplier":this.autoPanMultiplier,
                "width_override":this.width_override,
                "height_override":this.height_override,
                "horizontalPanLock":this.horizontalPanLock,
                "verticalPanLock":this.verticalPanLock,
                "horizontalScroll":this.horizontalScroll,
                "verticalScroll":this.verticalScroll,
                "x_start":this.x_start,
                "y_start":this.y_start,
                "xPanMultiplier":this.xPanMultiplier,
                "yPanMultiplier":this.yPanMultiplier,
                "foreground":this.foreground
            });
        }


    }
}//package com.mcleodgaming.ssf2.util

