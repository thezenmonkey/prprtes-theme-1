<div class="panel">
	<div class="row">
		<div class="small-12 <% if $Extras %>large-8<% else %>large-12<% end_if %> columns">
			<dl class="prop-features">
				<dt class="list-header"><h3>Property Features</h3></dt>
				<% if $LotLength && $LotWidth %>
					<dd class="prop-item">
						<dl>
							<dt>Lot:</dt>
							<dd>
								{$LotWidth}' &times; {$LotLength}'<% if $Irregular %> Irregular<% end_if %><% if $LotAcreage %> approx. $LotAcreage ft&sup2;<% end_if %>
							</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Topography %>
					<dd class="prop-item">
						<dl>
							<dt>Topography:</dt>
							<dd>$Topography</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Garage %>
					<dd class="prop-item">
						<dl>
							<dt>Garage:</dt>
							<dd>$Garage</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Driveway %>
					<dd  class="prop-item">
						<dl>
							<dt>Driveway:</dt>
							<dd>$Driveway</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Basement %>
					<dd class="prop-item">
						<dl>
							<dt>Basement:</dt>
							<dd>$Basement</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $AC %>
					<dd class="prop-item">
						<dl>
							<dt>AC:</dt>
							<dd>Yes</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Heat %>
					<dd class="prop-item">
						<dl>
							<dt>Heat:</dt>
							<dd>$Heat</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Construction %>
					<dd class="prop-item">
						<dl>
							<dt>Construction:</dt>
							<dd>$Construction</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Age %>
					<dd class="prop-item">
						<dl>
							<dt>Age:</dt>
							<dd>$Age</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Water %>
					<dd class="prop-item">
						<dl>
							<dt>Water:</dt>
							<dd>$Water</dd>
						</dl>
					</dd>
				<% end_if %>
				<% if $Sewer %>
					<dd class="prop-item">
						<dl>
							<dt>Sewer:</dt>
							<dd>Yes</dd>
						</dl>
					</dd>
				<% end_if %>
				
			</dl>
		</div>
		<% if $Extras %>
			<div class="small-12 large-4 columns">
				<h3>Extras</h3>
				<p>$Extras</p>
			</div>
		<% end_if %>
	</div>
</div>