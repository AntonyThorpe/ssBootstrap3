<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// support for HTML5 elements in older browsers (http://en.wikipedia.org/wiki/HTML5_Shiv).  Needs to be installed in the head.
		Requirements::insertHeadTags('
			<!--[if lt IE 9]>
				<script type="text/javascript" src="mysite/thirdparty/bower_components/html5shiv/dist/html5shiv.min.js"></script>
				<script type="text/javascript" src="mysite/thirdparty/bower_components/respond/dest/respond.min.js"></script>
			<![endif]-->
		', 'load js in head');


		// combining files.  Ref: http://docs.silverstripe.org/framework/en/reference/requirements

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
			 	// jquery required for bs javascript
			 	'mysite/thirdparty/bower_components/jquery/dist/jquery.js',	// v2
			 	'mysite/thirdparty/bower_components/jquerymigrate/index.js', // https://github.com/jquery/jquery-migrate/#readme

			 	// comment out the javascript files not needed
				'mysite/thirdparty/bower_components/bootstrap/js/affix.js',
				'mysite/thirdparty/bower_components/bootstrap/js/alert.js',
				'mysite/thirdparty/bower_components/bootstrap/js/botton.js',
				'mysite/thirdparty/bower_components/bootstrap/js/carousel.js',
				'mysite/thirdparty/bower_components/bootstrap/js/transition.js',
				'mysite/thirdparty/bower_components/bootstrap/js/collapse.js', // depends on transition.js
				'mysite/thirdparty/bower_components/bootstrap/js/dropdown.js',
				'mysite/thirdparty/bower_components/bootstrap/js/modal.js',
				'mysite/thirdparty/bower_components/bootstrap/js/tooltip.js',
				'mysite/thirdparty/bower_components/bootstrap/js/popover.js', // depends on tooltip.js
				'mysite/thirdparty/bower_components/bootstrap/js/scrollspy.js',
				'mysite/thirdparty/bower_components/bootstrap/js/tab.js',
			)
		); 

	}
}