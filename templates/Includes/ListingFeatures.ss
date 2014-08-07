<h2>Property Features</h2>
<dl>
	<% if $LotLength && $LotWidth %>
		<dt>Lot:</dt>
		<dd>
			{$LotWidth}' &times; {$LotLength}'<% if $Irregular %> Irregular<% end_if %><% if $LotAcreage %> approx. $LotAcreage ft&sup2;<% end_if %>
		</dd>
	<% end_if %>
	<% if $Garage %>
		<dt>Garage:</dt>
		<dd>$Garage</dd>
	<% end_if %>
	<% if $Driveway %>
		<dt>Driveway:</dt>
		<dd>$Driveway</dd>
	<% end_if %>
	<% if $Basement %>
		<dt>Basement:</dt>
		<dd>$Basement</dd>
	<% end_if %>
	<% if $Fireplaces %>
		<dt>Fireplaces:</dt>
		<dd>$Fireplaces</dd>
	<% end_if %>
</dl>
<% if $Extras %>
	<h3>Extras</h3>
	<p>$Extras</p>
<% end_if %>