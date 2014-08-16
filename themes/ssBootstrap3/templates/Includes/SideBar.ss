<%--Include SidebarMenu recursively --%>
	<ul class="nav nav-pills-stacked-custom">
		<% loop $Children %>
			<li class="$LinkingMode">
			    <a href="$Link" class="$LinkingMode" title="$Title">
			        $MenuTitle
			    </a>
			    <% if $Children %>
				    <ul>
				        <% include SidebarMenu %>
				    </ul>
			    <% end_if %>
			</li>
		<% end_loop %>
	</ul>
