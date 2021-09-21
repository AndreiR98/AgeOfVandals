<table class="production_table" width="50%">
<tr>
    <td>X</td>
   {foreach from=$units_data item=dbname key=id}
      <td><img src="{$config.cdn}/graphic/unit/{$dbname}.png"></td>
   {/foreach}
</tr>
<tr>
<td>Trupe atacatoare</td>
   {foreach from=$units_data item=dbname key=id}
      <td>{$units_attacker.$dbname}</td>
   {/foreach}
</tr>
<tr>
<td>Trupe in total</td>
    {foreach from=$units_data item=dbname}
        <td>{$def_units.$dbname}</td>  
    {/foreach}
      
</tr>
<tr><td>Trupe pierdute atacator</td>
    {foreach from=$units_data item=dbname}
        <td>{$att_lose.att_lose.$dbname}</td>  
    {/foreach}
</tr>
<tr><td>Trupe pierdute aparator</td>
    {foreach from=$units_data item=dbname}
        <td>{$att_lose.def_lose.$dbname}</td>  
    {/foreach}
</tr>
<tr>
<td>{$att_lose.points}</td>
</tr>

</table>