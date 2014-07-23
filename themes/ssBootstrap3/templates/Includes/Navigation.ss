<nav class="navbar-custom navbar-inverse" role="navigation">
    <div class="container-fluid">

        <div class="navbar-header">
            
            <!-- Toggle -->
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse-custom">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand" href="$BaseHref" rel="home">$SiteConfig.Title</a>

        </div><!-- /.navbar-header -->
        <div class="navbar-collapse-custom collapse">
            <ul class="nav navbar-nav-custom">
                <% loop $Menu(1) %>
                    <li class="$LinkingMode">
                        <a class="navbar-link" href="$Link" title="$Title.XML">$MenuTitle</a>
                    </li>
                <% end_loop %>
                <% if $SearchForm %>
                    <li>
                        $SearchForm
                    </li>
                <% end_if %>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div>
</nav>
