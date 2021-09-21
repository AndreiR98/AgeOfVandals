<table width="50%">
   <tr>
      <td>
         <img src="{$config.cdn}/graphic/big_buildings/main1.png" />
      </td>
      <td>
         <h2>{$cl_builds->get_name('main')}</h2>
      </td>
   </tr>
</table>
{if $building}
<table class="production_table">
   <tr>
      <th width="250">{$lang->get("order")}</th>
      <th width="100">{$lang->get("duration")}</th>
      <th width="150">{$lang->get("endtime")}</th>
      <th width="150">{$lang->get("cancel")}</th>

   </tr>
   {foreach from=$do_build item=item key=id}
      {assign var="buildname" value=$do_build.$id.build}
      <tr>
         <td>
             <img src="{$config.cdn}/graphic/buildings/{$do_build.$id.build}.png">{$lang->get({$do_build.$id.build})}({$do_build.$id.stage})
         </td>
         <td>
             <span class="timer">{$do_build.$id.time|format_time}</span>
         </td>
         <td>
             {$do_build.$id.finished|format_date}
         </td>
         <td>
            <a href="game.php?village={$village.id}&amp;screen=main&amp;action=cancel&amp;id={$do_build.$id.id}&amp;h={$hkey}">{$lang->get("cancelb")}</a>
         </td>   
      </tr>
   {/foreach}
</table>
{/if}
<table class="production_table" width="50%">
   <tr>
      <th style="width:100px;" colspan="2">{$lang->get("buildings")}</th>
      <th style="width:60px;"><div align="center"><img src="{$config.cdn}/graphic/wood.png"/></div></th>
      <th style="width:60px;"><div align="center"><img src="{$config.cdn}/graphic/stone.png"/></div></th>
      <th style="width:60px;"><div align="center"><img src="{$config.cdn}/graphic/iron.png"/></div></th>
      <th style="width:60px;"><div align="center"><img src="{$config.cdn}/graphic/face.png"/></div></th>
      <th style="width:60px;"><div align="center"></div></th>
   </tr>

   
 
   {foreach from=$fulfilled_builds item=dbname key=id}
   <tr>
   <th width="25"><div align="center"><img src="{$config.cdn}/graphic/buildings/{$dbname}.png"></div></th><td><a href="game.php?village={$village.id}&screen={$dbname}">{$cl_builds->get_name($dbname)}</a>({$village.$dbname})</td>
      
      {if $cl_builds->get_maxstage($dbname) <= $build_village.$dbname}
        
         <td colspan="6" align="center" class="inactive">{$lang->get("maxlevel")}</td>
      {else}

          <td  align="center" class="inactive"><img src="{$config.cdn}/graphic/wood.png">{$cl_builds->get_wood($dbname,$build_village.$dbname+1)}</td>
          <td  align="center" class="inactive"><img src="{$config.cdn}/graphic/stone.png">{$cl_builds->get_stone($dbname,$build_village.$dbname+1)}</td>
          <td  align="center" class="inactive"><img src="{$config.cdn}/graphic/iron.png">{$cl_builds->get_iron($dbname,$build_village.$dbname+1)}</td>
          <td  align="center" class="inactive"><img src="{$config.cdn}/graphic/face.png">{$cl_builds->get_pop($dbname,$build_village.$dbname+1)}</td>
          <td  align="center" class="inactive">{$cl_builds->get_time($village.main, $dbname,$build_village.$dbname+1)|format_time}</td>
          {$cl_builds->build($village,$id,$build_village)}

 
          {if $cl_builds->get_build_error2() == 'not_enough_ress'}
             <td align="center" class="inactive"><span>{$lang->get("ress_dispo_in")} <span class="timer_replace">{$cl_builds->get_build_error()}</span></span><span style="display:none">{$lang->get("ress_dispo")}</span></td>
          {elseif $cl_builds->get_build_error2() == 'not_fulfilled'}
             <td class="inactive">{$lang->get("not_req")}</td>
          {elseif $cl_builds->get_build_error2() == 'not_enough_pop'}
             <td class="inactive">{$lang->get("not_pop")}</td>
          {elseif $cl_builds->get_build_error2() == 'not_enough_storage'}
             <td class="inactive">{$lang->get("storage_space")}</td>
          {else}
                {if count($do_build) < 3}
                    <td align="center"><a href="game.php?village={$village.id}&screen=main&action=build&id={$dbname}&h={$hkey}">{$lang->get("build")} {$build_village.$dbname+1}</a></td>
                {else}
                   <td align="center">{$lang->get("build_limit")}</td>
                {/if}
          {/if}
          
      {/if}
   </tr>
   {/foreach}
</table>