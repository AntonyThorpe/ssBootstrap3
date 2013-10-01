<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'root',
	"database" => 'ssbootstrap3theme',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
SSViewer::set_theme('ssBootstrap3');

// Set the site locale
i18n::set_locale('en_GB');

// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();

/**
 * Set environment: 'dev', 'test', or 'live'
 */
Director::set_environment_type("dev");   // was "live" - for final published version.  "dev" provides error messages.  

// enable search
FulltextSearchable::enable();

// ****************************************************
// **************** error & dev settings **************
// ****************************************************
// always log errors
SS_Log::add_writer(new SS_LogFileWriter('../silverstripe.log'), SS_Log::ERR);
if (!Director::isLive()) {
	// turn on errors
	ini_set('display_errors', 1);
	error_reporting(E_ALL);
	// display template filenames as comments in the html output
	// SSViewer::set_source_file_comments(true);
	// flush templates every reload, this may make your site slow,  (http://www.ssbits.com/snippets/2010/automatically-flush-when-in-dev-mode/)
	// and might cause "filetime" errors, which appear when the template gets flushed twice in the same moment
	// SSViewer::flush_template_cache();
	} else {
	// we are in live mode, send errors per email
	SS_Log::add_writer(new SS_LogEmailWriter('antony.thorpe@budget12.com'), SS_Log::ERR);
	// turn off error reporting
	ini_set('display_errors', 0);
	error_reporting(0);
}

