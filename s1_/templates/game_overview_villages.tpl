<table class="production_table" class="vis overview_table" width="100%">
<tr>
<th>{$lang->get("villages")}</th>
<th>{$lang->get("points")}</th>
<th>{$lang->get("resources")}</th>
<th>{$lang->get("storage")}</th>
<th>{$lang->get("farm")}</th>
<th colspan="11">{$lang->get("troops")}</th>
</tr>
{foreach from=$villages item=village}
<tr class="nowrap row_a">
<td><a href="game.php?village={$village.id}&screen=overview">{$village.name}({$village.x}|{$village.y})</a></td>
<td>{$village.points}</td>
<td><img src="{$config.cdn}/graphic/wood.png" class="info_res"><span id="wood"{if $village.r_wood==$max_storage}class="warn"{/if}>{round($village.r_wood)}</span>
<img src="{$config.cdn}/graphic/stone.png" class="info_res"><span id="wood"{if $village.r_stone==$max_storage}class="warn"{/if}>{round($village.r_stone)}</span>
<img src="{$config.cdn}/graphic/iron.png" class="info_res"><span id="wood"{if $village.r_stone==$max_storage}class="warn"{/if}>{round($village.r_iron)}</span>
</td>
<td><img src="{$config.cdn}/graphic/res.png" class="info_res"><span id="storage">{$village.storage}</td>
<td><img src="{$config.cdn}/graphic/face.png" class="info_res"><span id="pop">{$village.r_pop}/{floor($village.farm)}</td>
{foreach from=$cl_units2 item=dbname}
<td><img src="{$config.cdn}/graphic/unit/{$dbname}.png"><span id="{$dbname}">{$units_in.$village.$dbname}</span></td>
{/foreach}
</tr>
{/foreach}
</table>
