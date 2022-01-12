﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.util.VcamBG

package com.mcleodgaming.ssf2.util
{
    import flash.display.MovieClip;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class VcamBG 
    {

        public var sprite:MovieClip;
        public var horizontalScrollPair:Vector.<MovieClip>;
        public var verticalScrollPair:Vector.<MovieClip>;
        public var settings:VcamBGSettings;
        public var centX:Number;
        public var centY:Number;
        public var diffX:Number;
        public var diffY:Number;

        public function VcamBG(spriteRef:MovieClip, camSettings:VcamBGSettings):void
        {
            this.sprite = spriteRef;
            this.horizontalScrollPair = new Vector.<MovieClip>();
            this.verticalScrollPair = new Vector.<MovieClip>();
            this.settings = camSettings;
            this.centX = 0;
            this.centY = 0;
            this.diffX = 0;
            this.diffY = 0;
        }

        public function dispose():void
        {
            if (this.sprite.parent)
            {
                this.sprite.parent.removeChild(this.sprite);
            };
            while (this.horizontalScrollPair.length > 0)
            {
                if (this.horizontalScrollPair[0].parent)
                {
                    this.horizontalScrollPair[0].parent.removeChild(this.horizontalScrollPair[0]);
                };
                this.horizontalScrollPair.splice(0, 1);
            };
            while (this.verticalScrollPair.length > 0)
            {
                if (this.verticalScrollPair[0].parent)
                {
                    this.verticalScrollPair[0].parent.removeChild(this.verticalScrollPair[0]);
                };
                this.verticalScrollPair.splice(0, 1);
            };
            this.horizontalScrollPair = null;
            this.verticalScrollPair = null;
            this.sprite = null;
        }


    }
}//package com.mcleodgaming.ssf2.util

