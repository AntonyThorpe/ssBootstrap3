<div class="footer-column $MenuTitle"> 
	<a class="$LinkingMode" href="$Link" title="Go to the $Title page">
		<h5>$MenuTitle</h5>
	</a>

	<!-- start list -->
	<% if $Children || $MenuTitle == "Contact" %>
		<ul class="list-unstyled">
	<% end_if %>

		<% if $Children %>
			
			    <% loop $Children %>
					<li class="$LinkingMode">
					    <a href="$Link" class="$LinkingMode" title="$Title">
					        $MenuTitle
					    </a>
					</li>
				<% end_loop %>			
			
		<% end_if %>

		<!-- add social media icons under contact link -->
		<% if $MenuTitle == "Contact" %>
			<li>
				<div>
					<a href="" >
						<img src="" />
					</a>
					<a href="">
						<img src="" />
					</a> 
				</div>
			</li>
		<% end_if %>

	<!-- close list -->
	<% if $Children || $MenuTitle == "Contact" %>
		</ul>
	<% end_if %>

</div>