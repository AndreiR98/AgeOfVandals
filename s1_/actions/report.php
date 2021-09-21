<?php
$lang = new aLang("game", "EN");

$query = $db->query('SELECT * FROM '.$prefix.'reports WHERE receiver_userid="'.$session['userid'].'"');
while($row = $db->fetch($query)){
	$reports[$row['id']]['id'] = $row['id'];
	$reports[$row['id']]['title'] = $row['title'];
	$reports[$row['id']]['time'] = $row['time'];
	$reports[$row['id']]['color'] = $row['image'];
}


$tpl->assign('reports', $reports);
?>