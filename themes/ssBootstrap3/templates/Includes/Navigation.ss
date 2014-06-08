<div class="nav-container">
    <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
        <div class="navbar-header">
            
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand" href="$BaseHref" rel="home">$SiteConfig.Title</a>

            <!-- Toggle -->
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

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
</div>