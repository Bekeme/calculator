package com.thayne.calculator.ui;

import flash.display.Sprite;
import ru.stablex.ui.widgets.InputText;

import flash.display.GradientType;
import flash.events.Event;
import flash.geom.Matrix;
/**
 * This is the main input for the calculator. It also displays the results.
 * @author Kameron Thayne <kameron@thayne.com>
 */
class DisplayInput extends Sprite
{
	public function new() 
	{
		super();
		addEventListener(Event.ADDED_TO_STAGE, init);
		drawBackground();
		width = 100;
		height = 100;
	}
	
	public function init(event:Event):Void {
		drawBackground();
	}
	
	
	private function drawBackground():Void {
		var matrix:Matrix = new Matrix(); 
		matrix.createGradientBox(width, height, Math.PI / 2, 2, 0);
 		
		graphics.beginFill(0x000000);
		graphics.drawRect(0, 0, width, height);
		graphics.endFill();
		
		var borderWeight:Int = 2;
		
		graphics.beginGradientFill(GradientType.LINEAR, [0x00FF00,0xFFFFFF], [0.2,1], [0,120], matrix);
		graphics.drawRect(borderWeight, borderWeight, width-borderWeight*2, height-borderWeight*2);
		graphics.endFill();
	}
}