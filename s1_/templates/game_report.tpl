
<td>{$rep['time']|format_date}</td>

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
		   {foreach from=$reports item=$rep key=$id}
		   <tr>
		     <td>casuta</td>
		     <td><img src="{$config.cdn}/graphic/dots/{$rep['color']}.png"><a href="game.php?village={$village.id}&screen=report_view&amp;id={$id}&amp;mode=all">{$rep['title']}</a></td>
		     <td>{$rep['time']|format_date}</td>
		   </tr>
		{/foreach}
		</table>
	</td>
</tr>
</table>
</html>
