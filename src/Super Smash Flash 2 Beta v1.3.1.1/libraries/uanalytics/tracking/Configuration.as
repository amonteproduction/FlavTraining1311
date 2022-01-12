﻿// Decompiled by AS3 Sorcerer 6.30
// www.as3sorcerer.com

//libraries.uanalytics.tracking.Configuration

package libraries.uanalytics.tracking
{
    public class Configuration 
    {

        public static var SDKversion:String = "as3uanalytics1";

        private var _endpoint:String = "http://www.google-analytics.com/collect";
        private var _secureEndpoint:String = "https://ssl.google-analytics.com/collect";
        private var _maxGETlength:uint = 2000;
        private var _maxPOSTlength:uint = 0x2000;
        private var _storageName:String = "_ga";
        public var senderType:String = "";
        public var enableErrorChecking:Boolean = false;
        public var enableThrottling:Boolean = true;
        public var enableSampling:Boolean = true;
        public var enableCacheBusting:Boolean = false;
        public var forceSSL:Boolean = false;
        public var forcePOST:Boolean = false;
        public var sampleRate:Number = 100;
        public var anonymizeIp:Boolean = false;
        public var overrideIpAddress:String = "";
        public var overrideUserAgent:String = "";
        public var overrideGeographicalId:String = "";


        public function get endpoint():String
        {
            return (this._endpoint);
        }

        public function get secureEndpoint():String
        {
            return (this._secureEndpoint);
        }

        public function get maxGETlength():uint
        {
            return (this._maxGETlength);
        }

        public function get maxPOSTlength():uint
        {
            return (this._maxPOSTlength);
        }

        public function get storageName():String
        {
            return (this._storageName);
        }


    }
}//package libraries.uanalytics.tracking

