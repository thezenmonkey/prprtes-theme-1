<div class="row">
	<div class="small-12 large-9 large-centered columns">
		<div class="row">
			<div class="small-12 medium-6 large-7 columns">
				<div class="row agent-info">
					<% with $Agent %>
						<div class="small-12 columns">
							<h4>$Name <small>$JobTitle</small></h4>
						</div>
						<div class="small-6 columns">
							$Headshot.SetWidth(300)
						</div>
						<div class="small-6 columns">
							<ul class="contact-list">
								<li class="phone"><% if $PhoneNumber %>$PhoneNumber<% else %>$SiteConfig.Phone<% end_if %></li>
								<li class="cell">$Cell</li>
								<li class="email"><a href="mailto:$Email">$Email</a></li>
							</ul>
							<% if $Bio %>
								<p>$Bio.Summary&hellip;</p>
								<a href="/about-us/#{$ID}" class="button small">Learn more</a>
							<% end_if %>
						</div>
					<% end_with %>
				</div>
			</div>
			<div class="small-12 medium-6 large-5 columns" id="ContactForm">
				<p>For more information or to schedule a viewing, fill out the form<% if $SiteConfig.Phone %> or call $SiteConfig.Phone<% end_if %>.</p>
				$ContactForm
			</div>
		</div>
	</div>
</div>