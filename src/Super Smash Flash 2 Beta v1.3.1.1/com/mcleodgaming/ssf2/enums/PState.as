﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.enums.PState

package com.mcleodgaming.ssf2.enums
{
    public class PState 
    {

        public static const IDLE:uint = 0;
        public static const DEAD:uint = 1;
        private static var statesArr:Array = new Array();

        {
            statesArr.push("IDLE");
            statesArr.push("DEAD");
        }


        public static function toString(state:uint):String
        {
            return (((state >= 0) && (state < statesArr.length)) ? statesArr[state] : "null");
        }


    }
}//package com.mcleodgaming.ssf2.enums

