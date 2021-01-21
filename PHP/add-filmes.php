<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db_connection.php';

// POST DATA
$data = json_decode(file_get_contents("php://input"));

if(isset($data->titulo) 
	&& isset($data->descricao) 
	&& !empty(trim($data->titulo)) 
	&& !empty(trim($data->descricao))
	){
    $titulo = mysqli_real_escape_string($db_conn, trim($data->titulo));
    $descricao = mysqli_real_escape_string($db_conn, trim($data->descricao));
    if (filter_var($descricao, FILTER_VALIDATE_EMAIL)) {
        $insertFilmes = mysqli_query($db_conn,"INSERT INTO `filmes`(`titulo`,`descricao`) VALUES('$titulo','$descricao')");
        if($insertFilmes){
            $last_id = mysqli_insert_id($db_conn);
            echo json_encode(["success"=>1,"msg"=>"Filmes Inseridos.","id"=>$last_id]);
        }
        else{
            echo json_encode(["success"=>0,"msg"=>"Filmes não Inseridos!"]);
        }
    }
    else{
        echo json_encode(["success"=>0,"msg"=>"Invalid Email Address!"]);
    }
}
else{
    echo json_encode(["success"=>0,"msg"=>"Please fill all the required fields!"]);
}