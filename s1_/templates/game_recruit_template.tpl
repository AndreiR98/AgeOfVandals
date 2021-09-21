<table>
   <tr>
      <td>
         <img src="{$config.cdn}/graphic/big_buildings/{$dbname}2.png" />
      </td>
      <td>
         <h2>{$lang->get($dbname)} ({$village.$dbname})</h2>
      </td>
   </tr>
</table>
{if $show_build}
   {if count($recruit_units) > 0}
      <table class="vis production_table">
         <tr>
            <th width="150">{$lang->get("order")}</th>
            <th width="120">{$lang->get("duration")}</th>
            <th width="150">{$lang->get("endtime")}</th>
            <th width="100">{$lang->get("cancel")}</th>
         </tr>
         {foreach from=$recruit_units key=key item=value}
            <tr {if $recruit_units.$key.lit}class="lit"{/if}>
               <td><img src="{$config.cdn}/graphic/unit_big/{$recruit_units.$key.unit}.png" width="30px" hieght="30px"><b>{$recruit_units.$key.num_unit}</b> {$cl_units->get_name($recruit_units.$key.unit)}</td>
                  <td><span class="timer">{$recruit_units.$key.countdown|format_time}</span></td>
               <td>{$recruit_units.$key.time_finished|format_date}</td>
               <td><a href="game.php?village={$village.id}&amp;screen={$dbname}&amp;action=cancel&amp;id={$key}&amp;h={$hkey}">{$lang->get("cancel")}</a></td>
            </tr>
         {/foreach}
      </table>
   {/if}
<form action="game.php?village={$village.id}&amp;screen={$dbname}&amp;action=train&amp;h={$hkey}" method="POST" onsubmit="this.submit.disabled=true;">
    <table class="vis production_table" style="font-size:13pt;">
       <tr>
          <th width="150">{$lang->get("units")}</th>
          <th colspan="4" width="120">{$lang->get("ressources")}</th>
          <th width="130">(hh:mm:ss)</th>
          <th width="130">{$lang->get("in_total")}</th>
          <th>{$lang->get("recruit")}</th>
       </tr>
       {foreach from=$units key=unit_dbname item=name}
          <tr>
            <td><a href="javascript:popup('popup_unit.php?unit={$unit_dbname}', 520, 520)"><img src="{$config.cdn}/graphic/unit/{$unit_dbname}.png">{$name}</a></td>
            <td><img src="{$config.cdn}/graphic/wood.png" title="wood"/>{$cl_units->get_woodprice($unit_dbname)}</td>
            <td><img src="{$config.cdn}/graphic/stone.png" title="stone"/>{$cl_units->get_stoneprice($unit_dbname)}</td>
            <td><img src="{$config.cdn}/graphic/iron.png" title="iron"/>{$cl_units->get_ironprice($unit_dbname)}</td>
            <td><img src="{$config.cdn}/graphic/face.png" title="iron"/>{$cl_units->get_popprice($unit_dbname)}</td>
            <td>{$cl_units->get_time($village.bonus,$dbname,$village.$dbname,$unit_dbname)|format_time}</td>
             <td>{$units_in_village.$unit_dbname}/{$units_all.$unit_dbname}</td>
             {$cl_units->check_needed($unit_dbname, $village)}
             {if $cl_units->last_error == not_tec}
                <td class="inactive">{$lang->get("tec_need")}</td>
             {elseif $cl_units->last_error == not_needed}
                <td class="inactive">{$lang->get("not_need")}</td>
             {elseif $cl_units->last_error == no_enough_ress}
                <td class="inactive">{$lang->get("not_enough_res")}</td>
             {elseif $cl_units->last_error == not_enough_pop}
                <td class="inactive">{$lang->get("not_enough_pop")}</td>
             {else}
                <td><input name="{$unit_dbname}" type="text" size="5" maxlength="5" id="input_{$unit_dbname}" /><a href="javascript:void(0);" onclick="insertUnit($('#input_{$unit_dbname}'), {$cl_units->last_error})">(max. {$cl_units->last_error})</a></td>   
             {/if}
          </tr>
       {/foreach}
       <tr><td colspan="8" align="right"><input name="submit" type="submit" value="{$lang->get("recruit")}" style="font-size:13px;"/></td></tr>
    </table>
</form>
{/if}