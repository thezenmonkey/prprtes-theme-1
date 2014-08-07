<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8" />
	<% base_tag %>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<link rel="stylesheet" href="{$ThemeDir}/stylesheets/app.css" />
	<script src="{$ThemeDir}/bower_components/modernizr/modernizr.js"></script>
</head>
<body>
	<% include SiteHeader %>
	<main>
		$Layout
		$Form
	</main>
	<% include SiteFooter %>
	<script src="{$ThemeDir}/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="{$ThemeDir}/bower_components/foundation/js/foundation.min.js"></script>
	<script src="{$ThemeDir}/js/app.js"></script>
</body>
</html>
