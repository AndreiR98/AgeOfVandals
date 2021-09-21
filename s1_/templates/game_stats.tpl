<table class="data-table">
<tr>
   <td>Nr players</td>
   <td>4901</td>
</tr>
<tr>
   <td>Total sate:</td>
   <td><span class="grey">6153(1.26 per jucator)</span></td>
</tr>
<tr>
   <td>Sate jucatori:</td>
   <td><span class="grey">4884</span></td>
</tr>
<tr>
   <td>Sate barbari:</td>
   <td><span class="grey">4884</span></td>
</tr>
<tr>
   <td>Sate bonus:</td>
   <td><span class="grey">4884</span></td>
</tr>
<tr>
   <td>Points total:</td>
   <td><span class="grey">2573312(525 per jucator)</span></td>
</tr>
<tr>
   <td>
      <ul class="material-list">
         <li>
            <img src="{$config.cdn}/graphic/wood.png">{round($r['r_wood'])}
         </li>
         <li>
            <img src="{$config.cdn}/graphic/stone.png">{round($r['r_stone'])}
         </li>
         <li>
            <img src="{$config.cdn}/graphic/iron.png">{round($r['r_iron'])}
         </li>
      </ul>
   </td>
</tr>
<tr>
   <td>Total troops:</td>
   <td>
      <ul>
         {foreach from=$cl_units2 item=dbname}
            <li>
               <img src="{$config.cdn}/graphic/unit/{$dbname}.png"> - {$u.$dbname}
            </li>
         {/foreach}
      </ul>
   </td>
</tr>
</table>