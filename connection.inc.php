<?php
session_start();
$con=mysqli_connect("localhost","root","","mobileweb");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/mobile');
define('SITE_PATH','http://localhost/mobile/');

define('MODEL_IMAGE_SERVER_PATH',SERVER_PATH.'/media/model/');
define('MODEL_IMAGE_SITE_PATH',SITE_PATH.'media/model/');

?> 


