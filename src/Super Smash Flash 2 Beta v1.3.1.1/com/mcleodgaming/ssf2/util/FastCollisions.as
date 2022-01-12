﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.util.FastCollisions

package com.mcleodgaming.ssf2.util
{
    public class FastCollisions 
    {


        public static function rectangles(r1p1x:Number, r1p1y:Number, r1p2x:Number, r1p2y:Number, r1p3x:Number, r1p3y:Number, r1p4x:Number, r1p4y:Number, r2p1x:Number, r2p1y:Number, r2p2x:Number, r2p2y:Number, r2p3x:Number, r2p3y:Number, r2p4x:Number, r2p4y:Number):Boolean
        {
            if ((!(isProjectedAxisCollision(r1p1x, r1p1y, r1p2x, r1p2y, r2p1x, r2p1y, r2p2x, r2p2y, r2p3x, r2p3y, r2p4x, r2p4y))))
            {
                return (false);
            };
            if ((!(isProjectedAxisCollision(r1p2x, r1p2y, r1p3x, r1p3y, r2p1x, r2p1y, r2p2x, r2p2y, r2p3x, r2p3y, r2p4x, r2p4y))))
            {
                return (false);
            };
            if ((!(isProjectedAxisCollision(r2p1x, r2p1y, r2p2x, r2p2y, r1p1x, r1p1y, r1p2x, r1p2y, r1p3x, r1p3y, r1p4x, r1p4y))))
            {
                return (false);
            };
            if ((!(isProjectedAxisCollision(r2p2x, r2p2y, r2p3x, r2p3y, r1p1x, r1p1y, r1p2x, r1p2y, r1p3x, r1p3y, r1p4x, r1p4y))))
            {
                return (false);
            };
            return (true);
        }

        public static function isProjectedAxisCollision(b1x:Number, b1y:Number, b2x:Number, b2y:Number, p1x:Number, p1y:Number, p2x:Number, p2y:Number, p3x:Number, p3y:Number, p4x:Number, p4y:Number):Boolean
        {
            var x1:Number;
            var x2:Number;
            var x3:Number;
            var x4:Number;
            var y1:Number;
            var y2:Number;
            var y3:Number;
            var y4:Number;
            var a:Number;
            var ia:Number;
            var t1:Number;
            var t2:Number;
            if (b1x == b2x)
            {
                x1 = (x2 = (x3 = (x4 = b1x)));
                y1 = p1y;
                y2 = p2y;
                y3 = p3y;
                y4 = p4y;
                if (b1y > b2y)
                {
                    if ((((((y1 > b1y) && (y2 > b1y)) && (y3 > b1y)) && (y4 > b1y)) || ((((y1 < b2y) && (y2 < b2y)) && (y3 < b2y)) && (y4 < b2y))))
                    {
                        return (false);
                    };
                }
                else
                {
                    if ((((((y1 > b2y) && (y2 > b2y)) && (y3 > b2y)) && (y4 > b2y)) || ((((y1 < b1y) && (y2 < b1y)) && (y3 < b1y)) && (y4 < b1y))))
                    {
                        return (false);
                    };
                };
                return (true);
            };
            if (b1y == b2y)
            {
                x1 = p1x;
                x2 = p2x;
                x3 = p3x;
                x4 = p4x;
                y1 = (y2 = (y3 = (y4 = b1y)));
            }
            else
            {
                a = ((b1y - b2y) / (b1x - b2x));
                ia = (1 / a);
                t1 = ((b2x * a) - b2y);
                t2 = (1 / (a + ia));
                x1 = (((p1y + t1) + (p1x * ia)) * t2);
                x2 = (((p2y + t1) + (p2x * ia)) * t2);
                x3 = (((p3y + t1) + (p3x * ia)) * t2);
                x4 = (((p4y + t1) + (p4x * ia)) * t2);
                y1 = (p1y + ((p1x - x1) * ia));
                y2 = (p2y + ((p2x - x2) * ia));
                y3 = (p3y + ((p3x - x3) * ia));
                y4 = (p4y + ((p4x - x4) * ia));
            };
            if (b1x > b2x)
            {
                if ((((((x1 > b1x) && (x2 > b1x)) && (x3 > b1x)) && (x4 > b1x)) || ((((x1 < b2x) && (x2 < b2x)) && (x3 < b2x)) && (x4 < b2x))))
                {
                    return (false);
                };
            }
            else
            {
                if ((((((x1 > b2x) && (x2 > b2x)) && (x3 > b2x)) && (x4 > b2x)) || ((((x1 < b1x) && (x2 < b1x)) && (x3 < b1x)) && (x4 < b1x))))
                {
                    return (false);
                };
            };
            return (true);
        }


    }
}//package com.mcleodgaming.ssf2.util

