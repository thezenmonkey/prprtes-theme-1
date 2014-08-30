<% with $Item  %>
<% include ListingHeader %>
<div class="row">
	<% if $Images.Count > 1 %>
		<% include Gallery %>
	<% end_if %>
	<section class="small-12 columns">
		<h2>About $Address</h2>
		$Content
	</section>
	<% if $FeatureSheet || $Floorplans %>
		<% include ListingResources %>
	<% end_if %>
	<aside class="small-12 columns">
		<% include ListingFeatures %>
	</aside>
	<% include ListingFooter ContactForm=$Top.ContactForm %>
</div>
<% end_with %>