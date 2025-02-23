import modchart.Manager;
var funkin_modchart_instance:Manager;

function create() {
	importScript("data/scripts/pixel");
	pixelNotesForBF = false;
	enablePixelUI = true;
	enableCameraHacks = false;
	playCutscenes = true;
	camZooming = true;
}

function postCreate() {
	funkin_modchart_instance = new Manager();
	add(funkin_modchart_instance);
	modchart();
	for(i in 0...6) {
		var name = "tank" + Std.string(i);
		stage.getSprite(name).visible = false;
	}
}

function modchart() {
	/* // The rest of these functions are listed in `.haxelib/funkin-modchart/git/DOC.md`
	instance.ease(mod, beat, length, value, ease, player, field);
	instance.set(mod, beat, value, player, field);
	instance.addModifier(mod, field);
	instance.setPercent(mod, value, field);
	*/
	// Effects (not a full list all of them are available in `.haxelib/funkin-modchart/git/modchart/core/ModifierGroup.hx`)
	funkin_modchart_instance.addModifier("bounce", -1);
	funkin_modchart_instance.addModifier("beat", -1);
	funkin_modchart_instance.addModifier("bumpy", -1);
	funkin_modchart_instance.addModifier("schmovintipsy", -1);	
	funkin_modchart_instance.setPercent("bounce",1, -1);
	funkin_modchart_instance.setPercent("beat", 1, -1);
	funkin_modchart_instance.setPercent("bumpy", 1, -1);
	funkin_modchart_instance.setPercent("schmovintipsy", 1, -1);
}
function postUpdate(elapsed) {
	// Code example from original test commented out for compatibility reasons
	/*
	for(s in strumLines) {
		for(i in 0...4) {
			var n = s.members[i];
			n.angle = Math.sin(curBeatFloat + (i * 0.45)) * 35;
		}
	}
	*/


	// for(s in strumLines) {
	// 	for(i in 0...4) {
	// 		var n = s.members[i];
	// 		n.y = FlxG.height - 200;
	// 		n.angle = 180;
	// 	}
	// }

	// if (curSection != null)
	//     defaultCamZoom = curSection.mustHitSection ? 0.9 : 0.5;
}