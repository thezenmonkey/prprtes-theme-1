<div class="row">
	<div class="large-12 columns">
		<h1>$Title</h1>
	</div>
</div>

<div class="row">
	<div class="large-12 columns">
		<% if $ShowCities == 1 && $GetCities.Count > 1 %>
			<% loop $GetCities %>
				<% if $AllListings %>
				<section class="municiple">
					<h2>$Title</h2>
					<ul class="small-block-grid-1 large-block-grid-2">
						<% loop $AllListings %>
							<li>
								<% include ListingItem %>
							</li>
						<% end_loop %>
					</ul>
				</section>
				<% end_if %>
			<% end_loop %>
			<% if $TownListings %>
				<section class="municiple">
					<h2>Neighbouring Communities</h2>
					<ul class="small-block-grid-1 large-block-grid-2">
						<% loop $TownListings %>
							<li>
								<% include ListingItem %>
							</li>
						<% end_loop %>
					</ul>
				</section>
			<% end_if %>
		<% else %>
		<ul class="small-block-grid-1 large-block-grid-2">
			<% loop $AllListings %>
				<li>
					<% include ListingItem %>
				</li>
			<% end_loop %>
		</ul>
		<% end_if %>
		<div class="panel">
			<ul class="small-block-grid-1 large-block-grid-2">
				<% loop $MLSListings %>
					<li><% include ListingItem %></li>
				<% end_loop %>
			</ul>
		</div>
	</div>
</div>