<div class="row">
	<div class="large-12 columns">
		<h1>$Title</h1>
	</div>
</div>

<div class="row">
	<div class="large-12 columns">
		<div class="panel">
			<ul>
				<% loop $AllListings %>
					<li><a href="$Link">$Title</a></li>
				<% end_loop %>
			</ul>
		</div>
		<div class="panel">
			<ul>
				<% loop $MLSListings %>
					<li><a href="$Link">$Title</a></li>
				<% end_loop %>
			</ul>
		</div>
	</div>
</div>