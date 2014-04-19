package com.thayne.calculator;

import com.thayne.calculator.ui.screens.MainScreen;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import ru.stablex.ui.widgets.InputText;

import ru.stablex.ui.UIBuilder;

/**
 * ...
 * @author Sean Thayne
 */

class Main extends Sprite
{
	var inited:Bool;
	
	var mainScreen:MainScreen;

	/* ENTRY POINT */
	
	function resize(e:Event) 
	{
		if (!inited) init();
		trace(scaleX, 'x', scaleY);
	}
	
	function init() 
	{
		if (inited) return;
		inited = true; 

		mainScreen = new MainScreen();
		addChild(mainScreen);
	}

	/* SETUP */

	public function new() 
	{
		super();	
		addEventListener(Event.ADDED_TO_STAGE, added);
	}

	function added(e) 
	{
		removeEventListener(Event.ADDED_TO_STAGE, added);
		stage.addEventListener(Event.RESIZE, resize);
		#if ios
		haxe.Timer.delay(init, 100); // iOS 6
		#else
		init();
		#end
	}
	
	public static function main() 
	{
		// static entry point
		Lib.current.stage.align = flash.display.StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
		Lib.current.addChild(new Main());
		
		// Initialize StablexUI
		UIBuilder.init();
	}
}
