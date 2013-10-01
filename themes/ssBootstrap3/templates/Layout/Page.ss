<div class="row">
	<% include SideBar %>
	<% if $Menu(2) %><div class="col-sm-8 col-md-8"><% end_if %>
	    <article>
	        <div class="page-header">
	            <h1>$Title</h1>
	        </div>
	        <div class="content">$Content</div>
	    </article>
	    $Form
	    $PageComments
	<% if $Menu(2) %></div><div class="col-sm-1 col-md-1"></div><% end_if %>
</div>