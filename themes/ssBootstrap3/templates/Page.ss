 <!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="$ContentLocale"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="$ContentLocale"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="$ContentLocale"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="$ContentLocale"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title<% if SiteConfig.Tagline %> - $SiteConfig.Tagline<% end_if %></title>
        $MetaTags(false)
        <% base_tag %>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="$ThemeDir/favicon.ico" />
        
        <!-- iOS/Android bookmarking icons-->
        <meta name="mobile-web-app-capable" content="yes">
        <link rel="icon" sizes="196x196" href="$ThemeDir/icon.gif">
        <link rel="apple-touch-icon" sizes="152x152" href="$ThemeDir/apple-touch-icon.gif">

    </head>

    <body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" id="$URLSegment">

        <% include Navigation %>
       
        <main class="main" role="main">
            <% include Header %>
            
            <div class="typography container <% if $Menu(2) || ClassName = BlogHolder || ClassName = BlogEntry %><% end_if %>" >
                <% include BreadCrumbs %>
                $Layout
            </div>
        </div>
        <% include Footer %>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>

    </body>
</html>
