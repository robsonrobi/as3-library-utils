﻿/** * Created with IntelliJ IDEA. * User: Jerry Orta * http://www.digitalproductionart.com/ * jerryorta@gmail.com * * Date: 10/29/12 * Time: 2:35 PM**//**import com.greensock.*;import com.greensock.easing.*;//Schwab Bubbleimport com.schwab.graphics.*;*  rectWidth:value		//Rectangle width of bubble*  rectHEIGHT:value		//Rectangle height of bubble*  pointWIDTH:value		//Point width of bubble*  pointHEIGHT:value	//Point height of bubble*  pointX				//pointX position of bubble point from left margin of rectangle*  radiusRECT			//Radius of the rectangular corner points*  radiusPOINT			//Radius of the bubble point corner points*  bubbleCOLOR			//Color fill of bubble, can be "0x009900" OR 0x009900 -- no string*  fillALPHA			//Alpha of color fill*  borderCOLOR			//Color of border*  borderWEIGHT			//Weight of border*  borderALPHA			//Alpha of border*  pointRIGHT			//Bubble points left -- true or falsevar bubble:Bubble = new Bubble({			rectWidth:200, 			rectHEIGHT:100, 			pointWIDTH:75, 			pointHEIGHT:100, 			pointX:75, 			radiusRECT:20, 			radiusPOINT:15, 			bubbleCOLOR:"0x009900", 			fillALPHA:1, 			borderCOLOR:"0x990000",			borderWEIGHT:2,			borderALPHA:1,			pointRIGHT:false,			translatePointTo:50});addChild(bubble);bubble.x = 20;bubble.y = 20;var bubble2:Bubble = new Bubble();addChild(bubble2);bubble2.x = 230;bubble2.y = 90;//bubble2.rectWidth = 200;//bubble2.pointRIGHT = false; TweenLite.to(bubble2, 4, {delay:2, x:"-100", rectWidth:"+100", radiusRECT:"+50", ease:Linear.easeNone});alignPointLeft get the value of the left base numberalignPointLeft get the value of the right base number*/package utils.graphics {    import flash.display.Sprite;    public class RoundedRectangle extends Sprite {		public var vars:Object; 				//Points of bubble		private var _rectWidth:Number;		//Width of rectangle		private var _rectHeight:Number;		//Height of rectangle		private var _radiusRect:Number;		//Radius of the rectangle corners        //COLOR		private var _fillColor:uint;		//Color fill of bubble		private var _fillAlpha:Number;		//Alpha of fill color		private var _borderColor:Number;		//Color of border		private var _borderWeight:Number;	//Weight of border		private var _borderAlpha:Number;		//Alpha of border		private var _setWidth:Number;        private var _setHeight:Number;		        //STATE        private var _state:String = "off";				//Rounded corner Vectors		public function RoundedRectangle(vars:Object = null) {					this.vars = (vars != null) ? vars : {};            //Dimensions			_rectWidth = (this.vars.width != null) ? this.vars.width : 107;			_rectHeight = (this.vars.height != null) ? this.vars.height : 20;            _radiusRect = (this.vars.radiusRect != null) ? this.vars.radiusRect : 10;            //Color            _fillColor = (this.vars.fillColor != null) ? this.vars.fillColor : 0xffffff;            _borderColor = (this.vars.borderColor != null) ? this.vars.borderColor : 0xffffff;            //Weight            _borderWeight = (this.vars.borderWeight != null) ? this.vars.borderWeight : 0;            //Alpha            _fillAlpha = (this.vars.fillAlpha != null) ? this.vars.fillAlpha : 1;            _borderAlpha = (this.vars.borderAlpha != null) ? this.vars.borderAlpha : 0;			calculatePoints();		}						private function calculatePoints():void {			paint();		}						private function paint():void {			graphics.clear();			if (_borderWeight != 0) {				graphics.lineStyle(_borderWeight, _borderColor, _borderAlpha, true);			}            graphics.lineStyle(_borderWeight, _borderColor, _borderAlpha, true);			graphics.beginFill(_fillColor,_fillAlpha);            graphics.drawRoundRect(0, 0, _rectWidth, _rectHeight, _radiusRect);			graphics.endFill();					}				public function set rectWidth(val:Number):void {			_rectWidth = val;			calculatePoints();		}				public function get rectWidth():Number {			return _rectWidth;		}				public function set rectHeight(val:Number):void {			_rectHeight = val;			calculatePoints();		}				public function get rectHeight():Number {			return _rectHeight;		}						public function set radiusRect(val:Number):void {			_radiusRect = val;			calculatePoints();		}				public function get radiusRect():Number {			return _radiusRect;		}				public function set fillColor(val:Number):void {			_fillColor = val;			calculatePoints();		}				public function get fillColor():Number {			return _fillColor;		}				public function set fillAlpha(val:Number):void {			_fillAlpha = val;			calculatePoints();		}				public function get fillAlpha():Number {			return _fillAlpha;		}				public function set borderColor(val:Number):void {			_borderColor = val;			calculatePoints();		}				public function get borderColor():Number {			return _borderColor;		}				public function set borderWeight(val:Number):void {			_borderWeight = val;			calculatePoints();		}				public function get borderWeight():Number {			return _borderWeight;		}				public function set borderAlpha(val:Number):void {			_borderAlpha = val;			calculatePoints();		}				public function get borderAlpha():Number {			return _borderAlpha;		}    }	}