<?php
/* Smarty version 3.1.39, created on 2021-09-22 01:47:55
  from 'F:\xampp\htdocs\AgeOfVandals\s1_\templates\game_report_view.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_614a6f2b3503d8_53022208',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '799bd12ae1da4f2668ca909787e6d5190a5f10c0' => 
    array (
      0 => 'F:\\xampp\\htdocs\\AgeOfVandals\\s1_\\templates\\game_report_view.tpl',
      1 => 1632262705,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_614a6f2b3503d8_53022208 (Smarty_Internal_Template $_smarty_tpl) {
?><html>
<table class="production_table" class="vis overview_table" width="50%">
	<?php if ($_smarty_tpl->tpl_vars['report']->value) {?>
<tr>
	<th colspan="2">Raport</th>
</tr>
<tr>
	<td width="100%">
		<table class="vis">
			<tr>
				<th width="140">Subject:</th>
				<th width="400"><img src="<?php echo $_smarty_tpl->tpl_vars['config']->value['cdn'];?>
/graphic/dots/<?php echo $_smarty_tpl->tpl_vars['report']->value['image'];?>
.png" class="">
					<span data-id="">
						<span class="quickedit-content">
							<span class="quickedit-label">
								<?php echo $_smarty_tpl->tpl_vars['report']->value['title'];?>

							</span>
						</span>
					</span>
				</th>
			</tr>
			<tr>
				<td>
					Battle time:
				</td>
				<td>
					<?php echo format_date($_smarty_tpl->tpl_vars['report']->value['time']);?>

				</td>
			</tr>
			<tr>
				<td>Attacker's luck:</td>
				<td><?php echo $_smarty_tpl->tpl_vars['report']->value['luck'];?>
</td>
			</tr>
		</table>

		<table id="attack_info" width="100%" style="border:1px solid #DED3B9">
			<tr>
				<?php $_smarty_tpl->_assignInScope('from_user_data', getPlayerDatas($_smarty_tpl->tpl_vars['report']->value['from_user']));?>
				<?php $_smarty_tpl->_assignInScope('from_village_data', getVillageDatas($_smarty_tpl->tpl_vars['report']->value['from_village']));?>
				<th style="width:20%">Attacker</th>
				<th><a href="game.php?village=<?php echo $_smarty_tpl->tpl_vars['village']->value['id'];?>
&amp;screen=info_player&amp;id=<?php echo $_smarty_tpl->tpl_vars['report']->value['from_user'];?>
"><?php echo $_smarty_tpl->tpl_vars['from_user_data']->value['username'];?>
</th>
			</tr>
			<tr>
				<td>Origin:</td>
				<td><span class="village_anchor contexted"><a href="game.php?village=<?php echo $_smarty_tpl->tpl_vars['village']->value['id'];?>
&amp;screen_info_village&amp;id=<?php echo $_smarty_tpl->tpl_vars['report']->value['from_village'];?>
"><?php echo $_smarty_tpl->tpl_vars['from_village_data']->value['name'];?>
 (<?php echo $_smarty_tpl->tpl_vars['from_village_data']->value['x'];?>
|<?php echo $_smarty_tpl->tpl_vars['from_village_data']->value['y'];?>
)</a></span></td>
			</tr>
			<tr>
				<td colspan="2" style="padding:0px">
					<table id="attacker_info_att_units" class="vis" style="border-collapse:collapse">
						<tr class="center">
							<td width="20%">Troops:</td>
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['units']->value, 'unit', false, 'id');
$_smarty_tpl->tpl_vars['unit']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['unit']->value) {
$_smarty_tpl->tpl_vars['unit']->do_else = false;
?>
							<td width="35"><img src="<?php echo $_smarty_tpl->tpl_vars['config']->value['cdn'];?>
/graphic/unit/<?php echo $_smarty_tpl->tpl_vars['unit']->value;?>
.png"></td>

							<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
						</tr>
						<tr>
							<td width="20%">Quantity:</td>
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['units']->value, 'unit', false, 'id');
$_smarty_tpl->tpl_vars['unit']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['unit']->value) {
$_smarty_tpl->tpl_vars['unit']->do_else = false;
?>
							<td style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['units_att']->value[$_smarty_tpl->tpl_vars['unit']->value];?>
</td>
							<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
							
						</tr>
						<tr>
							<td width="20%">Losses:</td>
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['units']->value, 'unit', false, 'id');
$_smarty_tpl->tpl_vars['unit']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['unit']->value) {
$_smarty_tpl->tpl_vars['unit']->do_else = false;
?>
							<td style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['units_att_d']->value[$_smarty_tpl->tpl_vars['unit']->value];?>
</td>
							<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
							
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<br/>
		<table id="attack_info_def" width="100%" style="border: 1px solid #DED3B9">
			<?php $_smarty_tpl->_assignInScope('to_user_data', getPlayerDatas($_smarty_tpl->tpl_vars['report']->value['to_user']));?>
			<?php $_smarty_tpl->_assignInScope('to_village_data', getVillageDatas($_smarty_tpl->tpl_vars['report']->value['to_village']));?>
			<tr>
				<th style="width:20%">Defender:</th>
				<th><a href="game.php?village=<?php echo $_smarty_tpl->tpl_vars['village']->value['id'];?>
&amp;screen=info_player&amp;id=<?php echo $_smarty_tpl->tpl_vars['report']->value['to_user'];?>
"><?php echo $_smarty_tpl->tpl_vars['to_user_data']->value['username'];?>
</a></th>
			</tr>
			<tr>
				<td>Destination:</td>
				<td><span class="village_anchor contexted"><a href="game.php?village=<?php echo $_smarty_tpl->tpl_vars['village']->value['id'];?>
&amp;screen_info_village&amp;id=<?php echo $_smarty_tpl->tpl_vars['report']->value['to_village'];?>
"><?php echo $_smarty_tpl->tpl_vars['to_village_data']->value['name'];?>
 (<?php echo $_smarty_tpl->tpl_vars['to_village_data']->value['x'];?>
|<?php echo $_smarty_tpl->tpl_vars['to_village_data']->value['y'];?>
)</a></span></td>
			</tr>
			<tr>
				<?php if ($_smarty_tpl->tpl_vars['see']->value == true) {?>
				<td colspan="2" style="padding:0px">
					<table id="attacker_info_att_units" class="vis" style="border-collapse:collapse">
						<tr class="center">
							<td width="20%">Troops:</td>
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['units']->value, 'unit', false, 'id');
$_smarty_tpl->tpl_vars['unit']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['unit']->value) {
$_smarty_tpl->tpl_vars['unit']->do_else = false;
?>
							<td width="35"><img src="<?php echo $_smarty_tpl->tpl_vars['config']->value['cdn'];?>
/graphic/unit/<?php echo $_smarty_tpl->tpl_vars['unit']->value;?>
.png"></td>

							<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
						</tr>
						<tr>
							<td width="20%">Quantity:</td>
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['units']->value, 'unit', false, 'id');
$_smarty_tpl->tpl_vars['unit']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['unit']->value) {
$_smarty_tpl->tpl_vars['unit']->do_else = false;
?>
							<td style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['units_deff']->value[$_smarty_tpl->tpl_vars['unit']->value];?>
</td>
							<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
							
						</tr>
						<tr>
							<td width="20%">Losses:</td>
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['units']->value, 'unit', false, 'id');
$_smarty_tpl->tpl_vars['unit']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['unit']->value) {
$_smarty_tpl->tpl_vars['unit']->do_else = false;
?>
							<td style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['units_deff_d']->value[$_smarty_tpl->tpl_vars['unit']->value];?>
</td>
							<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
							
						</tr>
					</table>
				</td>
				<?php } else { ?>
				<td><?php echo $_smarty_tpl->tpl_vars['lang']->value->get('not_see_def');?>
</td>
				<?php }?>
			</tr>
			<tr>
				<th width="50%"><?php echo $_smarty_tpl->tpl_vars['lang']->value->get('wall_damaged');?>
 from <?php echo $_smarty_tpl->tpl_vars['wall']->value;?>
 to <?php echo $_smarty_tpl->tpl_vars['new_wall']->value;?>
</th>
			</tr>
		</table>
	</td>
</tr>
<?php } else { ?>
<tr>
	ERROR!
</tr>
<?php }?>
</table>
</html><?php }
}
