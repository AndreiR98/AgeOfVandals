<div id="info" style="position:absolute; top:150px; left:900px; width:350px; height:1px; visibility: hidden; z-index:10"></div>

<table collspacing="0" collpadding="0" width="100%">
   <tr>
      <td valign="top">
         <table class="vis" style="border:1px solid #804000; margin-bottom:5px;" align="center">
            <tr class="nowrap">
               <th valign="top">{$lang->get("std")}:</th>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(255,255,255)"></th>
						<td style="white-space:normal">{$lang->get("act")}</td>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(240,200,0)"></th>
						<td style="white-space:normal; width:100px;">{$lang->get("ownv")}</td>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(0,0,244)"></th>
						<td style="white-space:normal">{$lang->get("tribev")}</td>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(150,150,150)"></th>
						<td style="white-space:normal">{$lang->get("barb")}</td>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(130,60,10)"></th>
						<td style="white-space:normal">{$lang->get("other")}</td>
            </tr>
            <tr class="nowrap">
						<th valign="top">{$lang->get("tribe")}:</th>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(0,160,244)"></th>
						<td style="white-space:normal;">{$lang->get("allyt")}</td>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(128,0,128)"></th>
						<td style="white-space:normal;" colspan="3">{$lang->get("pna")}</td>
						<th style="background-image: none; width:15px; padding:0px; background-color:rgb(244,0,0)"></th>
						<td style="white-space:normal" colspan="3">{$lang->get("enemy")}</td>
					</tr>
         </table>
         <table cellspacing="0" cellpadding="0" class="vis" style="border:1px solid #804000;" >
            <tr>
               <th></th>
               <th><div align="center"><a href="game.php?village={$village.id}&amp;screen=map&amp;x={$map.x}&amp;y={$map.y-$map.size}"><img src="{$config.cdn}/graphic/map/map_n.png" style="z-index:1; position:relative;" /></a></div></th>
               <th></th>
            </tr>
            <tr>
               <th align="center"><a href="game.php?village={$village.id}&amp;screen=map&amp;x={$map.x-$map.size}&amp;y={$map.y}"><img src="{$config.cdn}/graphic/map/map_w.png" style="z-index:1; position:relative;" /></a></th>
               <td>
                     <form action="game.php?village={$village.id}&screen=map" method="post">
                        <input type="hidden" name="curx" value="{$map.x}" maxlength="3" />
                        <input type="hidden" name="cury" value="{$map.y}" maxlength="3" />
                        <input type="image" name="" style="cursor:hand;" src="minimap.php?x={$map.x}&y={$map.y}&id={$village.id}&hkey={$hkey}" />
                     </form>
                  </td>
               <td>
                  <table style="background-color:rgba(0, 0, 0, 0.5); border:1px solid #000; border-spacing:0px;" cellpadding="0" class="map" >
                     {foreach from=$y_coords item=y}
                        <tr>
                           <td width="20">{$y}</td>
                           {foreach from=$x_coords item=x}
                                 {if !$cl_map->has_villages($x, $y)}
                                    <td id="" class=""><img src="{$config.cdn}/graphic/map/{$cl_map->environement($x, $y)}.png"></td>
                                 {else}
                                    <td id="" class="" style="background-color:rgb({$cl_map->getColor($x, $y)})"><a href="game.php?village={$village.id}&amp;screen=info_village&amp;id={$cl_map->getVillageId($x, $y)}"><img src="{$config.cdn}/graphic/map/{$cl_map->graphic($x, $y)}" onmouseover="showinfo({$cl_map->getVillageId($x, $y)}, {$cl_map->getvillage($x, $y, 'userid')}, {$village.x}, {$village.y});" onmouseout="hideinfo();" /></a></td>
                                 {/if}
                                
                                
                           {/foreach}
                        </tr>
                     {/foreach}
                     <tr>
									<td height="20"></td>
									{foreach from=$x_coords item=x}
										<td>{$x}</td>
									{/foreach}
								</tr>
                  </table>
               </td>
               <th align="center"><a href="game.php?village={$village.id}&amp;screen=map&amp;x={$map.x+$map.size-1}&amp;y={$map.y}"><img src="{$config.cdn}/graphic/map/map_e.png" style="z-index:1; position:relative;" /></a></th>
					</tr>
					<tr>
						<th></th>
						<th><div align="center"><a href="game.php?village={$village.id}&amp;screen=map&amp;x={$map.x}&amp;y={$map.y+$map.size}"><img src="{$config.cdn}/graphic/map/map_s.png" style="z-index:1; position:relative;" /></a></div></th>
						<th></th>
					</tr>
            </tr>
         </table>
      </td>

   </tr>
</table>