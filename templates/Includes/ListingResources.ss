<h2>Resources</h2>
<ul class="listing-resources no-bullet">
	<% if $Featuresheet %><li class="document"><a href="$Featuresheet.Filename"><img class="icon" src="$ThemeDir/images/icons/brochure.svg" alt="brochure"> Download Feature Sheet</a></li><% end_if %>
	<% if $Floorplans %>
		<% if $Floorplans.Count > 1 %>
			<li class="floorplans"><img class="icon" src="$ThemeDir/images/icons/floorplan.svg" alt="floorplan"> Floor Plans:
				<ul class="no-bullet">
					<% loop $Floorplans %>
						<li><a href="$Filename">$Title</a></li>
					<% end_loop %>
				</ul>
			</li>
		<% else %>
			<% with $Floorplans %><li class="floorplans"><a href="$Filename"><img class="icon" src="$ThemeDir/images/icons/floorplan.svg" alt="floorplan">  $Title</a></li><% end_with %>
		<% end_if %>
	<% end_if %>
</ul>