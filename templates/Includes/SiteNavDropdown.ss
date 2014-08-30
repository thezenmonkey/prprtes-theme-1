<li class="has-dropdown">
	<a href="$Link">$MenuTitle</a>
	<ul class="dropdown">
		<li class="show-for-small"><label><a href="$Link">$MenuTitle</a></label></li>
		<% loop $Children %>
			<% if $Children %>
				<% include SiteNavDropdown %>
			<% else %>
				<li><a href="$Link">$MenuTitle</a></li>
			<% end_if %>
		<% end_loop %>
	</ul>
</li>