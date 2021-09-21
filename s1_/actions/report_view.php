<?php
$raport_id = $_GET['id'];

$query = $db->fetch($db->query('SELECT * FROM '.$prefix.'reports WHERE id="'.$raport_id.'"'));

if($query['receiver_userid'] == $session['userid']){
	$owner = true;
}else{
	$owner = false;
}

$units_att = explode(";", $query['a_units']);
$units_att_d = explode(";", $query['ad_units']);

$units_deff = explode(";", $query['d_units']);
$units_deff_d = explode(";", $query['dd_units']);

$i = 0;

foreach($cl_units->get_array("dbname") as $key=>$value){
	$units[] = $value;
	
	$units_att[$value] = $units_att[$i];
	$units_att_d[$value] = $units_att_d[$i];

	$units_deff[$value] = $units_deff[$i];
	$units_deff_d[$value] = $units_deff_d[$i];
	$i++;
}


$lang = new aLang("reports", "EN");

$tpl->assign('lang', $lang);
$tpl->assign('wall', $query['wall']);
$tpl->assign('new_wall', $query['new_wall']);
$tpl->assign('see', $query['see_def']);
$tpl->assign('units_att_d', $units_att_d);
$tpl->assign('units_att', $units_att);
$tpl->assign('units_deff', $units_deff);
$tpl->assign('units_deff_d', $units_deff_d);
$tpl->assign('units', $units);
$tpl->assign('report', $query);
$tpl->assign('owner', $owner);
?>