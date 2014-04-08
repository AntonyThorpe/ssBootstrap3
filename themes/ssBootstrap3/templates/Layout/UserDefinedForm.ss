<div class="row">
	<% if $Menu(2) %>
		<div class="col-sm-3 col-md-3 sidebar">
			<% include SideBar %>
		</div>
	<% end_if %>
	<% if $Menu(2) %>
		<div class="col-sm-8 col-md-8">
	<% end_if %>

	<article>
		<div class="page-header">
			<h1>$Title</h1>
		</div>
		<div class="content">
			$Content
		</div>
		<div class="row">
			<div class="col-sm-5 col-md-5">
				$Form
			</div>
			<div class="col-sm-7 col-md-7">
			</div>
		</div>
	</article>

	<% if $Menu(2) %>
		</div>
		<div class="col-sm-1 col-md-1"></div>
	<% end_if %>
</div>