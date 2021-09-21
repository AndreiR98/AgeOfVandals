<html>
<table class="production_table" class="vis overview_table" width="50%">
	{if $report}
<tr>
	<th colspan="2">Raport</th>
</tr>
<tr>
	<td width="100%">
		<table class="vis">
			<tr>
				<th width="140">Subject:</th>
				<th width="400"><img src="{$config.cdn}/graphic/dots/{$report.image}.png" class="">
					<span data-id="">
						<span class="quickedit-content">
							<span class="quickedit-label">
								{$report.title}
							</span>
						</span>
					</span>
				</th>
			</tr>
			<tr>
				<td>
					Battle time:
				</td>
				<td>
					{$report.time|format_date}
				</td>
			</tr>
			<tr>
				<td>Attacker's luck:</td>
				<td>{$report.luck}</td>
			</tr>
		</table>

		<table id="attack_info" width="100%" style="border:1px solid #DED3B9">
			<tr>
				{assign var=from_user_data value=$report.from_user|getPlayerDatas}
				{assign var=from_village_data value=$report.from_village|getVillageDatas}
				<th style="width:20%">Attacker</th>
				<th><a href="game.php?village={$village.id}&amp;screen=info_player&amp;id={$report.from_user}">{$from_user_data.username}</th>
			</tr>
			<tr>
				<td>Origin:</td>
				<td><span class="village_anchor contexted"><a href="game.php?village={$village.id}&amp;screen_info_village&amp;id={$report.from_village}">{$from_village_data.name} ({$from_village_data.x}|{$from_village_data.y})</a></span></td>
			</tr>
			<tr>
				<td colspan="2" style="padding:0px">
					<table id="attacker_info_att_units" class="vis" style="border-collapse:collapse">
						<tr class="center">
							<td width="20%">Troops:</td>
							{foreach from=$units item=$unit key=$id}
							<td width="35"><img src="{$config.cdn}/graphic/unit/{$unit}.png"></td>

							{/foreach}
						</tr>
						<tr>
							<td width="20%">Quantity:</td>
							{foreach from=$units item=$unit key=$id}
							<td style="text-align:center">{$units_att.$unit}</td>
							{/foreach}
							
						</tr>
						<tr>
							<td width="20%">Losses:</td>
							{foreach from=$units item=$unit key=$id}
							<td style="text-align:center">{$units_att_d.$unit}</td>
							{/foreach}
							
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<br/>
		<table id="attack_info_def" width="100%" style="border: 1px solid #DED3B9">
			{assign var=to_user_data value=$report.to_user|getPlayerDatas}
			{assign var=to_village_data value=$report.to_village|getVillageDatas}
			<tr>
				<th style="width:20%">Defender:</th>
				<th><a href="game.php?village={$village.id}&amp;screen=info_player&amp;id={$report.to_user}">{$to_user_data.username}</a></th>
			</tr>
			<tr>
				<td>Destination:</td>
				<td><span class="village_anchor contexted"><a href="game.php?village={$village.id}&amp;screen_info_village&amp;id={$report.to_village}">{$to_village_data.name} ({$to_village_data.x}|{$to_village_data.y})</a></span></td>
			</tr>
			<tr>
				{if $see==true}
				<td colspan="2" style="padding:0px">
					<table id="attacker_info_att_units" class="vis" style="border-collapse:collapse">
						<tr class="center">
							<td width="20%">Troops:</td>
							{foreach from=$units item=$unit key=$id}
							<td width="35"><img src="{$config.cdn}/graphic/unit/{$unit}.png"></td>

							{/foreach}
						</tr>
						<tr>
							<td width="20%">Quantity:</td>
							{foreach from=$units item=$unit key=$id}
							<td style="text-align:center">{$units_deff.$unit}</td>
							{/foreach}
							
						</tr>
						<tr>
							<td width="20%">Losses:</td>
							{foreach from=$units item=$unit key=$id}
							<td style="text-align:center">{$units_deff_d.$unit}</td>
							{/foreach}
							
						</tr>
					</table>
				</td>
				{else}
				<td>{$lang->get('not_see_def')}</td>
				{/if}
			</tr>
			<tr>
				<th width="50%">{$lang->get('wall_damaged')} from {$wall} to {$new_wall}</th>
			</tr>
		</table>
	</td>
</tr>
{else}
<tr>
	ERROR!
</tr>
{/if}
</table>
</html>