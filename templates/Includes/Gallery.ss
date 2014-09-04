<div class="small-12 columns">
	<div class="gallery-holder panel">
		<ul>
			<% loop $OrderedImages %>
				<li><a href="$Filename" class="th">$CroppedImage(150,150)</a></li>
			<% end_loop %>
		</ul>
	</div>
<div>