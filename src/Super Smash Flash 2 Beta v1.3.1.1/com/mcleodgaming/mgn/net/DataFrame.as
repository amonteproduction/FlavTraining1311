﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//com.mcleodgaming.mgn.net.DataFrame

package com.mcleodgaming.mgn.net
{
    public class DataFrame 
    {

        private var _data:Object;
        private var _fulfilled:Boolean;

        public function DataFrame()
        {
            this._data = null;
            this._fulfilled = false;
        }

        public function isReady():Boolean
        {
            return (!(this._data == null));
        }

        public function updateData(data:Object):Boolean
        {
            if ((!(this._fulfilled)))
            {
                this._data = data;
                this._fulfilled = true;
                return (true);
            };
            return (false);
        }

        public function getData():Object
        {
            return (this._data);
        }


    }
}//package com.mcleodgaming.mgn.net

