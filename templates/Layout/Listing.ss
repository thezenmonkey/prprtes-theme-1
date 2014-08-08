<% include ListingHeader %>
<div class="row">
	<% if $Images.Count > 1 %>
		<section class="small-12  columns">
			<h2>Gallery</h2>
			<div>
				<ul class="inline-list">
					<% loop $OrderedImages %>
						<li><a href="#" class="th"><img src="http://placehold.it/200x200&text=Gallery+Image" /></a></li>
					<% end_loop %>
				</ul>
			</div>
		<section>
	<% end_if %>
	<section class="small-12 columns">
		<h2>About $Address</h2>
		$Content
	</section>
	<div class="small-12 columns">
		<% if $KeyFeatures %>
			<h3>Key Features</h3>
			$KeyFeatures
		<% end_if %>
		<% if $FeatureSheet || $Floorplans %>
			<% include ListingResources %>
		<% end_if %>
	</div>
	<div class="small-12 columns">
		<% if $SaleOrRent == "Sale" %>
			Mortgage Calc
		<% end_if %>
	</div>
	<aside class="small-12 columns">
		<% include ListingFeatures %>
	</aside>
	<% include ListingFooter %>
</div>