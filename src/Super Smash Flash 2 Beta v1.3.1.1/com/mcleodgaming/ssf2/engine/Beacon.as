﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.engine.Beacon

package com.mcleodgaming.ssf2.engine
{
    import __AS3__.vec.Vector;
    import com.mcleodgaming.ssf2.api.SSF2Beacon;
    import com.mcleodgaming.ssf2.util.Utils;
    import flash.display.MovieClip;
    import flash.text.TextField;
    import __AS3__.vec.*;
    import com.mcleodgaming.ssf2.api.*;

    public class Beacon extends InteractiveSprite 
    {

        private var m_neighbors:Vector.<Beacon>;
        private var m_bid:int;
        private var m_visited:Boolean;
        private var z:String;

        public function Beacon(mc:MovieClip, stageData:StageData, id:int)
        {
            m_baseStats = new InteractiveSpriteStats();
            m_apiInstance = new SSF2Beacon(stageData.BASE_CLASSES.SSF2Beacon, this);
            super(mc, stageData, false);
            m_sprite.visible = false;
            this.m_neighbors = new Vector.<Beacon>();
            this.m_bid = id;
            this.m_visited = false;
            this.z = ("guid" + Utils.getUID());
            m_apiInstance.initialize();
        }

        public static function nextNeighbor(beacons:Vector.<Beacon>, am:Array, start:Number, dst:Number):Number
        {
            if (((((!(beacons == null)) && (start >= 0)) && (start < beacons.length)) && (dst < beacons.length)))
            {
                dst++;
                while (dst < beacons.length)
                {
                    if (((!(dst == start)) && (!(am[start][dst] == int.MAX_VALUE))))
                    {
                        return (dst);
                    };
                    dst++;
                };
            };
            return (beacons.length);
        }


        public function get Z():String
        {
            return (this.z);
        }

        public function get BID():int
        {
            return (this.m_bid);
        }

        public function get Neighbors():Vector.<Beacon>
        {
            return (this.m_neighbors);
        }

        public function get Visited():Boolean
        {
            return (this.m_visited);
        }

        public function set Visited(value:Boolean):void
        {
            this.m_visited = value;
        }

        public function addPotentialNeighbor(b:Beacon):Boolean
        {
            var success:Boolean;
            if (this != b)
            {
                if (checkLinearPath(b))
                {
                    success = true;
                    this.m_neighbors.push(b);
                };
            };
            return (success);
        }

        public function traceNeighbors():void
        {
            var t:TextField = new TextField();
            t.text = this.z;
            m_sprite.addChild(t);
        }


    }
}//package com.mcleodgaming.ssf2.engine

