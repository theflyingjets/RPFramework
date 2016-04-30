/*
Author: Kerkkoh
First Edit: 20.4.2016

Additional Information:
This is the example additional module.
This mainly gives an idea how you can structure your module and what kind of things modules can currently do in RPF.

Read the readme file for full documentation on modules.
*/
RPF_farmGroundTypes = [
	"#GdtStratisDryGrass",
	"#GdtStratisGreenGrass",
	"#GdtStratisForestPine",
	"#GdtStratisDirt",
	"#GdtDirt",
	"#GdtGrassGreen",
	"#GdtGrassDry",
	"#GdtSoil",
	"#GdtThorn",
	"#GdtMarsh",
	"#GdtVRsurface01"
];
RPF_plantTypes = [
	"RPF_Plant_Olive",
	"RPF_Plant_Poppy"
];

_menuItems = [
	[
		["'RPF_Items_PoppySeed' in (items player)", "(surfaceType position player) in RPF_farmGroundTypes", "!(isOnRoad ASLToAGL getPosASL player)"],
		["Plant Poppy", "['RPF_Items_PoppySeed'] call ClientModules_fnc_plantPlantae"]
	],
	[
		["'RPF_Items_OliveSeed' in (items player)", "(surfaceType position player) in RPF_farmGroundTypes", "!(isOnRoad ASLToAGL getPosASL player)"],
		["Plant Olive", "['RPF_Items_OliveSeed'] call ClientModules_fnc_plantPlantae"]
	],
	[
		["(typeOf cursorTarget) in RPF_plantTypes"],
		["Destroy Plant", "[cursorTarget] call ClientModules_fnc_destroyPlantae"]
	],
	[
		["(typeOf cursorTarget) in RPF_plantTypes"],
		["Harvest Plant", "[cursorTarget] call ClientModules_fnc_harvestPlantae"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

