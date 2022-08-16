<?php
include_once "../modelo/Inmuebles_Model.php";

if(!empty($_POST) && !empty($_POST['action']) != ''){
    $action = $_POST['action'];
}else{
    $action = "index";
}

$modelName = "Inmuebles_Model";
$modelo = new $modelName;
$response = $modelo->{$action}($_POST);
echo json_encode($response);