<% with $Item  %>
<% include ListingHeader %>
<div class="row collapse">
	<% if $Images.Count > 1 %>
		<% include Gallery %>
	<% end_if %>
	<section class="small-12 large-5 large-push-2 columns">
		<h2>About $Address</h2>
		$Content
	</section>
	<!-- <div class="small-12 medium-6 large-3 large-pull-6 columns">
		<% if $KeyFeatures %>
			<h3>Key Features</h3>
			$KeyFeatures
		<% end_if %>
		<% if $Status = "Available" %>
			<% if $FeatureSheet || $Floorplans %>
				<% include ListingResources %>
			<% end_if %>
		<% end_if %>
	</div> -->
	<div class="small-12 medium-6 large-3 large-push-2 columns">
		<% if $SaleLease == "Sale" %>
			<% include MortgageCalculator %>
		<% end_if %>
	</div>
	<div class="small-12 columns">
		<div class="row">
			<aside class="small-12 large-9 large-centered columns">
				<% include ListingFeatures %>
			</aside>
		</div>
	</div>
</div>
<div class="row">
	<% include ListingFooter ContactForm=$Top.ContactForm %>
</div>
<% end_with %>