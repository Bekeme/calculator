package com.thayne.calculator.ui.screens;

import com.thayne.calculator.ui.DisplayInput;
import flash.display.Sprite;
import flash.events.Event;
/**
 * ...
 * @author Sean Thayne
 */
class MainScreen extends Sprite
{
	public var mainInput:DisplayInput;
	
	public function new() 
	{
		super();
		init();
	}
	
	/**
	 * This function adds all the UI elements to the screen.
	 */
	public function init():Void 
	{
		mainInput = new DisplayInput();
		mainInput.x = 10;
		mainInput.y = 10;
		addChild(mainInput);
	}
}