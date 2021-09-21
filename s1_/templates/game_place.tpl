<table
   <tr>
      <td><img src="{$config.cdn}/graphic/big_buildings/place1.png"/></td>
      <td><h2>{$lang->get($build)}({$village.place})</h2></td>
   </tr>
</table>
<br/>
{if $show_build}
   <table class="production_table" width="50%">
      <tr>
         <td valign="top" width="100">
            <table class="vis" width="100%">
               <tr>
                  <td width="120"><a href="game.php?village={$village.id}&amp;screen=place&amp;mode=units">{$lang->get("troops")}</a></td>
               </tr>
                <tr>
                  <td width="120"><a href="game.php?village={$village.id}&amp;screen=sim">{$lang->get("sim")}</a></td>
               </tr>
            </table>
         </td>
      </tr>
      <td>
          <table class="production_table">
             <th align="center">{$lang->get("order")}</th>
             <form name="units" action="game.php?village={$village.id}&amp;screen=place&amp;try=confirm" method="post">
                <tr>
                   {assign var=counter value=0}

                   {foreach from=$group_units key=group_name item=value}
                      <td width="150">
                         <table class="vis" width="100%">
                            {foreach from=$group_units.$group_name item=dbname}

                              <tr><td><a href="javascript:popup('popup_unit.php?unit={$dbname}', 520, 520)"><img src="{$config.cdn}/graphic/unit/{$dbname}.png"></a><input id="input_{$dbname}" name="{$dbname}" type="text" size="5" tabindex="{$counter}" value="{$values.$dbname}" class="unitsInput"/><a href="javascript:void(0)" onclick="insertUnit($('#input_{$dbname}'), {$units.$dbname})">({$units.$dbname})</td></tr>
                              
                            {/foreach}
                         </table>
                      </td>
                   {/foreach}
                </tr>
                <tr><td><a id="selectAllUnits" href="javascript:void(0);" onclick="selectAllUnits(true)">&raquo; {$lang->get("all_troops")}</a></td></tr>
                <tr>
                   <table>
		<tr>
			<td>X: <input type="text" name="x" tabindex="13" id="inputx" value="{$values.x}" size="5" maxlength="3" onkeyup="xProcess('inputx', 'inputy')" /></td>
			<td>Y: <input type="text" name="y" tabindex="14" id="inputy" value="{$values.y}" size="5" maxlength="3" /></td>
			<td rowspan="2"><input class="button red" name="attack" type="submit" value="{$lang->get("attack_order")}" /></td>
			<td rowspan="2"><input class="button green" name="support" type="submit" value="{$lang->get("support_order")}" /></td>
		</tr>
	</table>
                </tr>
            </form>
          </table>
      </td>
   </table>
{/if}