<footer class="small-12 columns">
	<% if $ClassName == "Listing" && $Agent %>
		<% include AgentListingFooter %>
	<% else_if $ClassName == "MLSListing" %>
		<% include MLSListingFooter ContactForm=$Top.ContactForm %>
	<% else %>
		<% include DefaultListingFooter %>
	<% end_if %>
	<% if $Level(2) %>
		$Breadcrumbs
	<% end_if %>
</footer>