<header class="row listing-header">
	<div class="small-12 large-3 columns">
		<div class="clearfix">
			<h1 class="address">$Address <span class="block"><span class="town address-part">$Town</span> <span class="province address-part">$SiteConfig.Province</span> <span class="postal-code address-part">$PostalCode</span> <span class="mls-number address-part">MLS: $MLS</span></span></h1>
			<% if $Status == "Available" %>
				<h2>
					$FormattedPrice <% if $SaleOrRent == "Lease" %><span>/month</span><% end_if %>
					<% if $SaleOrRent == "Sale" && $HideMonthly == 0 && $MonthlyPrice %>
						<span class="block monthly">Own For: $MonthlyPrice/month</span>
					<% end_if %>
					<% if $SaleOrRent == "Sale" && $HideMonthly == 0 && $MonthlyPrice && $CondoFee %> + <% end_if %>
					<% if $CondoFee %><span class="block monthly">${$CondoFee}/month condo fee</span><% end_if %>
				</h2>
			<% end_if %>
		</div>
		<div>
			<ul class="no-bullet basic-details">
				<% if $NumberBed %><li class="bed-bath"><span class="bed-icon"><img src="$ThemeDir/images/icons/bedrooms.svg" alt="bedrooms"></span> $NumberBed</li><% end_if %>
				<% if $NumberBath %><li class="bed-bath"><span class="bath-icon"><img src="$ThemeDir/images/icons/bathrooms.svg" alt="bathrooms"></span> $NumberBath</li><% end_if %>
				<% if $NumberRooms %><li><span class="room-icon">Total Rooms:</span> $NumberRooms</li><% end_if %>
				<% if $TotalArea %><li><span class="area-icon">Total Area:</span> $TotalArea ft&sup2;</li><% end_if %>
			</ul>
			<% if $ClassName = "MLSListing" %>
				<div class="small-12 columns">
					<p class="text-center"><small>Listing provided by $ShowBroker</small></p>
				</div>
			<% end_if %>
			<a class="button expand" href="#ContactForm">Schedule a Viewing</a>
		</div>
	</div>
	<div class="small-12 medium-12 large-9 columns cover-image">
		<% if $CoverImage %>
			$CoverImage.SetWidth(1020)
		<% else %>
			<img src="http://placehold.it/1400x787&text=Image+or+Video">
		<% end_if %>
	</div>
	<div class="small-12 columns">
		<div class="panel bottom-0 toolbox">
			<dl class="sub-nav">
				<dt>Tools:</dt>
				<% if $Lat && $Lon %>
					<dd><a href="#">View Map</a></dd>
					<% if $SVHeading %><dd><a href="#">View Street View</a></dd><% end_if %>
				<% end_if %>
				<% if $Neighbourhood && $Neighbourhood.Content %><dd><a href="#">About $Neighbourhood.Title</a></dd><% end_if %>
				<% if $SaleOrRent == "Sale" %><dd><a href="#">Mortgage Calculator</a></dd><% end_if %>
			</dl>
		</div>
	</div>
</header>