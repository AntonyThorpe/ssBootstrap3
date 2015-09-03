# ssBootstrap3

A [Bootstrap](http://getbootstrap.com/) / [HTML5 Boilerplate](http://html5boilerplate.com/) base theme for [SilverStripe 3](http://www.silverstripe.org/).  Uses [Less](http://lesscss.org) for CSS and [Bower](http://bower.io) to upgrade libraries.

Originated from [ss-bootstrap] theme (https://github.com/gpmd/ss-bootstrap) - sterling work, thank you.


## Aims
* to be able to upgrade Bootstrap and other javascript libraries quickly using Bower;
* to use the Less technology for the generation of CSS;
* to minimise bloat by commenting out Bootstrap's javascript and Less files; and, 
* to wear flash pants


## In the Wild
http://stjameskidsway.org.nz/


## Instructions
1. Download and copy the `ssBootstrap3` folder, under themes, into your `themes` folder
2. Set `theme: 'ssBootstrap3'` in your `config.yml` file
3. Open `mysite/Page.php` and add
```php
	$theme = SSViewer::current_theme();
	Requirements::combine_files(
		'combined.css',
		array(
			THEMES_DIR . '/' . $theme . '/css/main.css'

		)
	);
        
	Requirements::combine_files(
		'combine.js',
		 array(
		 	'mysite/thirdparty/bower_components/jquery/dist/jquery.min.js',

		 	// comment out the javascript files not needed
			'mysite/thirdparty/bower_components/bootstrap/js/affix.js',
			'mysite/thirdparty/bower_components/bootstrap/js/alert.js',
			'mysite/thirdparty/bower_components/bootstrap/js/button.js',
			'mysite/thirdparty/bower_components/bootstrap/js/carousel.js',
			'mysite/thirdparty/bower_components/bootstrap/js/transition.js',
			'mysite/thirdparty/bower_components/bootstrap/js/collapse.js', // depends on transition.js
			'mysite/thirdparty/bower_components/bootstrap/js/dropdown.js',
			'mysite/thirdparty/bower_components/bootstrap/js/modal.js',
			'mysite/thirdparty/bower_components/bootstrap/js/tooltip.js',
			'mysite/thirdparty/bower_components/bootstrap/js/popover.js',  // depends on tooltip.js
			'mysite/thirdparty/bower_components/bootstrap/js/scrollspy.js',
			'mysite/thirdparty/bower_components/bootstrap/js/tab.js',
		)
	);
```
4. Copy the `thirdparty` folder to `mysite`.  This contains Bootstrap's javascript and Less.
5. Run `/dev/build`.
6. Optional
 * Favicon/icon links are in templates/Page.ss file.  Upload your icon through http://realfavicongenerator.net/ and copy the generated icons to your project root.  Note that the tile colour for Windows 8 will need to be changed `<meta name="msapplication-TileColor" content="#fff">` in Page.ss.
 * Enable search in config `FulltextSearchable::enable();` (see http://doc.silverstripe.org/framework/en/tutorials/4-site-search)
 * For older browsers include html5shiv.js and respond.js to support HTML5 elements and page size media queries (see folder: `mysite/thirdparty/bower_components/`)


## Requirements
Use software to convert Less to CSS e.g. LiveReload (latest version) or https://github.com/axllent/silverstripe-less or you could use javascript (see lesscss.org).  

Bootstrap's Less files are located under the theme's `less` folder.  Target the `css` folder in your Less compiler.


## Structure of the Less files
Bootstrap's base variables are imported at the start of each Less file.  These are overridden by `customVariables.less` before they go through Bootstrap's `mixins.less`.


## Basic styling and Silverstripe modules
 * `main.less` contains some basic styling for navigation, search, and the Blog module.
 * `form.less` contains some basic styling for forms.    
 * `layout.less` includes sticky footer and padding/margin settings between the main body classes.  Adjust the variables @stickyFooterHeight and @gapBetweenNavAndMain to suit.  

 A pattern that can be used is to copy Bootstrap's style, in a new class, and customise.  Examples below.
 ```css
 	.container-fluid-custom{
 		.container-fluid;  // copy bootstraps class

 		// customise
 		padding-left: 30px;
 		padding-right: 30px;
 	}

 	.table-custom {
 		.table;
 		.table-striped;
 		.table-hover;
 		.table-bordered;
 		.table-condensed;
 		.table-responsive;

 		thead > tr > th {
 			vertical-align: top;
 		}
 	}
 ```


## Silverstripe modules
 * UserForms Module: for more control over presentation `UserDefinedForms.ss` page type is included under the `templates/layout` folder (remove $UserDefinedForm from within the CMS).  To further customise extend UserDefinedForm (which extends the Page).  e.g. Save UserDefinedFormExtension.php:
```php
	class UserDefinedFormExtension extends DataExtension {

	// add an upload field for a picture
	private static $has_one = array(
        'Image' => 'Image'
    );

	public function updateCMSFields(FieldList $fields) {
        $fields->push(new UploadField('Image', 'Scenic Image'));
    }
}
```
And, in `config.yml`add:
```yml
	UserDefinedForm:
  	  extensions:
        - UserDefinedFormExtension
```


 ## Using Less with Media Queries (main.less & Navigation.ss as an example)
 One way of using Less is to start with bootstrap's class and then you adjust the base styles, which are mobile first.  Then add media queries for wider screens.
```css
	.navbar-custom {
		.navbar;

		margin-bottom: 0;

		// Navigation height
		@media (min-width: @screen-sm-min) {  /* Small devices (tablets, 768px and up) */
			height: 80px;
		}
	}
```


```html
	<nav class="navbar-custom navbar-inverse" role="navigation">
		...
```


## Updating bootstrap
* You can use Bower to upgrade Bootstrap and jQuery plus any other javascript libraries that you need to include.  See bower.io or this blog Bower, an asset package manager (http://www.synbioz.com/blog/bower) to get started.
* Create a `bower.json` file in `mysite/thirdparty`.  Set the version numbers.  You can find the latest library version numbers by opening a terminal `bower info bootstrap`.  If you need to find additional libraries: `bower search libraryname`.

		:::javascript
		{
			"name": "yourProjectName",
			"version": "0.0.0",
			"dependencies": {
				"bootstrap": "3.3.5",
				"html5shiv": "3.7.2",
				"respond": "1.4.2"
			}
		}

* Then in the terminal cd to `mysite/thirdparty/` and `bower install`.  


## ToDo
* There's probably a better way to reference a file location in the Less files than `@import "../../../mysite/thirdparty/bower_components/bootstrap/less/variables.less";`
* Blog Module needs testing


## Browser Support
Does not support ie7 and below.


## Changelog
* Version 0.1 - First release
* Version 0.2 - upgraded to SS 3.1
* Version 0.3 - upgraded Bootstrap to 3.1.1
* Version 0.4 - improved styling for Userforms and sidebar menu
* Version 0.5 - upgraded Bootstrap to 3.2.0, added a footer, and favicon/icons.
* Version 0.6 - upgraded Bootstrap to 3.3.2, removed jquery migrate
* Version 0.6.1 - upgraded Bootstrap to 3.3.5


## License
Provided 'as is' - have fun! [Bootstrap](https://github.com/twbs/bootstrap/blob/master/LICENSE) and [Boilerplate](https://github.com/h5bp/html5-boilerplate/blob/master/LICENSE.md) have their own licenses.
