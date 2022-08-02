<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    echo '<script type="text/javascript">';
    echo 'alert("Login necessário");';
    echo 'window.location.href = "login.php";';
    echo '</script>';
    exit;
}
if (isset($_POST['logout'])) {
    session_destroy();
    header('Location: index.php');
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link href="style4.css" rel="stylesheet" type="text/css" />
    <script src="script.js" type="text/javascript"></script>
    <title>PC BOOST</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/guia.png">
</head>

<body class="fundo">
    <header class="p-3 bg-dark text-white">
        <div class="container-fluid">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <ul>
                    <a href="#" class="nav-link p-0"><img src="images/barra.png" width="80" height="50"></a>
                </ul>
                <a href="" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
                </a>
                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                    <li><a href="index.php" class="nav-link px-2 text-white">Página Inicial</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="AA" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Categorias</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item text-dark" href="A">Componentes</a></li>
                            <li><a class="dropdown-item text-dark" href="A">Periféricos</a></li>
                            <li><a class="dropdown-item text-dark" href="A">Cadeiras</a></li>
                        </ul>
                    </li>
                    <li><a href="contato.php" class="nav-link px-2 text-white">Contato</a></li>
                    <li><a href="pcboost.php" class="nav-link px-2 text-white">Quem somos</a></li>
                    <li><a class="nav-link mt-1 px-5 text-white p-0 h4">PC BOOST</a></li>
                </ul>
                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                    <input type="search" class="form-control form-control-dark text-light" placeholder="Search..." aria-label="Search">
                </form>
                <li><a href="carrinho.php"><img class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" src="images/carrinho.png" width="50" height="50"></a></li>
                <div class="text-end">
                    <button type="button" ID="logout" class="btn btn-outline-light me-2"><a href="login.php">Logout</a></button>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="admin row mt-50">
            <form  method="POST" action="lib/addprod.php" enctype="multipart/form-data" >
                <fieldset>
                    <h3 class="text-center subhead">Adicionar Produtos</h3>
                    <div class="form-field">
                        <h4> Categoria: </h4>
                        <select class='form-control bg-light' name="categoria" type="text" id="categoria" aria-required="true" class="full-width">
                            <option>Selecione uma opção</option>
                            <?php
                            require 'lib/conn.php';
                            $connection = DB::getInstance();
                            $stmt2 = $connection->query("SELECT * FROM categorias");
                            $dadoscat = $stmt2->fetchAll();
                            foreach ($dadoscat as $d) {
                                $select = "<option value='{$d['id']}'>{$d['nome_cat']}</option>";
                                echo $select;
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-field">
                        <label for='nome'>Nome</label><br>
                        <input name="nome" type="text" id="nome" placeholder="Insira aqui o nome do produto" aria-required="true">
                    </div>
                    <div class="mt-2 form-field">
                        <label for='descricao'>Descrição do produto </label>
                        <textarea class='form-control bg-light' name="descricao" type="text" id="DESCRICAO" placeholder="Descreva o produto" aria-required="true" class="full-width" row=20></textarea>
                    </div>
                    <div class="mt-2 form-field">
                        <label for='valor'>Valor do produto </label>
                        <input class='form-control bg-light' step=0.01 name="valor" type="number" id="valor" placeholder="Valor o produto" aria-required="true"></input>
                    </div>
                    <div class="mt-2 form-field">
                        <label for='estoque'>Estoque do produto </label>
                        <input class='form-control bg-light' name="estoque" type="number" id="estoque" placeholder="Estoque o produto" aria-required="true"></input>
                    </div>
                    <div class="mt-2 form-field">
                        <label for='FOTOA'> Foto </label><br>
                        <input name="FOTOA" type="file" id="FOTOA" aria-required="true" class="full-width">
                    </div>
                    <div class="mt-2 form-field mt-4 mb-2">
                        <button type="submit" class="btn btn-primary btn-lg" style="background-color: #39b54a">Salvar</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

    <div class="d-flex flex-column h-100 mt-50">
        <footer class="w-100 py-4 flex-shrink-0">
            <div class="container py-4">
                <div class="row gy-4 gx-5">
                    <div class="col-lg-4 col-md-6">
                        <h5 class="h1 text-white">PC BOOST</h5>
                        <p class="small text-muted">PCBoost o seu PC você só encontra aqui!</p>
                        <p class="small text-muted mb-0">&copy; Copyrights. Todos direitos reservados. <a class="text-primary" href="#">PCBoost.com</a></p>
                    </div>
                    <div class="col-lg-2 col-md-6">
                        <h5 class="text-white mb-3">Atalhos importantes</h5>
                        <ul class="list-unstyled text-muted">
                            <li><a href="index.php">Página Inicial</a></li>
                            <li><a href="contato.php">Contato</a></li>
                            <li><a href="pcboost.php">Quem Somos</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-white mb-3">Newsletter</h5>
                        <p class="small text-muted">Deixe seu email para receber promoções .</p>
                        <form action="#">
                            <div class="input-group mb-3">
                                <input class="form-control" type="text" placeholder="Seu email" aria-label="Recipient's username" aria-describedby="button-addon2">
                                <button class="btn btn-primary" id="button-addon2" type="button"><i class="fas fa-paper-plane"></i>Assinar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>