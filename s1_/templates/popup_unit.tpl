<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>{$cl_units->get_name($unit)}</title>
	<link rel="stylesheet" type="text/css" href="{$config.cdn}/css/game.css" />
	<script src="{$config.cdn}/js/game.js" type="text/javascript"></script>
</head>
<body>
<table class="principal" width="100%" align="center">
	<tr>
		<td>
			<table>
				<tr>
					<td><img src="{$config.cdn}/graphic/unit_big/{$unit}.png" alt="{$cl_units->get_name($unit)}" /></td>
					<td>
						<h2>{$cl_units->get_name($unit)}</h2>
						
					</td>
				</tr>
			</table>
			<table style="border: 1px solid #804000;" class="vis">
				<tr>
					<th width="150">{$lang->get("costs")}</th>
					<th>{$lang->get("population")}</th>
					<th>{$lang->get("speed")}</th>
					<th>{$lang->get("bounty")}</th>
				</tr>
				<tr class="center">
					<td>
						<img src="{$config.cdn}/graphic/wood.png" title="" />{$cl_units->get_woodprice($unit)} 
						<img src="{$config.cdn}/graphic/stone.png" title="" />{$cl_units->get_stoneprice($unit)} 
						<img src="{$config.cdn}/graphic/iron.png" title="" />{$cl_units->get_ironprice($unit)}
					</td>
					<td><img src="{$config.cdn}/graphic/face.png" title="" alt="" /> {$cl_units->get_popprice($unit)}</td>
					<td><img src="{$config.cdn}/graphic/speed.png" title="" alt="" />{$cl_units->get_speed($unit,'minutes')} {$lang->get("min_per_field")}</td>
					<td><img src="{$config.cdn}/graphic/bounty.png" title="" alt="" />{$cl_units->get_booty($unit)}</td>
				</tr>
			</table><br />
			<table style="border: 1px solid #804000;" class="vis">
				<tr><td>{$lang->get("off_str")}</td><td><img src="{$config.cdn}/graphic/unit/att.png" /> {$cl_units->get_att($unit,1)}</td></tr>
				<tr><td>{$lang->get("general_def")}</td><td><img src="{$config.cdn}/graphic/unit/def.png" /> {$cl_units->get_def($unit,1)}</td></tr>
				<tr><td>{$lang->get("cav_def")}</td><td><img src="{$config.cdn}/graphic/unit/def_cav.png" /> {$cl_units->get_defCav($unit,1)}</td></tr>
				<tr><td>{$lang->get("archer_def")}</td><td><img src="{$config.cdn}/graphic/unit/def_archer.png" /> {$cl_units->get_defArcher($unit,1)}</td></tr>
				
			</table><br />
			<table class="vis">
				<tr><th colspan="{$cl_units->get_countNeeded($unit)}">{$lang->get("needs")}</th></tr>
				<tr>
				{if count($cl_units->get_needed($unit)) > 0}
					{foreach from=$cl_units->get_needed($unit) key=n_unit item=n_stage}
					<td><a href="popup_building.php?building={$n_unit}">{$cl_builds->get_name($n_unit)}</a> ({$lang->get("level")} {$n_stage})</td>
					{/foreach}
				{else}
					<td><div class="succes"></div></td>
				{/if}
				</tr>
			</table><br />
		</td>
	</tr>
</table>
<script type="text/javascript">setImageTitles();</script>
</body>
</html>