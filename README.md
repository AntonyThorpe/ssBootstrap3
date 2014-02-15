# ssBootstrap3

A [Bootstrap](http://getbootstrap.com/) / [HTML5 Boilerplate](http://html5boilerplate.com/) base theme for [SilverStripe 3](http://www.silverstripe.org/).  Uses [Less](http://lesscss.org) for CSS and [Bower](http://bower.io) to upgrade bs and javascript libraries.

Contains some basic styling/support for the [Blog](https://packagist.org/packages/silverstripe/blog) module.

Originated from [ss-bootstrap] theme (https://github.com/gpmd/ss-bootstrap) - sterling work, thank you.


## Aims
* to be able to upgrade Bootstrap and other javascript libraries quickly using Bower;
* to use the Less technology for the generation of CSS;
* to minimise bloat by commenting out Bootstrap's javascript and Less files not needed; and, 
* to wear flash pants


## Instructions

1. Download and copy the `ssBootstrap3` folder, under themes, into your `themes` folder
2. Set `theme: 'ssBootstrap3'` in your `config.yml` file
3. Open `mysite/Page.php` and add
```php
	$theme = SSViewer::current_theme();
	Requirements::combine_files(
		'combined.css',
		array(
			THEMES_DIR . '/' . $theme . '/css/main.css',
			THEMES_DIR . '/' . $theme . '/css/layout.css',
			THEMES_DIR . '/' . $theme . '/css/editor.css', // includes Typography
			THEMES_DIR . '/' . $theme . '/css/form.css',
		)
	);
        
	Requirements::combine_files(
		'combine.js',
		 array(
		 	'mysite/thirdparty/bower_components/jquery/jquery.min.js',
		 	'mysite/thirdparty/bower_components/jquery/jquery-migrate.js',

		 	// comment out the javascript files not needed
			'mysite/thirdparty/bower_components/bootstrap/js/affix.js',
			'mysite/thirdparty/bower_components/bootstrap/js/alert.js',
			'mysite/thirdparty/bower_components/bootstrap/js/botton.js',
			'mysite/thirdparty/bower_components/bootstrap/js/carousel.js',
			'mysite/thirdparty/bower_components/bootstrap/js/collapse.js',
			'mysite/thirdparty/bower_components/bootstrap/js/dropdown.js',
			'mysite/thirdparty/bower_components/bootstrap/js/modal.js',
			'mysite/thirdparty/bower_components/bootstrap/js/tooltip.js',
			'mysite/thirdparty/bower_components/bootstrap/js/popover.js',
			'mysite/thirdparty/bower_components/bootstrap/js/scrollspy.js',
			'mysite/thirdparty/bower_components/bootstrap/js/tab.js',
			'mysite/thirdparty/bower_components/bootstrap/js/transition.js',
		)
	);
```
4. Copy the `thirdparty` folder to `mysite`.  This contains Bootstrap's javascript and Less.
5. Run `/dev/build`.
6. Optional
 * Enable search in config `FulltextSearchable::enable();`
 * For older browsers include html5shiv.js to support HTML5 elements and/or respond.min.js for media queries (folder: `mysite/thirdparty/bower_components/bootstrap/assets/js/`).  


## Requirements
Use software to convert Less to CSS e.g. LiveReload or https://github.com/axllent/silverstripe-less or you could use javascript (see lesscss.org. Less.js is in the folder `mysite/thirdparty/bower_components/bootstrap/assets/js/`).  

Bootstrap's Less files are located under the theme's `less` folder.  Target the `css` folder in your Less compiler.


## Structure of the Less files
Bootstrap's base variables impart at the start of each Less file.  These are overridden by `customVariables.less` before they go through Bootstrap's `mixins.less`.


## Updating
* You can use Bower to upgrade Bootstrap and jQuery plus any other javascript libraries that you need to include.  See bower.io or this blog Bower, an asset package manager (http://www.synbioz.com/blog/bower) to get started.
* Open `bower.json` located in `mysite/thirdparty` and update the version numbers.  You can find the latest library version numbers by opening a terminal `bower info bootstrap`.  If you need to find additional libraries: `bower search libraryName`.

		:::javascript
		{
			"name": "yourProjectName",
			"version": "0.0.0",
			"dependencies": {
				"bootstrap": ">= 3.0.0" 
			}
		}

* Then in the terminal cd to `mysite/thirdparty/` and `bower install`.


## ToDo
* Double check the Less files as these were quickly upgraded to Bootstrap 3.0 
* There's probably a better way to reference a file location in the Less files than `@import "../../../mysite/thirdparty/bower_components/bootstrap/less/variables.less";`
* Having trouble with the Blog Module
* Link to a demo site


## Browser Support
Does not support ie7.


## Changelog
* Version 0.1 - First release
* Version 0.2 - upgrade to 3.1

## License
Provided 'as is' - have fun! [Bootstrap](https://github.com/twbs/bootstrap/blob/master/LICENSE) and [Boilerplate](https://github.com/h5bp/html5-boilerplate/blob/master/LICENSE.md) have their own licenses.
