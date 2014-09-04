<div class="row">
	<a class="small-12 medium-5 columns" href="$Link" title="$Title">
		<% include ListingFlag %>
		<% if $CoverImage %>
			$CoverImage.CroppedImage(430,287)
		<% else %>
			<img src="http://placehold.it/430x287&text=No+Image+Available">
		<% end_if %>
	</a>
	<div class="small-12 medium-7 columns">
		<a href="$Link">$Address</a>
	</div>
</div>