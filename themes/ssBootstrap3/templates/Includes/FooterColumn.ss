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
					<a href="https://twitter.com/ecoboil" >
						<img src="$ThemeDir/zurb_webicons/images/fc-webicon-twitter-s.png"/>
					</a>
					<a href="http://www.facebook.com/pages/Ecoboil/547290941959246">
						<img src="$ThemeDir/zurb_webicons/images/fc-webicon-facebook-s.png" />
					</a> 
				</div>
			</li>
		<% end_if %>

	<!-- close list -->
	<% if $Children || $MenuTitle == "Contact" %>
		</ul>
	<% end_if %>

</div>