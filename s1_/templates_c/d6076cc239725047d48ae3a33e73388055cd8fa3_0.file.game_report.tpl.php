<?php
/* Smarty version 3.1.39, created on 2022-02-08 21:40:45
  from 'E:\xampp\htdocs\AgeOfVandals\s1_\templates\game_report.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_6202d54d2af7a5_43193384',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd6076cc239725047d48ae3a33e73388055cd8fa3' => 
    array (
      0 => 'E:\\xampp\\htdocs\\AgeOfVandals\\s1_\\templates\\game_report.tpl',
      1 => 1632262705,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6202d54d2af7a5_43193384 (Smarty_Internal_Template $_smarty_tpl) {
?>
<td><?php echo format_date($_smarty_tpl->tpl_vars['rep']->value['time']);?>
</td>

<table class="production_table" class="vis overview_table" width="50%">
<tr>
	<th colspan="2">Raport</th>
</tr>
<tr>
	<td width="20%">
		<table class="vis" width="100%">
			<tr><td style="min-width: 80px"><a href="">All</a></td></tr>
			<tr><td style="min-width: 80px"><a href="">Attacks</a></td></tr>
			<tr><td style="min-width: 80px"><a href="">Defense</a></td></tr>
			<tr><td style="min-width: 80px"><a href="">Support</a></td></tr>
		</table>
	</td>
	<td width="100%">
		<table class="vis" width="100%">
		   <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['reports']->value, 'rep', false, 'id');
$_smarty_tpl->tpl_vars['rep']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['rep']->value) {
$_smarty_tpl->tpl_vars['rep']->do_else = false;
?>
		   <tr>
		     <td>casuta</td>
		     <td><img src="<?php echo $_smarty_tpl->tpl_vars['config']->value['cdn'];?>
/graphic/dots/<?php echo $_smarty_tpl->tpl_vars['rep']->value['color'];?>
.png"><a href="game.php?village=<?php echo $_smarty_tpl->tpl_vars['village']->value['id'];?>
&screen=report_view&amp;id=<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
&amp;mode=all"><?php echo $_smarty_tpl->tpl_vars['rep']->value['title'];?>
</a></td>
		     <td><?php echo format_date($_smarty_tpl->tpl_vars['rep']->value['time']);?>
</td>
		   </tr>
		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		</table>
	</td>
</tr>
</table>
</html>
<?php }
}
