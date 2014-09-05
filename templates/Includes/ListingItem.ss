<div class="row">
	<a class="small-12 medium-5 columns" href="$Link" title="$Title">
		<% include ListingFlag %>
		<% if $CoverImage %>
			$CoverImage.CroppedImage(430,287)
		<% else %>
			<img src="http://placehold.it/430x287&text=No+Image+Available">
		<% end_if %>
	</a>
	<div class="small-12 medium-7 columns listing-details">
		<% if $NeighbourHood %><p class="listing-top">$Neighbourhood.Title</p><% end_if %>
		<% if $NeighbourHood %><h2 class="listing-address"><% else %><h2 class="listing-top"><% end_if %>
			<a href="$Link"><% if $Status == "Sold" %>$Title<% else %>$Address<% end_if %></a>
		</h2>
		<div class="listing-summary">
			<% if $Summary %>
				<% if $ClassName == "MLSListing" %><p><% end_if %>$Summary<% if $ClassName == "MLSListing" %></p><% end_if %>
			<% else %>
				<p>$Content.Summary</p>
			<% end_if %>
		</div>
		<dl class="listing-item-details">
			<% if $TotalArea %>
				<dt><span class="area-icon">Total Area:</span></dt>
				<dd>$TotalArea ft&sup2;</dd>
			<% end_if %>
			<% if $NumberBed %>
				<dt><img class="icon" src="$ThemeDir/images/icons/bedrooms.svg" alt="bedrooms"></dt>
				<dd>$NumberBed</dd>
			<% end_if %>
			<% if $NumberBath %>
				<dt><img class="icon" src="$ThemeDir/images/icons/bathrooms.svg" alt="bathrooms"></dt>
				<dd>$NumberBath</dd>
			<% end_if %>
			<% if $Garage %>
				<dt><img class="icon" src="$ThemeDir/images/icons/brochure.svg" alt="brochure"></dt>
				<dd>$Garage</dd>
			<% end_if %>
		</dl>
	</div>
</div>