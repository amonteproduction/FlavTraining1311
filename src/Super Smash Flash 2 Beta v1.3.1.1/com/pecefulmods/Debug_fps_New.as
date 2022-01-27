// Decompiled by AS3 Sorcerer 6.20
// www.as3sorcerer.com

//com.mcleodgaming.ssf2.util.Debug_fps

package com.pecefulmods
{
    import flash.display.Sprite;
    import flash.geom.Point;
    import flash.display.Stage;
    import flash.utils.getTimer;
    import flash.events.Event;
    import flash.text.TextField;
    import flash.text.TextFieldType;
	import flash.text.TextFormat ;
    import com.mcleodgaming.ssf2.engine.StageData;
    import com.mcleodgaming.ssf2.util.*;
    import com.pecefulmods.*;
	import com.mcleodgaming.ssf2.enums.Mode;
    import com.mcleodgaming.ssf2.net.MultiplayerManager;
	
    public class Debug_fps_New
    {

        private var fpsSymbol:Class = Debug_fps_fpsSymbol;
        private var fpsHolder:Sprite;
        private var pos:Point;
        private var stage:Stage;
        private var lowest:int;
        private var highest:int;
        private var checkCounter:int;
        private var checkRate:int;
        private var lowestResetCnt:int;
        private var startTime:Number;
		private var FPS:TextField;
		private var PING:TextField;
		private var LowestValue:TextField;
		private var format1:TextFormat;
        private var mainstage:StageData;


        public function Debug_fps_New(currentStage:Stage, posArg:Point,Mainstage:StageData)
		{
			this.stage = currentStage;
            this.mainstage = Mainstage;
            this.pos = posArg;
            this.lowest = this.stage.frameRate;
            this.highest = 0;
            this.checkCounter = 1;
            this.checkRate = 8;
            this.lowestResetCnt = (this.lowest * 5);
            this.startTime = getTimer();
            this.fpsHolder = new this.fpsSymbol();
            this.fpsHolder.addEventListener(Event.ENTER_FRAME, this.mainloop);
			
			format1 = new TextFormat();
			format1.font="consolas"
			format1.size=10;
			format1.color = 0x000f7ff;
			//format1.selectable = false;
			
			FPS = new TextField();
			FPS.text = "FPS: ";
			FPS.y = 10;
			FPS.x = 13;
			FPS.selectable = false;
            FPS.defaultTextFormat = format1;
            this.stage.addChild(FPS);

			PING = new TextField();
			PING.y = 25;
			PING.x = 13;
			PING.selectable = false;
            PING.text = "PING: N/A";
			PING.defaultTextFormat = format1;
            this.stage.addChild(PING);


				
        }

        public function toString():String
        {
            return ("Debug_fps");
        }

        public function get FrameRate():Number
        {
            return (this.fpsHolder.stage.frameRate);
        }

        public function set FrameRate(value:Number):void
        {
            trace("Frame rate set disabled");
        }

        public function get MC():Sprite
        {
            return (this.fpsHolder);
        }

        public function kill():void
        {
            this.fpsHolder.removeEventListener(Event.ENTER_FRAME, this.mainloop);
            if (this.FPS)
            {
                //this.stage.parent.removeChild(this.fpsHolder);
                this.stage.removeChild(this.FPS);
                this.stage.removeChild(this.PING);
            };
        }

        private function mainloop(event:Event):void
        {
			FPS.setTextFormat(format1);
			PING.setTextFormat(format1)
			
            var fr:Number;
            if (--this.checkCounter == 0)
            {
                fr = (this.checkRate / ((getTimer() - this.startTime) / 1000));
                fr = (Math.round((((fr * 10) / 10) * 10)) / 10);
                if (fr > this.stage.frameRate)
                {
                    fr = this.stage.frameRate;
                };
                FPS.text = "FPS: " + String(fr);
                if (fr < this.lowest)
                {
                    this.lowest = fr; //(this.fpsHolder["lowestValue"].text = fr);
                };
                if (fr > this.highest)
                {
                    this.highest = fr;
                };
                this.startTime = getTimer();
                this.checkCounter = this.checkRate;
            };
            if (--this.lowestResetCnt == 0)
            {
                this.lowest = this.highest;//(this.fpsHolder["lowestValue"].text = this.highest);
                this.lowestResetCnt = (this.stage.frameRate * 6);
            };
			
			if (this.mainstage.OnlineMode)
            {
                PING.text = "PING: " + MultiplayerManager.Ping + " ms";
            }
			
            //this.fpsHolder["bar"].height = (((this.fpsHolder["fps"].text / this.fpsHolder.stage.frameRate) * 100) / 4);
            //var depth:int = (this.stage.numChildren - 1);
            //if (this.stage.getChildIndex(this.fpsHolder) < depth)
            //{
             //   this.stage.setChildIndex(this.fpsHolder, depth);
            //};
        }


    }
}//package com.mcleodgaming.ssf2.util

