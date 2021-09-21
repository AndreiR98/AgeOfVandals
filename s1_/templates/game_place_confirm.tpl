<br/>
<table class="production_table">
   <tr>
      <td>{if $type=="attack"}
            <h2>{$lang->get("attack_order")}</h2>
          {else}
            <h2>{$lang->get("support_order")}</h2>
          {/if}
      </td>
   </tr>
   </table>
   <form action="game.php?village={$village.id}&amp;screen=place&amp;action=command&amp;h={$hkey}" method="POST" onSubmit="this.submit.disabled=true;">
      <input type="hidden" name="{$type}" value="true">
      <input type="hidden" name="x" value="{$values.x}">
      <input type="hidden" name="y" value="{$values.y}">
      <table  class="production_table" style="font-size:14pt" width="400">
         <tr><th colspan="2">dasdada</th></tr>
         <tr><td>Direction:</td><td><a href="game.php?village={$village.id}&amp;screen=info_village;id={$info_village.id}">{$info_village.name} ({$info_village.x}|{$info_village.y})</a></td></tr>
         <tr><td>Player:</td><td><a href="game.php?village={$village.id}&amp;screen=info_player;id={$info_user.id};id={$info_village.userid}">{$info_user.username}</a></td></tr>
         <tr><td>Duration:</td><td>{$unit_runtime|format_time}</td></tr>
         <tr><td>Arrival:</td><td>{$arrival|relative_date} <span class="relative_time">{$unit_runtime|relative_time}</span><span style="font-size:10pt; color: grey">:{$msec}</span></td></tr>
         
      </table>
      <br/>
         <table>
               <tr>
                  {foreach from=$cl_units->get_array("dbname") item=dbname key=name}
                     <input type="hidden" name="{$dbname}" value="{$send_units.$dbname}">
                     <td><img src="{$config.cdn}/graphic/unit/{$dbname}.png" title="{$name}" /></td>
                  {/foreach}
               </tr>
               <tr>
                  {foreach from=$cl_units->get_array("dbname") item=dbname key=name}
                     {if $send_units.$dbname > 0}
                        <td>{$send_units.$dbname}</td>
                     {else}
                        <td class="hidden">0</td>
                     {/if}
                  {/foreach}
               </tr>
            </table>
            <br/>
               {if $send_units.unit_cat > 0}
                  <table class="vis">
                     <tr>
                        <td>
                           <select name="building" size="1">
                              {foreach from=$cl_builds->get_array("dbname") item=dbname key=id}
                                 <option label="{$cl_builds->get_name($dbname)}" value="{$dbname}">{$cl_builds->get_name($dbname)}</option>
                              {/foreach}
                           </select>
                        </td>
                     </tr>
                  </table>
               {/if}
               <br/>
               <input name="submit" type="submit" onload="this.disabled=false;" value="OK" style="font-size:10pt;">         
   </form>
  