
<h2>Resources</h2>
<ul>
	<% if $Featuresheet %><li><a href="$Featuresheet.Filename">Download Feature Sheet</a></li><% end_if %>
	<% if $Floorplans %>
		<% if $Floorplans.Count > 1 %>
			<li>Floor Plans:
				<ul class="no-bullet">
					<% loop $Floorplans %>
						<li><a href="$Filename">$Title</a></li>
					<% end_loop %>
				</ul>
			</li>
		<% else %>
			<% with $Floorplans %><li><a href="$Filename">$Title</a></li><% end_with %>
		<% end_if %>
	<% end_if %>
</ul>