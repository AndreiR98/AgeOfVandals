<?php
require_once('include.inc.php');

//Set battle config

$att = [
	'unit_spear'=>0,
	'unit_sword'=>0,
	'unit_axe'=>300,
	'unit_archer'=>0,
	'unit_spy'=>0,
	'unit_light'=>2500,
	'unit_marcher'=>0,
	'unit_heavy'=>0,
	'unit_ram'=>550,
	'unit_cat'=>0,
	'unit_snob'=>1
];

$deff = [
	'unit_spear'=>300,
	'unit_sword'=>2200,
	'unit_axe'=>0,
	'unit_archer'=>1000,
	'unit_spy'=>0,
	'unit_light'=>0,
	'unit_marcher'=>0,
	'unit_heavy'=>300,
	'unit_ram'=>0,
	'unit_cat'=>0,
	'unit_snob'=>0
];

$others['wall'] = 20;
$others['luck'] = rand(-25.0, 25.0);

$battle = Battle_Sim($att, $deff, $others);


echo $battle['att'];
?>