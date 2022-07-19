<?php
require "conn.php";
class Funcoes
{
    private $id = "";
    private $iduser = "";
    private $IdProd = "";
    private $setor = "";
    private $problema = "";
    private $descricao = "";
    private $data = "";
    private $status = "";
    private $previsao = "";
    private $atendente = "";
    private $conclusao = "";

    function __toString()
    {
        return json_encode([
            "id" => $this->id,
            "iduser" => $this->iduser,
            "IdProd" => $this->IdProd,
        ]);
    }

    function setIdUser($v)
    {
        $this->iduser = $v;
    }
    function setIdProd($v)
    {
        $this->idprod = $v;
    }
    function setSetor($v)
    {
        $this->setor = $v;
    }
    function setProblema($v)
    {
        $this->problema = $v;
    }
    function setDescricao($v)
    {
        $this->descricao = $v;
    }
    function setStatus($v)
    {
        $this->status = $v;
    }
    function setData($v)
    {
        $this->data = $v;
    }
    function setAtendente($v)
    {
        $this->atendente = $v;
    }
    function setPrevisao($v)
    {
        $this->previsao = $v;
    }
    function setConclusao($v)
    {
        $this->conclusao = $v;
    }

    function addcar()
    {
        $connection = DB::getInstance();
        try {

            $consulta = $connection->prepare("START TRANSACTION;");
            $consulta->execute();
            $consulta = $connection->prepare("INSERT INTO carrinho VALUES (:id, :idprod, :iduser)");
            $consulta->execute([
                ':id' => $this->id,
                ':iduser' => $this->iduser,
                ':idprod' => $this->idprod
            ]);
            $consulta = $connection->prepare("COMMIT;");
            $consulta->execute();
            header('Location: ../index.php');
        } catch (Exception $e) {
            $consulta = $connection->prepare("ROLLBACK;");
            $consulta->execute();
            die($e->getMessage());
        }
    }

    function delcar()
    {
        $connection = DB::getInstance();
        try {
            $consulta = $connection->prepare("START TRANSACTION;");
            $consulta->execute();
            $consulta = $connection->prepare("DELETE FROM carrinho WHERE id_user=:iduser and id_prod = :idprod LIMIT 1;");
            $consulta->execute([
                ':idprod' => $this->idprod,
                ':iduser' => $this->iduser
            ]);
            $consulta = $connection->prepare("COMMIT;");
            $consulta->execute();
            header('Location: ../carrinho.php');
        } catch (Exception $e) {
            $consulta = $connection->prepare("ROLLBACK;");
            $consulta->execute();
            die($e->getMessage());
        }
    }

    function finalizar()
    {
        $connection = DB::getInstance();
        try {
            $consulta = $connection->prepare("START TRANSACTION;");
            $consulta->execute();
            $consulta = $connection->prepare("UPDATE chamados SET status='Finalizado',conclusao=:conclusao, previsao=:previsao, atendente=:atendente WHERE id = :id");
            $consulta->execute([
                ':id' => $this->id,
                ':conclusao' => $this->conclusao,
                ':previsao' => $this->previsao,
                ':atendente' => $this->atendente
            ]);
            $consulta = $connection->prepare("COMMIT;");
            $consulta->execute();
        } catch (Exception $e) {
            $consulta = $connection->prepare("ROLLBACK;");
            $consulta->execute();
            die($e->getMessage());
        }
    }
}