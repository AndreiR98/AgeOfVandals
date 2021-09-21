<?php
require_once("s1_/include.inc.php");

$rap = get_server_speed('rap');

$n = 10;

$rand = randomizer(0, $n-1,  round($rap*$n));

foreach ($rand as $r){
	$rbn = mt_rand(0, 8);

	$rb[$r] = $config['bonus_types'][$rbn];

}

for($i = 0; $i<$n; $i++){

	$c = count(generate_coords()['x']);
	$rc = rand(0, $c-1);

	$x = generate_coords()['x'];
	$y = generate_coords()['y'];

	if(!in_array($i, $rand)){
		$rb[$i] = '-1';
		$bonus[$i] = false;
	}else{
		$bonus[$i] = true;
	}

	create_village('-1', '', $x[$rc], $y[$rc], $bonus[$i], $rb[$i]);
}



?>