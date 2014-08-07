<li class="has-dropdown">
	<a href="$Link">$MenuTitle</a>
	<ul class="dropdown">
		<% loop $Children %>
			<% if $Children %>
				<% include SiteNavDropdown %>
			<% else %>
				<li><a href="$Link">$MenuTitle</a></li>
			<% end_if %>
		<% end_loop %>
	</ul>
</li>