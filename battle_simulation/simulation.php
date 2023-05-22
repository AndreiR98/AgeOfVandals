<?php
include_once "UnitsConfig.php";

$units_data = $cl_units->get_array("dbname");


$config['ram']['wall']['base'] = 4;
$config['ram']['wall']['factor'] = 1.095;

$config['defense'] = 50;

$config['units'] = array('spear', 'sword', 'axe', 'archer', 'spy', 'light', 'marcher', 'heavy', 'ram', 'cat', 'snob');

$arr_wall_bonus = array(
    "0"=>"0.00",
    "1"=>"0.04",
    "2"=>"0.08",
    "3"=>"0.12",
    "4"=>"0.16",
    "5"=>"0.20",
    "6"=>"0.24",
    "7"=>"0.29",
    "8"=>"0.34",
    "9"=>"0.39",
    "10"=>"0.44",
    "11"=>"0.49",
    "12"=>"0.55",
    "13"=>"0.60",
    "14"=>"0.66",
    "15"=>"0.72",
    "16"=>"0.79",
    "17"=>"0.85",
    "18"=>"0.92",
    "19"=>"0.99",
    "20"=>"1.07",
);

function Battle_Sim($att, $def, $others)
{
    global $config;
    global $cl_units;
    global $arr_wall_bonus;

    $attPoints_Foot = 0;
    $attPoints_Cav = 0;
    $attPoints_Bow = 0;

    $defPoints_Foot = 0;
    $defPoints_Cav = 0;
    $defPoints_Bow = 0;

    $total_attack_points = 0;
    $total_defence_points = 0;

    $att_lost_total = 0;
    $def_lost_total = 0;

    $attack_foot_factor = 0;
    $attack_cav_factor = 0;
    $attack_bow_factor = 0;

    $def_foot_factor = 0;
    $def_cav_factor = 0;
    $def_bow_factor = 0;

    foreach ($cl_units->get_array("dbname") as $name => $dbname) {
        if ($cl_units->get_group($dbname) == "cav") {
            $attPoints_Cav += $cl_units->get_att($dbname, 1) * $att[$dbname];
        } elseif ($cl_units->get_group($dbname, 1) == "archer") {
            $attPoints_Bow += $cl_units->get_att($dbname, 1) * $att[$dbname];
        } else {
            $attPoints_Foot += $cl_units->get_att($dbname, 1) * $att[$dbname];
        }

        $defPoints_Foot += $cl_units->get_def($dbname, 1) * $def[$dbname];
        $defPoints_Cav += $cl_units->get_defCav($dbname, 1) * $def[$dbname];
        $defPoints_Bow += $cl_units->get_defarcher($dbname, 1) * $def[$dbname];
    }

    $total_attack_points = $attPoints_Foot + $attPoints_Cav + $attPoints_Bow;
    $total_defence_points = $defPoints_Foot + $defPoints_Cav + $defPoints_Bow;

    //Computing attack points
    $attack_foot_factor = $attPoints_Foot / $total_attack_points;
    $attack_cav_factor = $attPoints_Cav / $total_attack_points;
    $attack_bow_factor = $attPoints_Bow / $total_attack_points;

    $def_foot = $defPoints_Foot * $attack_foot_factor;
    $def_cav = $defPoints_Cav * $attack_cav_factor;
    $def_bow = $defPoints_Bow * $attack_bow_factor;

    $def_foot_factor = $defPoints_Foot / $total_defence_points;
    $def_cav_factor = $defPoints_Cav / $total_defence_points;
    $def_bow_factor = $defPoints_Bow / $total_defence_points;


    $fac_def_gen = (pow($attack_foot_factor, 1.5) / pow($def_foot_factor, 1.5));
    $fac_def_cav = (pow($attack_cav_factor, 1.5) / pow($def_cav_factor, 1.5));
    $fac_def_bow = (pow($attack_bow_factor, 1.5) / pow($def_bow_factor, 1.5));

    $fac_gen = ((pow($attPoints_Foot, 1.5)) / (pow($def_foot, 1.5)));

    $def_factor = ((pow($total_attack_points, 1.5))) / (pow($total_defence_points, 1.5));


    return array(
        "attack_points_foot"=>$attPoints_Foot,
        "pct_gen"=>$attack_foot_factor,
        "attack_points_total"=>$total_attack_points,
        "foot_loses_attack"=>$fac_gen,
        "def_foot"=>$def_foot,
        "def_factor"=>$def_factor,
        "def_gen"=>$defPoints_Foot,
        "fac_def_gen"=>$fac_def_gen,
        "fac_def_cav"=>$fac_def_cav,
        "fac_dev_bow"=>$attack_bow_factor
        );
}

$att = [
    'unit_spear'=>1000000,
    'unit_sword'=>1000000,
    'unit_axe'=>1000000,
    'unit_archer'=>01000000,
    'unit_spy'=>1000000,
    'unit_light'=>1000000,
    'unit_marcher'=>1000000,
    'unit_heavy'=>1000000,
    'unit_ram'=>1000000,
    'unit_cat'=>1000000,
    'unit_snob'=>0
];

$deff = [
    'unit_spear'=>2000000,
    'unit_sword'=>2000000,
    'unit_axe'=>2000000,
    'unit_archer'=>2000000,
    'unit_spy'=>2000000,
    'unit_light'=>2000000,
    'unit_marcher'=>2000000,
    'unit_heavy'=>2000000,
    'unit_ram'=>2000000,
    'unit_cat'=>2000000,
    'unit_snob'=>0
];

//$others['wall'] = 20;
//$others['luck'] = rand(-25.0, 25.0);

$others['wall'] = 0;
$others['luck'] = 0;

$battle = Battle_Sim($att, $deff, $others);

echo '<pre>';
print_r($battle);