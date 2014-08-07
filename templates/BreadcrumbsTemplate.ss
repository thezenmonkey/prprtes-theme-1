<% if $Pages %>
	<ul class="breadcrumbs">
		<% loop $Pages %>
			<li class="$LinkingMode"><a href="$Link" class="breadcrumb-$Pos">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
<% end_if %>
