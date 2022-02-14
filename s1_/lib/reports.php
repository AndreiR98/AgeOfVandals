<?php
class reports{

	
	function new_report($player){
		global $db;
		global $prefix;

		$db->query("UPDATE ".$prefix."users SET new_report='1' WHERE userid='".$player."'");
	}

	function support($player_from, $village_from_name, $village_to_name, $village_from, $player_to, $village_to, $units, $time){
		global $db;
		global $prefix;
		

		if($player_to != "-1"){
			$title = "".$village_from_name." support ".$village_to_name."";
		} else {
			$title = "".$village_from_name." support barbarians";
		}

		if($player_to != "-1"){
			$db->query("INSERT INTO ".$prefix."reports (title, image, time, type, receiver_userid, to_user, to_village, from_user, from_village, s_units)
				VALUES ('".$title."', 'blue', '".$time."', 'support', '".$player_to."', '".$player_to."', '".$village_to."', '".$player_from."', '".$village_from."', '".$units."')");
			
		}
		if($player_to != "-1" && ($player_to != $player_from)){
			$db->query("INSERT INTO ".$prefix."reports (title, image, time, type, receiver_userid, to_user, to_village, from_user, from_village, s_units)
				VALUES ('".$title."', 'blue', '".$time."', 'support', '".$player_from."', '".$player_to."', '".$village_to."', '".$player_from."', '".$village_from."', '".$units."')");
			
		}
	}

	function attack($player_from, $player_fname, $village_from, $village_fname, $player_to, $player_tname, $village_to, $village_tname, $others, $time, $a_units, $ad_units, $d_units, $dd_units, $defenders, $defenders_units, $defender_units_per_village_dead, $support_villages_name){
		global $db;
		global $prefix;

		$vd = new getvillagedata();

        $array = ['x', 'y'];

        $from = $vd->getbyid($village_from, $array);

        $to = $vd->getbyid($village_to, $array);

		//$title = $village_fname." attack ".$village_tname;

		$title = $player_fname."(".$village_fname."(".$from['x']."|".$from['y'].")) attack ".$player_tname."(".$village_tname."(".$to['x']."|".$to['y']."))";

		$a_units_i = implode(";", $a_units);
		$d_units_i = implode(";", $d_units);

		
		$db->query("INSERT INTO ".$prefix."reports (title, image, type, receiver_userid, to_user, from_user, time, from_village, to_village, a_units, ad_units, d_units, dd_units, s_units, luck, wall, new_wall, see_def) VALUES ('".$title."','".$others['def_color']."', 'defense', '".$player_to."', '".$player_to."', '".$player_from."', '".time()."', '".$village_from."', '".$village_to."', '".$a_units_i."', '".$ad_units."', '".$d_units_i."', '".$dd_units."', '".$defenders_dead[$village]."', '".$others['luck']."', '".$others['wall']."', '".$others['new_wall']."', '".true."')");

		$db->query("INSERT INTO ".$prefix."reports (title, image, type, receiver_userid, to_user, from_user, time, from_village, to_village, a_units, ad_units, d_units, dd_units, s_units, luck, wall, new_wall, see_def) VALUES ('".$title."','".$others['att_color']."', 'attack', '".$player_from."', '".$player_to."', '".$player_from."', '".time()."', '".$village_from."', '".$village_to."', '".$a_units_i."', '".$ad_units."', '".$d_units_i."', '".$dd_units."', '".$defenders_dead[$village]."', '".$others['luck']."', '".$others['wall']."', '".$others['new_wall']."', '".true."')");
		

		

		//$db->query("INSERT INTO ".$prefix."reports (title, image, receiver_userid, to_user, from_user, time, from_village, to_village, a_units, ad_units, d_units, dd_units, s_units, luck) VALUES ('".$title."','".$others['att_color']."', '".$player_to."', '".$player_to."', '".$player_from."', '".time()."', '".$village_from."', '".$village_to."', '".$a_units_i."', '".$ad_units."', '".$d_units_i."', '".$dd_units."', '".$defenders_dead[$village]."', '".$others['luck']."')");

        //echo var_dump($defender_units_per_village_dead);

		foreach($defenders as $village){
			$array2 = ['userid'];
			$defenders_dead[$village] = implode(";", $defender_units_per_village_dead[$village]);
			$defenders_u[$village] = implode(";", $defenders_units[$village]);
			$title = "Support from ".$support_villages_name[$village]." to ".$village_tname." has been attacked";
			if($village != $village_to){
				$db->query("INSERT INTO ".$prefix."reports (title, image, type, receiver_userid, time, to_user, to_village, from_village, from_user, dd_units, s_units) VALUES('".$title."', '".$others['def_color']."', 'support', '".$vd->getbyid($village, $array2)['userid']."', '".time()."', '".$vd->getbyid($village, $array2)['userid']."', '".$village_to."', '".$village."', '".$player_to."', '".$defenders_dead[$village]."', '".$defenders_u[$village]."')");
				
			}
			
		}

		
	}
}
?>