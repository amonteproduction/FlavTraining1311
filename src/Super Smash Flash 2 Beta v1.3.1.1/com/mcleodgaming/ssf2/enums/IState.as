﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.enums.IState

package com.mcleodgaming.ssf2.enums
{
    public class IState 
    {

        public static const IDLE:uint = 0;
        public static const HOLD:uint = 1;
        public static const TOSS:uint = 2;
        public static const DEAD:uint = 3;
        private static var statesArr:Array = new Array();

        {
            statesArr.push("IDLE");
            statesArr.push("HOLD");
            statesArr.push("TOSS");
            statesArr.push("DEAD");
        }


        public static function toString(state:uint):String
        {
            return (((state >= 0) && (state < statesArr.length)) ? statesArr[state] : "null");
        }


    }
}//package com.mcleodgaming.ssf2.enums

