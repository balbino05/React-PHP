<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db_connection.php';

$allFilmes = mysqli_query($db_conn,"SELECT * FROM `filmes`");
if(mysqli_num_rows($allFilmes) > 0){
    $all_Filmes = mysqli_fetch_all($allFilmes,MYSQLI_ASSOC);
    echo json_encode(["success"=>1,"users"=>$all_Filmes]);
}
else{
    echo json_encode(["success"=>0]);
}