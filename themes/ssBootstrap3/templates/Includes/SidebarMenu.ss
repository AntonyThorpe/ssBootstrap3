<%--Include SidebarMenu recursively --%>

<% if $Children %>
	<% loop $Children %>
		<li class="$LinkingMode">
		    <a href="$Link" class="$LinkingMode" title="$Title">
		        $MenuTitle
		    </a>
		    <% if $Children %>
			    <ul class="nav nav-list">
			        <% include SidebarMenu %>
			    </ul>
		    <% end_if %>
		</li>
	<% end_loop %>

<% end_if %> 
