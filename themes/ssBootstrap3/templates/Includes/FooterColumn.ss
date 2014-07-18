<div class="footer-column $MenuTitle"> 
	<a class="$LinkingMode" href="$Link" title="Go to the $Title page">
		<h5>$MenuTitle</h5>
	</a>

	<% if $Children %>
		<ul class="list-unstyled">
		    <% loop $Children %>
				<li class="$LinkingMode">
				    <a href="$Link" class="$LinkingMode" title="$Title">
				        $MenuTitle
				    </a>
				</li>
			<% end_loop %>
		</ul>
	<% end_if %>

</div>

	