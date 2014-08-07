<header>
	<div class="contain-to-grid">
		<nav class="top-bar" data-topbar>
			<ul class="title-area">
				<li class="name">
					<h1><a href="$BaseHref">$SiteConfig.Title</a></h1>
				</li>
				<!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
				<li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
			</ul>
			
			<section class="top-bar-section">
				<!-- Right Nav Section -->
				<ul class="right">
					<% if $MenuSet('Main Menu') %>
						<% loop $MenuSet('Main Menu') %>
							<% if $ClassName="ListingsPage" || $ClassName="BlogHolder" || not $Children %>
								<li class="<% if $LinkingMode = current %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
							<% else %>
								<% include SiteNavDropdown %>
							<% end_if %>
						<% end_loop %>
					<% else %>
						<% loop $Menu(1) %>
							<% if $ClassName == "ListingsPage" || $ClassName == "BlogHolder" %>
								<li class="<% if $LinkingMode = current %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
							<% else_if $Children %>
								<% include SiteNavDropdown %>
							<% else %>
								<li class="<% if $LinkingMode = current %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
							<% end_if %>
						<% end_loop %>
					<% end_if %>
				</ul>
			</section>
		</nav>
	</div>
	<div class="row">
		<div class="small-12 medium-6 columns">
			<span>Realtor Branding</span>
		</div>
		<div class="small-12 medium-6 columns">
			<span>Contact Info</span>
		</div>
	</div>
</header>