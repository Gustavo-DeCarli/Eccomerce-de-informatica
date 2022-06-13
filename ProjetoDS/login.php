<?php
session_start();
require 'lib/conn.php';
$connection = DB::getInstance();
if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['senha'];
    $query = $connection->prepare("SELECT * FROM usuario WHERE email=:email");
    $query->bindParam("email", $email, PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetch(PDO::FETCH_ASSOC);
    if (!$result) {
        echo '<p class="alert alert-warning text-center error">Email não cadastrado!</p>';
    } else {
        if (password_verify($password, $result['senha'])) {
            $_SESSION['user_id'] = $result['id'];
            header('Location: index.php');
        } else {
            echo '<p class="alert alert-warning text-center error">Senha ou email incorreto!</p>';
        }
    }
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
    <header class="p-2 bg-dark text-white">
        <div class="container-fluid">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <ul>
                    <a href="#" class="nav-link p-0 mt-1"><img src="images/barra.png" width="80" height="50"></a>
                </ul>
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
                </a>
                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

                    <li><a href="index.php" class="nav-link px-2 text-white">Página Inicial</a></li>
                    <li><a href="#" class="nav-link px-2 text-white">Contato</a></li>
                    <li><a href="#" class="nav-link px-2 text-white">Quem somos</a></li>
                </ul>
                <div class="text-end">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li class="nav-link"><a class="nav-link p-0 text-white h4">PC BOOST</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <section class="vh-50 gradient-custom">
        <div class="container py-5 h-25">
            <div class="row d-flex justify-content-center align-items-center h-50">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-light" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">

                            <div class="mb-md-5 mt-md-4 pb-5">
                                <form method="POST">
                                    <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                    <p class="text-white-50 mb-5">Entre com seu email e senha!</p>
                                    <div class="form-outline form-white mb-4">
                                        <input type="email" name="email" class="form-control form-control-lg text-light" />
                                        <label class="form-label" for="email">Email</label>
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <input type="password" name="senha" class="form-control form-control-lg text-light" />
                                        <label class="form-label" for="senha">Senha</label>
                                    </div>
                                    <button class="btn btn-outline-light btn-lg px-5" name="login" type="submit">Login</button>
                                </form>
                            </div>
                            <div>
                                <a class="mb-0">Não possui uma conta? <a href="register.php" class="text-white-50 fw-bold">Cadastre-se</a>
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
                            <li><a href="#">Página Inicial</a></li>
                            <li><a href="#">Sobre Nós</a></li>
                            <li><a href="#">Quem Somos</a></li>
                            <li><a href="#">FAQ</a></li>
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