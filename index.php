<?php
include 'config/config.php';
if (DEBUG_MODE) {
    ini_set('display_errors', 'On');
    error_reporting(E_ALL);
}
include 'lib/Message.php';
include 'lib/File.php';
include 'lib/Database.php';
include 'lib/Session.php';
    Session::start();
include 'lib/Model.php';
include 'lib/View.php';
include 'lib/Controller.php';
include 'lib/Debug.php';
include 'lib/Helper.php';
include 'lib/Application.php';
$app = new Application();
