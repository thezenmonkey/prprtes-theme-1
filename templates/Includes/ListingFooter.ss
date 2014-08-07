<footer>
	<% if $ClassName == "Listing" && $Agent %>
		Agent Footer
	<% else_if $ClassName == "MLSListing" %>
		MLS Footer
	<% else %>
		Listing Footer
	<% end_if %>
	<% if $Level(2) %>
		$Breadcrumbs
	<% end_if %>
</footer>