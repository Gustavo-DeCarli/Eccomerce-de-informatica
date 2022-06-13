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
                    <li><a href="" class="nav-link px-2 text-white">Contato</a></li>
                    <li><a href="" class="nav-link px-2 text-white">Quem somos</a></li>
                    <li><a class="nav-link mt-1 px-5 text-white p-0 h4">PC BOOST</a></li>
                </ul>
                <li><a href="carrinho.php"><img class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" src="images/carrinho.png" width="50" height="50"></a></li>
                <div class="text-end">
                    <button type="button" ID="logout" class="btn btn-outline-light me-2"><a href="login.php">Logout<a></button>
                </div>
            </div>
        </div>
    </header>
    <div class="tabela container container-fluid position-static">
        <table id='chamados' class='table rounded mt-50 bg-light'>
            <thead>
                <tr>
                    <th scope='col'>Produto</th>
                    <th scope='col'>Valor</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>NOTEBOOK GAMER MSI BRAVO 15</td>
                    <td>R$ 6499,00 <form action='#' method='POST'><button name='id' id='id' value='ID' type='submit' class='btn p-1 btn-danger'>Remover</button></form></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <th scope="row">Totals: R$ 6499,00 <form action='#' method='POST'><button name='id' id='id' value='id' type='submit' class='btn p-1 btn-success'>Finalizar</th>
                </tr>
            </tfoot>
        </table>
        <div class="d-flex flex-column container-fluid position-absolute start-50 translate-middle fixed-bottom">
            <footer class="w-100 py-4 flex-shrink-0 fixed-bottom">
                <div class="container py-4">
                    <div class="row gy-4 gx-5">
                        <div class="col-lg-4 col-md-6">
                            <h5 class="h1 text-white">PC BOOST</h5>
                            <p class="small text-muted">PCBoost o seu PC você só encontra aqui!</p>
                            <p class="small text-muted mb-0">&copy; Copyrights. Todos direitos reservados. <a class="text-primary" href="#">Pboost.com</a></p>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <h5 class="text-white mb-3">Atalhos importantes</h5>
                            <ul class="list-unstyled text-muted">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Get started</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <h5 class="text-white mb-3">Contato</h5>
                            <ul class="list-unstyled text-muted">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Get started</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <h5 class="text-white mb-3">Newsletter</h5>
                            <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                            <form action="#">
                                <div class="input-group mb-3">
                                    <input class="form-control" type="text" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                                    <button class="btn btn-primary" id="button-addon2" type="button"><i class="fas fa-paper-plane"></i></button>
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