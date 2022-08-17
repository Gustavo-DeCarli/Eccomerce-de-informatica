<?php
require "funcoes.php";
session_start();
try {
    $s = new Funcoes();
    $s->setIdUser($_SESSION['user_id']);
    $s->setvt($_POST['vt']);
    json_encode($s);
    $s->addpedido();
}catch(Exception $e){
    print json_encode([
        "error" => true,
        "message" => $e->getMessage()
    ]);
}