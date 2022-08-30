<?php
require "funcoes.php";
$arquivo_nome ="";
if(isset($_FILES["FOTOA"])){

    $arquivo = $_FILES['FOTOA']['name'];
    $pasta_dir = "../images/";
    $arquivo_nome = $pasta_dir . $arquivo;
    $certo = 'images/' . $arquivo;
    move_uploaded_file($_FILES["FOTOA"]['tmp_name'], $arquivo_nome);
}
try {
    $s = new Funcoes();
    $s->setid(null);
    $s->setidcat($_POST['categoria']);
    $s->setnome($_POST['nome']);
    $s->setvalor($_POST['valor']);
    $s->setdescricao($_POST['descricao']);
    $s->setestoque($_POST['estoque']);
    $s->setimagem($certo);
    json_encode($s);
    $s->addprod();
}catch(Exception $e){
    print json_encode([
        "error" => true,
        "message" => $e->getMessage()
    ]);
}



?>