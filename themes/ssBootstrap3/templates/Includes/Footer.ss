<footer class="footer typography" role="contentinfo">
	<div class="container">
		<div class="clearfix row">
			<div class="row">
				<div class="col-sm-10 col-md-10">
					<div class="clearfix footer-wrapper">
						<% loop $Menu(1) %>

							<% if $MenuTitle != "Contact" %>

								<div class="footer-box"> 
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

							<% end_if %>

						<% end_loop %>
						 <span class="stretch"></span>
					</div>
				</div>
				<div class="col-sm-2 col-md-2">
					<% loop $Menu(1) %>
						<div class="row">
							<% if $MenuTitle == "Contact" %>

								<div class="col-sm-12 col-md-12"> 
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

							<% end_if %>
						</div>
					<% end_loop %>
					

				</div>
			</div>
		</div> <!-- finish first footer row -->
	

		<hr>
	
		<div class="clearfix row">
			<div class="col-sm-12 col-md-12">
				<div class="pull-left">
					&copy; Your business name 
						<script type="text/javascript">
						now = new Date
						theYear=now.getYear()
						if (theYear < 1900)	
						theYear=theYear+1900
						document.write(theYear)
						</script>
				</div> 
			</div> 
		</div>
	</div>
</footer>
