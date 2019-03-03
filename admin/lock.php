<?php
include("blocks/bd.php");


//simple PHP login script using Session
//start the session * this is important
session_start();

//login script
if(isset($_REQUEST['ch']) && $_REQUEST['ch'] == 'login'){

//give your login credentials here
if($_REQUEST['uname'] == 'my_name' && $_REQUEST['pass'] == 'my_password')
$_SESSION['login_user'] = 1;
else
$_SESSION['login_msg'] = 1;
}

//get the page name where to redirect
if(isset($_REQUEST['pagename']))
$pagename = $_REQUEST['pagename'];

//logout script
if(isset($_REQUEST['ch']) && $_REQUEST['ch'] == 'logout'){
unset($_SESSION['login_user']);
header('Location:login.php');
}
if(isset($_SESSION['login_user'])){
if(isset($_REQUEST['pagename']))
header('Location:'.$pagename.'.php');
else
header('Location:admin.php');
}else{




?>