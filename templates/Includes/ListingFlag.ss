<% if $Status == "Available" || $ClassName = "MLSListing" %>
	<% if $UpcomingOpenHouse %>
		<span class="flag open-house"><span class="flag-rider">Open House </span>$FormattedPrice</span>
	<% else %>
		<span class="flag">$FormattedPrice<% if SaleOrRent == "Lease"%> /month<% end_if %></span>
	<% end_if %>
<% else_if $Status == "Sold" %>
<span class="flag">Sold</span>
<% end_if %>