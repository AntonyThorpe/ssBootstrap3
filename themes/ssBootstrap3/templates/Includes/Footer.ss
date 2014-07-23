<footer class="footer typography" role="contentinfo">
	<div class="container-fluid">
		<div>
			
			<div class="footer-wrapper">
				<% loop $Menu(1) %>
					<% include FooterColumn %>
				<% end_loop %>
				<span class="stretch"></span>
			</div>
				
		</div> <!-- finish menu information -->

		<div class="clearfix row">
			<div class="pull-left">
				<small>&copy; Name 
					<script type="text/javascript">
					now = new Date
					theYear=now.getYear()
					if (theYear < 1900)	
					theYear=theYear+1900
					document.write(theYear)
					</script>
				</small>
			</div>
		</div>
	</div>
</footer>
