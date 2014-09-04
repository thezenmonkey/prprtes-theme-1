<header class="site-header">
	<div class="contain-to-grid">
		<nav class="top-bar" data-topbar>
			<ul class="title-area">
				<li class="name">
					<% if $SiteConfig.Branding == 0 %>
						<h1><a href="$BaseHref">$SiteConfig.Title</a></h1>
					<% else %>
						<h1 class="show-for-small"><a href="$BaseHref">$SiteConfig.Title</a></h1>
					<% end_if %>
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
	<div class="row branding-bar">
		<div class="small-12 medium-6 large-8 columns">
			<% if $SiteConfig.Branding %>
				<% with SiteConfig.Branding %>$SetHeight(100)<% end_with %>
			<% else %>
				<span class="branding">$SiteConfig.Title</span>
			<% end_if %>
		</div>
		<div class="small-12 medium-6 large-3 columns csb cmr">
			<span class="site-contact-holder">
				<span class="phone-icon"><img alt="Phone" src="$ThemeDir/images/icons/phone-white.svg"></span>
				<span class="site-contact">$SiteConfig.PhoneNumber</span>
			</span>
		</div>
	</div>
</header>