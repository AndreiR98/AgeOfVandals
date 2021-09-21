<table cellspacing="0" cellpadding="0" style="border-width:1px; border-style:solid; border-color:#804000; background-color:#F1EBDD;" >
   <tr>
      <td>
         <div class="content_main" style="display:block;">
            <img usemap="#map" width="600" height="418" src="{$config.cdn}/graphic/visual/back_none.jpg">
            
             {foreach from=$built_builds item=dbname key=id}
                {if $dbname == 'place'}
                    {if $village.place >= 1}
                         <div class="p_place"><div class="flag place">{$village.place}</div>
                         <img src="{$config.cdn}/graphic/visual/place1.png"/>
                         </div>
                    {/if}
                {/if}
                {if $dbname == 'main'}
                     <div class="p_main"><div class="flag main">{$village.main}</div>
                    {if $is_building}
                       {if $village.main < '5'}
                          <img  src="{$config.cdn}/graphic/visual/main1.gif"/>
                       {elseif $village.main >= '5' && $village.main < '15'}
                          <img  src="{$config.cdn}/graphic/visual/main2.gif"/>
                       {elseif $village.main >= '15'}
                         <img  src="{$config.cdn}/graphic/visual/main3.gif"/>
                       {/if}
                    {else}
                        {if $village.main < '5'}
                          <img  src="{$config.cdn}/graphic/visual/main1.png"/>
                       {elseif $village.main >= '5' && $village.main < '15'}
                          <img  src="{$config.cdn}/graphic/visual/main2.png"/>
                       {elseif $village.main >= '15'}
                          <img  src="{$config.cdn}/graphic/visual/main3.png"/>
                       {/if}
                    {/if}
                    </div>
                {else if $dbname == 'barracks'}
                <div class="p_barracks"><div class="flag barracks">{$village.barracks}</div>
                   {if $is_recruting_b}
                       {if $village.barracks < '5'}
                         <img  src="{$config.cdn}/graphic/visual/barracks1.gif"/>
                       {elseif $village.barracks >= '5' && $village.barracks < '20'}
                          <img src="{$config.cdn}/graphic/visual/barracks2.gif"/>
                       {elseif $village.barracks >= '20'}
                          <img src="{$config.cdn}/graphic/visual/barracks3.gif"/>
                       {/if}
                    {else}
                        {if $village.barracks < '5'}
                          <img src="{$config.cdn}/graphic/visual/barracks1.png"/>
                       {elseif $village.barracks >= '5' && $village.barracks < '20'}
                          <img src="{$config.cdn}/graphic/visual/barracks2.png"/>
                       {elseif $village.barracks >= '20'}
                         <img src="{$config.cdn}/graphic/visual/barracks3.png"/>
                       {/if}
                    {/if}
                </div>
                {else if $dbname == 'stable'}
                <div class="p_stable"><div class="flag stable">{$village.stable}</div>
                    {if $is_recruting_s}
                       {if $village.stable < '5'}
                          <img src="{$config.cdn}/graphic/visual/stable1.gif"/>
                       {elseif $village.stable >= '5' && $village.stable < '10'}
                          <img src="{$config.cdn}/graphic/visual/stable2.gif"/>
                       {elseif $village.stable >= '10'}
                          <img src="{$config.cdn}/graphic/visual/stable3.gif"/>
                       {/if}
                    {else}
                        {if $village.stable < '5'}
                          <img src="{$config.cdn}/graphic/visual/stable1.png"/>
                       {elseif $village.stable >= '5' && $village.stable < '10'}
                          <img src="{$config.cdn}/graphic/visual/stable2.png"/>
                       {elseif $village.stable >= '10'}
                          <img src="{$config.cdn}/graphic/visual/stable3.png"/>
                       {/if}
                    {/if}
                </div>
                {else if $dbname == 'garage'}
                <div class="p_garage"><div class="flag garage">{$village.garage}</div>
                    {if $is_recruting_g}
                       {if $village.garage < '5'}
                          <img src="{$config.cdn}/graphic/visual/garage1.gif"/>
                       {elseif $village.garage >= '5' && $village.garage < '10'}
                          <img src="{$config.cdn}/graphic/visual/garage2.gif"/>
                       {elseif $village.garage >= '10'}
                          <img src="{$config.cdn}/graphic/visual/garage3.gif"/>
                       {/if}
                    {else}
                        {if $village.garage < '5'}
                          <img src="{$config.cdn}/graphic/visual/garage1.png"/>
                       {elseif $village.garage >= '5' && $village.garage < '10'}
                          <img src="{$config.cdn}/graphic/visual/garage2.png"/>
                       {elseif $village.garage >= '10'}
                          <img src="{$config.cdn}/graphic/visual/garage3.png"/>
                       {/if}
                    {/if}
                </div>
                {else if $dbname == 'snob'}
                <div class="p_snob"><div class="flag snob">{$village.snob}</div>
                    {if $is_recruting_n}
                       {if $village.snob >= '1'}
                         <img src="{$config.cdn}/graphic/visual/snob1.gif"/>
                       {/if}
                    {else}
                        {if $village.snob >= '1'}
                          <img src="{$config.cdn}/graphic/visual/snob1.png"/>
                       {/if}
                    {/if}
                </div>
                {else if $dbname == 'smith'}
                <div class="p_smith"><div class="flag smith">{$village.smith}</div>
                    {if $is_researching}
                       {if $village.smith < '5'}
                          <img src="{$config.cdn}/graphic/visual/smith1.gif"/>
                       {elseif $village.smith >= '5' && $village.smith < '15'}
                          <img src="{$config.cdn}/graphic/visual/smith2.gif"/>
                       {elseif $village.smith >= '15'}
                          <img src="{$config.cdn}/graphic/visual/smith3.gif"/>
                       {/if}
                    {else}
                        {if $village.smith < '5'}
                          <img src="{$config.cdn}/graphic/visual/smith1.png"/>
                       {elseif $village.smith >= '5' && $village.smith < '15'}
                          <img src="{$config.cdn}/graphic/visual/smith2.png"/>
                       {elseif $village.smith >= '15'}
                          <img src="{$config.cdn}/graphic/visual/smith3.png"/>
                       {/if}
                    {/if}
                </div>    
                {else if $dbname == 'market'}
                <div class="p_market"><div class="flag market">{$village.market}</div>
                        {if $village.market < '10'}
                          <img src="{$config.cdn}/graphic/visual/market1.png"/>
                       {elseif $village.market >= '10' && $village.market < '20'}
                          <img src="{$config.cdn}/graphic/visual/market2.png"/>
                       {elseif $village.market >= '20'}
                          <img src="{$config.cdn}/graphic/visual/market3.png"/>
                       {/if}
                </div>
                {else if $dbname == 'wood'}
                <div class="p_wood"><div class="flag wood">{$village.wood}</div>
                     {if $village.wood < '10'}
                          <img src="{$config.cdn}/graphic/visual/wood1.png"/>
                       {elseif $village.wood >= '10' && $village.wood < '20'}
                          <img src="{$config.cdn}/graphic/visual/wood2.png"/>
                       {elseif $village.wood >= '20'}
                          <img src="{$config.cdn}/graphic/visual/wood3.png"/>
                       {/if}
                </div>
                {else if $dbname == 'stone'}
                <div class="p_stone"><div class="flag stone">{$village.stone}</div>
                     {if $village.stone < '10'}
                          <img src="{$config.cdn}/graphic/visual/stone1.png"/>
                       {elseif $village.stone >= '10' && $village.stone < '20'}
                          <img src="{$config.cdn}/graphic/visual/stone2.png"/>
                       {elseif $village.stone >= '20'}
                          <img src="{$config.cdn}/graphic/visual/stone3.png"/>
                       {/if}
                </div>
                {else if $dbname == 'iron'}
                <div class="p_iron"><div class="flag iron">{$village.iron}</div>
                     {if $village.iron < '10'}
                          <img src="{$config.cdn}/graphic/visual/iron1.png"/>
                       {elseif $village.iron >= '10' && $village.iron < '20'}
                          <img src="{$config.cdn}/graphic/visual/iron2.png"/>
                       {elseif $village.iron >= '20'}
                          <img src="{$config.cdn}/graphic/visual/iron3.png"/>
                       {/if}
                </div>
                {else if $dbname == 'farm'}
                <div class="p_farm"><div class="flag farm">{$village.farm}</div>
                     {if $village.farm < '10'}
                          <img src="{$config.cdn}/graphic/visual/farm1.png"/>
                       {elseif $village.farm >= '10' && $village.farm < '20'}
                          <img src="{$config.cdn}/graphic/visual/farm2.png"/>
                       {elseif $village.farm >= '20'}
                          <img src="{$config.cdn}/graphic/visual/farm3.png"/>
                       {/if}
                </div>
                {else if $dbname == 'storage'}
                <div class="p_storage"><div class="flag storage">{$village.storage}</div>
                     {if $village.storage < '10'}
                          <img src="{$config.cdn}/graphic/visual/storage1.png"/>
                       {elseif $village.storage >= '10' && $village.storage < '20'}
                          <img src="{$config.cdn}/graphic/visual/storage2.png"/>
                       {elseif $village.storage >= '20'}
                          <img src="{$config.cdn}/graphic/visual/storage3.png"/>
                       {/if}
                </div>
                {else if $dbname == 'wall'}
                <div class="p_wall"><div class="flag wall">{$village.wall}</div>
                     {if $village.wall < '10'}
                          <img src="{$config.cdn}/graphic/visual/wall1.png"/>
                       {elseif $village.wall >= '10' && $village.wall < '15'}
                          <img src="{$config.cdn}/graphic/visual/wall2.png"/>
                       {elseif $village.wall >= '15'}
                          <img src="{$config.cdn}/graphic/visual/wall3.png"/>
                       {/if}
                </div>
                {/if}
                 
            {/foreach}

            <img class="empty" src="{$config.cdn}/graphic/visual/empty.png" alt="" usemap="#map" />
            <map name="map" id="map_buildings">
             {foreach from=$built_builds item=dbname key=id}
            <a href="game.php?village={$village.id}&amp;screen={$dbname}""><area shape="poly" target="_blank" coords="{$cl_builds->get_GraphicCoords($dbname)}" alt="{$cl_builds->get_name($dbname)}" title="{$cl_builds->get_name($dbname)}"></a>
            {/foreach}
            </map>
            
             
            
             
         </div>
      </td>
      <td>
        <table class="production_table" class="vis overview_table" width="100%">
        <tr>
              <thead>
        <tr>
            <th colspan="2">{$lang->get("resources")}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><img src="{$config.cdn}/graphic/wood.png">{$lang->get("wood")}</td>
            <td><b>{round($wood_per_hour)}</b> {$lang->get("perh")}</td>
        </tr>
         <tr>
            <td><img src="{$config.cdn}/graphic/stone.png">{$lang->get("stone")}</td>
            <td><b>{round($stone_per_hour)}</b> {$lang->get("perh")}</td>
        </tr>
         <tr>
            <td><img src="{$config.cdn}/graphic/iron.png">{$lang->get("iron")}</td>
            <td><b>{round($iron_per_hour)}</b> {$lang->get("perh")}</td>
        </tr>
    </tbody>
           </tr>
           <tr>
              <th colspan="2">{$lang->get("troops")}</th>
              {foreach from=$in_village item=dbname key=id}
              <tr class="nowrap row_a">
                 <td><img src="{$config.cdn}/graphic/unit/{$dbname}.png"><b>{$troops.$dbname}</b></td>
                 <td>{$cl_units->get_name($dbname)}</td>
              </tr>
              {/foreach}
           </tr>
          
        </table>
      </td>
    </tr>
    <th>
       <table class="production_table">
          {if $nb >= 1}
          <div id="info_troops"></div>
          <tr>
             <td>{$lang->get("commands")}:</td>
             <td>{$lang->get("land")}:</td>
             <td>{$lang->get("land_in")}:</td>
          </tr>

          {foreach from=$cmd item=name key=key}
              <tr>
                 <td><img src="{$config.cdn}/graphic/{$cmd.$key.type}.png" width="20" height="20" onmouseover="showinfo_command(event, {$key}, {$cmd.$key.from_user}, {$cmd.$key.to_user})" onmouseout="hideinfo_command()"><a href="game.php?village={$village.id}&amp;screen=info_command&amp;id={$key}&amp;h={$hkey}" >{$cmd.$key.name_from} {$cmd.$key.type} {$cmd.$key.name_to}</a> - </td>
                 <td>{$cmd.$key.end_time|format_date} - </td>
                 <td><span class="timer">{$cmd.$key.countdown|format_time}</span></td>
              </tr>
          {/foreach}
          {/if}
         
       </table>
    </th>  
</table>