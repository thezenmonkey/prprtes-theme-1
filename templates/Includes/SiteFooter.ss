<footer class="site-footer">
	<div class="row">
		<% with $SiteConfig %>
			<div class="small-12 medium-3 large-2 columns">
				<h2>Brokerage Logo</h2>
			</div>
			<div class="small-12 medium-9 large-10 columns">
				<div class="row">
					<div class="small-12 medium-6 large-4 columns">
						<ul class="vcard">
							<li class="fn">$BusinessName</li>
							<li class="street-address">$Address</li>
							<li class="locality">$City</li>
							<li><span class="state">$Province</span>, <span class="zip">$PostalCode</span></li>
							<li class="email"><a href="$MainEmail">$MainEmail</a></li>
							<li class="phone">$Phone</li>
						</ul>
					</div>
					<div class="small-12 medium-6 large-4 columns">
						NewsLetter Form
					</div>
					<div class="small-12 large-4 columns">
						<h2>Social</h2>
						<ul class="inline-list">
							<% if $Twitter %><li><a href="http://twitter.com/$Twitter">Twitter</a></li><% end_if %>
							<% if $FacebookURL %><li><a href="$FacebookURL">Facebook</a></li><% end_if %>
							<% if $LinkedInURL %><li><a href="$LinkedInURL">LinkedIn</a></li><% end_if %>
							<% if $GooglePlusURL %><li><a href="$GooglePlusURL">GooglePlus</a></li><% end_if %>
							<% if $PinterestURL %><li><a href="$PinterestURL">Pinterest</a></li><% end_if %>
						</ul>
					</div>
				
				</div>
			</div>
		<% end_with %>
	</div>
	<div class="footer-menu-bar">
		<div class="row">
			<div class="small-12 columns text-center">
				<ul class="inline-list centered-list">
					<% if $MenuSet('Footer Menu') %>
						<% loop $MenuSet('Footer Menu') %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					<% else %>
						<% loop $Menu(1) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					<% end_if %>
					<% if $CurrentMember %>
						<li><a href="admin/"><strong>Admin Panel</strong></a></li>
						<li>
							<% if $ClassName == "Listing" %>
								<a href="admin/listings/Listing/EditForm/field/Listing/item/{$ID}/edit" title="edit this page">Edit this Listing</a>
							<% else %>
								<a href="admin/pages/edit/show/{$ID}" title="edit this page">Edit this Page</a>
							<% end_if %>
						</li>
						<li><a href="Security/logout"><strong>logout</strong></a></li>
					<% else %>
						<li><a href="Security/login?BackURL=%2Fadmin%2Fpages">Login</a></li>
					<% end_if %>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-colophon">
		<div class="row">
			<div class="small-12 columns">
				<p class="text-center colophon">Copyright $Now.Year $SiteConfig.BusinessName Code and Design by: <a class="dplusa" href="http://designplusawesome.com">design <span>+</span> awesome</a>.</p>
			</div>
		</div>
	</div>
</footer>