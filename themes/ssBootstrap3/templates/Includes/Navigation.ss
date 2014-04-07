<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="navbar-header">
        <!-- Brand and toggle get grouped for better mobile display -->
        <a class="navbar-brand" href="$BaseHref" rel="home">$SiteConfig.Title</a>
        <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="glyphicon glyphicon-th-list"></span>
        </a>
    </div>
    <div class="container">
        <div class="navbar-collapse collapse">
            <ul class="nav pull-left navbar-nav">
                <% loop $Menu(1) %>
                    <li class="$LinkingMode">
                        <a class="navbar-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                    </li>
                <% end_loop %>
            </ul>
            <% if $SearchForm %>
                $SearchForm
            <% end_if %>
        </div>
    </div>
</nav>