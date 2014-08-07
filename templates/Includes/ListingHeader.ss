<header class="row">
	<div class="small-12 columns">
		<h1>$Address <span>$Town</span> <span>$SiteConfig.Province</span> <span>$PostalCode</span> <span>MLS: $MLS</span></h1>
		<h2>
			$FormattedPrice <% if $SaleOrRent == "Lease" %><span>/month</span><% end_if %>
			<% if $SaleOrRent == "Sale" && $HideMonthly == 0 && $MonthlyPrice %>
				<small>Own For: $MonthlyPrice/month</small>
			<% end_if %>
			<% if $SaleOrRent == "Sale" && $HideMonthly == 0 && $MonthlyPrice && $CondoFee %> + <% end_if %>
			<% if $CondoFee %><small>${$CondoFee}/month condo fee</small><% end_if %>
			
		</h2>
		<img src="http://placehold.it/1400x787&text=Image+or+Video">
		<div>
			<ul class="no-bullet">
				<% if $NumberBed %><li>Bedrooms: $NumberBed</li><% end_if %>
				<% if $NumberBath %><li>Bathrooms: $NumberBath</li><% end_if %>
				<% if $NumberRooms %><li>Total Rooms: $NumberRooms</li><% end_if %>
				<% if $TotalArea %><li>Total Area: $TotalArea</li><% end_if %>
			</ul>		
		</div>
		<div class="panel">
			<a class="button expand" href="#">Schedule a Viewing</a>
		</div>
		<div>
			<dl class="sub-nav">
				<dt>Tools:</dt>
				<% if $Lat && $Lon %>
					<dd><a href="#">View Map</a></dd>
					<% if $SVHeading %><dd><a href="#">View Street View</a></dd><% end_if %>
				<% end_if %>
				<% if $Neighbourhood %><dd><a href="#">About $Neighbourhood.Title</a></dd><% end_if %>
				<% if $SaleOrRent == "Sale" %><dd><a href="#">Mortgage Calculator</a></dd><% end_if %>
			</dl>
		</div>
	</div>
</header>