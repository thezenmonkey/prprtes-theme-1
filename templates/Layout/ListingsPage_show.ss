<% with $Item %>
<% include ListingHeader %>
<div class="row">
	<% if $Images.Count > 1 %>
		<section class="small-12 columns">
			<h2>Gallery</h2>
			<ul class="no-bullet">
				<% loop $Images %>
					<li><img src="http://placehold.it/200x200&text=Gallery+Image" /></li>
				<% end_loop %>
			</ul>
		<section>
	<% end_if %>
	<section class="small-12 columns">
		<h2>About $Address</h2>
		$Content
	</section>
	<% if $FeatureSheet || $Floorplans %>
		<% include ListingResources %>
	<% end_if %>
	<aside class="small-12 columns">
		<% include ListingFeatures %>
	</aside>
	<% include ListingFooter %>
</div>
<% end_with %>