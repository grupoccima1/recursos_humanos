<?php
session_start();

$session = $_SESSION['usuario'];

if($session == null || $session = ''){
 echo "no tienes permisos para estar aqui";
 die();
}


?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY CCIMA | Dashboard</title>
    <link rel="stylesheet" href="./../public/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="./../public/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="./../public/css/main.css">
    <link href="./../css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="./../public/img/icons/logo-icon.ico">
</head>

<body id="body-pd" style="background-color: #F1F3F6;">
    <div class="preloader">
        <img src="./../public/img/content/preloader/preloader.gif" alt="">
      </div>
    <div class="contenido-main">
        <header class="header" id="header">
            <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
            <div class="d-flex">
                <div class="me-3">
                    <a class="nav-link dropdown-toggle fw-bolder text-blue-500" href="#" id="notifiDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img class="rounded-circle me-1" src="./../public/img/icons/notifications.svg" alt="" style="width: 30px;">
                    </a>
                      <ul id="notificaciones" class="dropdown-menu mt-2" aria-labelledby="notifiDropdown">
                        <li class="mt-3">
                            <a class="dropdown-item" href="#">
                                <div class="sherpa d-flex">
                                    <div class="">
                                        <img class="sherpa-book rounded-circle" style="width: 30px;"
                                            src="./../public/img/avatar/alan_gonzales.jpg" alt="">
                                    </div>
                                    <div class="ms-2">
                                        <span class="d-block sherpa-name text-blue-500 fw-bold">Alan Gonzalez</span>
                                        <span class="sherpa-position" style="font-size: .8rem;">Compartio una Foto en su Muro</span>
                                    </div>
                                 </div>
                            </a>
                        </li>
                        <li class="mt-3">
                            <a class="dropdown-item" href="#">
                                <div class="sherpa d-flex">
                                    <div class="">
                                        <img class="sherpa-book rounded-circle" style="width: 30px;"
                                            src="./../public/img/avatar/dulce_mendoza.jpg" alt="">
                                    </div>
                                    <div class="ms-2">
                                        <span class="d-block sherpa-name text-blue-500 fw-bold">Dulce Mendoza </span>
                                        <span class="sherpa-position" style="font-size: .8rem;">Fue Ascendida</span>
                                    </div>
                            </div>
                            </a>
                        </li>
                      </ul>    
                </div>
                <a class="nav-link dropdown-toggle fw-bolder text-blue-500" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img class="rounded-circle me-1" src="./../public/img/avatar/america_vazquez.jpg" alt="" style="width: 35px;">
                    <?php echo $_SESSION['usuario'] ?>
                  </a>
                  <ul class="dropdown-menu mt-2" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">Perfil</a></li>
                    <li><a class="dropdown-item" href="#">Configuracion de Privacidad</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="./../cerrar_cesion.php">Salir</a></li>
                  </ul>

            </div>
        </header>
        <div class="l-navbar" id="nav-bar">
            <nav class="nav_main">
                <div>
                    <a href="./dashboard.php" class="nav_logo">
                        <i class='bx bx-layer nav_logo-icon'></i>
                        <span class="nav_logo-name">MyCCIMA</span>
                    </a>
                    <div class="nav_list">
                        <a href="./dashboard.php" class="nav_link active">
                            <i class='bx bx-grid-alt nav_icon'></i>
                            <span class="nav_name">Dashboard</span>
                        </a>
                        <a href="./../empleados.php" class="nav_link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Empleados</span>
                        </a>
                        <a href="./../index.html" class="nav_link">
                            <i class='bx bx-message-square-detail nav_icon'></i>
                            <span class="nav_name">Noticias</span> </a>
                        <a href="./../ccimabook.html" class="nav_link">
                            <i class='bx bx-bookmark nav_icon'></i>
                            <span class="nav_name">CCIMABook</span> </a>
                        <a href="./../profile.html" class="nav_link">
                            <i class='bx bx-folder nav_icon'></i>
                            <span class="nav_name">Perfil</span>
                        </a>
                    </div>
                </div> <a href="./../cerrar_cesion.php" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span
                        class="nav_name">Salir</span> </a>
            </nav>
        </div>
        <main>
            <!--Container Main start-->
            <div class="height-100 pb-5" style="background-color: #F1F3F6;">
                <div class="d-flex justify-content-between pt-2">
                    <h4 class="fs-2 text-uppercase text-blue-500">Dashboard</h4>
                    <span class="fs-6 text-uppercase pe-3 text-progreso">generemos progreso</span>
                </div>
                <div class="row my-5 gap-3 gap-md-0">
                    <div class="col-12 col-md-3">
                        <div class="card rounded border-0">
                            <div class="row">
                                <div class="col-3 bg-blue-500 text-center d-flex justify-content-center rounded-start">
                                    <img style="width: 64px;" src="./../public/img/icons/kpis/diamond.svg" alt="">
                                </div>
                                <div class="col-9 text-end">
                                    <h4 class="pt-2 text-start fw-bold fs-6">Tareas Terminadas</h4>
                                    <span class="fw-bolder fs-3 pe-3">521 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="card rounded border-0">
                            <div class="row">
                                <div class="col-3 bg-red-500 text-center d-flex justify-content-center rounded-start">
                                    <img style="width: 64px;" src="./../public/img/icons/trophy.svg" alt="">
                                </div>
                                <div class="col-9 text-end">
                                    <h4 class="pt-2 text-start fw-bold fs-6">Proyectos Terminados</h4>
                                    <span class="fw-bolder fs-3 pe-3">60</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" col-12 col-md-3">
                        <div class="card rounded border-0">
                            <div class="row">
                                <div class="col-3 bg-blue-400 text-center d-flex justify-content-center rounded-start">
                                    <img style="width: 64px;" src="./../public/img/icons/kpis/medalla.svg" alt="">
                                </div>
                                <div class="col-9 text-end">
                                    <h4 class="pt-2 text-start fw-bold fs-6">Puntualidad</h4>
                                    <span class="fw-bolder fs-3 pe-3">98%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="card rounded border-0">
                            <div class="row">
                                <div class="col-3 bg-blue-100 text-center d-flex justify-content-center rounded-start">
                                    <img style="width: 64px;" src="./../public/img/icons/kpis/stars.svg" alt="">
                                </div>
                                <div class="col-9 text-end">
                                    <h4 class="pt-2 text-start fw-bold fs-6">Proyectos Activos</h4>
                                    <span class="fw-bolder fs-3 pe-3">6</span>
                                </div>
                            </div>
                        </div>
                    </div>
    
                </div>
    
                <section>
                    <div class="row my-5">
                        <div class="col-12 col-md-6">
                            <div class="">
                                <div class="card shadow mt-3 p-4" style="border-radius: 25px;">
                                    <h5 class="fs-5 text-uppercase m-2 fw-bold text-secondary">Tareas para hoy </h5>
                                    <hr class="border border-danger ">
                                    <ul class="ps-0 text-secondary" style="list-style: none;">
                                        <li class="py-2">
                                            <div class="d-flex justify-content-between">
                                                <div class="">
                                                    <img style="width: 30px;" src="./../Dashboard_files/check.svg" alt="">
                                                    <span class="fw-bold">Instalación de licencias de Microsoft 365 para el equipo de RR.HH</span>
                                                </div>
                                                <div class="d-none d-md-block">
                                                    <span class="tag bg-danger rounded-pill py-1 px-3 fs-6 text-white">Alta</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="py-2">
                                            <div class="d-flex justify-content-between">
                                                <div class="">
                                                    <img style="width: 30px;" src="./../Dashboard_files/check.svg" alt="">
                                                    <span class="fw-bold">Solicitar cotización con Enrique de antivirus AVIRA Admi </span>
                                                </div>
                                                <div class="d-none d-md-block">
                                                    <span
                                                        class="tag bg-success rounded-pill py-1 px-3 fs-6 text-white">Medio</span>
                                                </div>
    
                                            </div>
                                        </li>
                                        <li class="py-2">
                                            <div class="d-flex justify-content-between">
                                                <div class="">
                                                    <img style="width: 30px;" src="./../Dashboard_files/check.svg" alt="">
                                                    <span class="fw-bold">Crear nuevo usuario en la plataforma para otra prueba Rentas</span>
                                                </div>
                                                <div class="d-none d-md-block">
                                                    <span
                                                        class="tag bg-success rounded-pill py-1 px-3 fs-6 text-white">Medio</span>
                                                </div>
    
                                            </div>
                                        </li>
                                        <li class="py-2">
                                            <div class="d-flex justify-content-between">
                                                <div class="">
                                                    <img style="width: 30px;" src="./../Dashboard_files/check.svg" alt="">
                                                    <span class="fw-bold">Medir si el espacio que nos recomienda Alan Rack Comer</span>
                                                </div>
                                                <div class="d-none d-md-block">
                                                    <span
                                                        class="tag bg-primary rounded-pill py-1 px-3 fs-6 text-white">Baja</span>
                                                </div>
    
                                            </div>
                                        </li>
                                        <li class="py-2">
                                            <div class="d-flex justify-content-between">
                                                <div class="">
                                                    <img style="width: 30px;" src="./../Dashboard_files/check.svg" alt="">
                                                    <span class="fw-bold">Modificar las política de compras, sobre tiempos Estimados</span>
                                                </div>
                                                <div class="d-none d-md-block">
                                                    <span
                                                        class="tag bg-primary rounded-pill py-1 px-3 fs-6 text-white">Baja</span>
                                                </div>
    
                                            </div>
                                        </li>
    
                                    </ul>
                                </div>
                            </div>
                            <div class="row p-1">
                                <div class="col-12 col-md-6">
                                    <div class="mt-4">
                                        <h4 class="fw-bold fs-5">Documentos Importantes</h4>
                                        <div class="card shadow mt-2 p-1" style="border-radius: 25px;">
                                            
                                            <ul class="ps-3 pt-2" style="list-style: none; line-height: 2 ;">
                                                <li>
                                                    <a href="https://recursos.grupoccima.com/#">
                                                        <img src="./Dashboard_files/pdf.svg" class="doc-icon" alt="">
                                                        <span>Solicitud de Requerimientos TI</span>
                                                    </a>
                                                </li>
                                                <li><a href="https://recursos.grupoccima.com/#">
                                                        <img src="./../Dashboard_files/pdf.svg" class="doc-icon" alt="">
                                                        <span>Macro Proceso</span></a></li>
                                                <li><a href="https://recursos.grupoccima.com/#">
                                                        <img src="./../Dashboard_files/pdf.svg" class="doc-icon" alt="">
                                                        <span>Reglamento Interno </span></a></li>
                                                <li><a href="https://recursos.grupoccima.com/#">
                                                        <img src="./../Dashboard_files/pdf.svg" class="doc-icon" alt="">
                                                        <span>Proceso de Facturación</span></a></li>
                                                <li><a href="https://recursos.grupoccima.com/#">
                                                        <img src="./../Dashboard_files/pdf.svg" class="doc-icon" alt="">
                                                        <span>Reglamento de Ventas</span></a></li>
                                                <li><a href="https://recursos.grupoccima.com/#">
                                                        <img src="./../Dashboard_files/pdf.svg" class="doc-icon" alt="">
                                                        <span>Manual de usuario</span></a></li>                                            
    
                                            </ul>
                                            <div class="d-flex justify-content-center mt-3 mb-1">
                                                <a href="https://recursos.grupoccima.com/"
                                                    class="btn btn-primary rounded-pill px-5"> Ver Mas</a>
                                            </div>
                                        </div>
    
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="mt-4">
                                        <h4 class="fs-5 fw-bold">Apps</h4>
                                        <div class="row">
                                            <div class="col-4 col-md-6 gap-1 mt-1">
                                                <a href="https://www.google.com/intl/es-419/drive/" rel="nofollow" target="_blank">
                                                    <div class="card shadow d-flex flex-column align-items-center p-2"
                                                        style="border-radius: 25px;">
                                                        <img class="w-75 p-3" src="./../Dashboard_files/logo.png" alt="">
                                                        <h6 class="text-center fw-medium"> Google Drive</h6>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-4 col-md-6 gap-1 mt-1">
                                                <a href="https://www.office.com/" rel="nofollow" target="_blank">
                                                    <div class="card shadow d-flex flex-column align-items-center p-2"
                                                        style="border-radius: 25px;">
                                                        <img class="w-70 p-3" src="./../public/img/logos/apps/microsoft_360.png"
                                                            alt="">
                                                        <h6 class="text-center fw-medium">Office365</h6>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-4 col-md-6 gap-1 mt-0 mt-md-3">
                                                <a href="https://chat.openai.com/auth/login" rel="nofollow" target="_blank">
                                                    <div class="card shadow d-flex flex-column align-items-center p-2"
                                                        style="border-radius: 25px;">
                                                        <img class="w-75 p-3" src="./../public/img/logos/apps/chatgpt.png" alt="">
                                                        <h6 class="text-center fw-medium">Chat GPT</h6>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-4 col-md-6 gap-1 mt-3">
                                                <a href="https://trello.com/" rel="nofollow" target="_blank">
                                                    <div class="card shadow d-flex flex-column align-items-center p-2"
                                                        style="border-radius: 25px;">
                                                        <img class="w-75 p-3" src="./../public/img/logos/apps/trello.png" alt="">
                                                        <h6 class="text-center fw-medium">Trello</h6>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="pt-3">
                                <div class="card shadow pb-4" style="border-radius: 25px;">
                                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                                        <div class="carousel-indicators">
                                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                        </div>
                                        <div class="carousel-inner">
                                          <div class="carousel-item active">
                                            <img src="./../public/img/content/img_01.jpg" class="d-block w-100" alt="...">
                                          </div>
                                          <div class="carousel-item">
                                            <img src="./../public/img/content/img_01.jpg" class="d-block w-100" alt="...">
                                          </div>
                                          <div class="carousel-item">
                                            <img src="./../public/img/content/img_01.jpg" class="d-block w-100" alt="...">
                                          </div>
                                        </div>
                                      </div>
                                    <img class="pt-1" src="./../public/img/content/calendario.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="card shadow bg-blue-500 mt-3" style="border-radius: 25px;">
                                <div class="card-body p-4">
                                    <h4 class="text-white fs-4 text-shadow text-center px-3 mb-4">Aviso Importante !!</h4>
                                    <h5 class="text-white fs-6 fw-bold">Actualizar Documentación</h5>
                                    <p class="text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit.sit amet
                                        consectetur adipisicing elit. </p>
                                    <p class=" text-white text-end">19/MAYO/2023 </p>
                                </div>
                            </div>
                            <div class="card mt-3 p-4 shadow" style="border-radius: 25px;">
                                <h4 class="fs-4 text-blue-500 fw-semibold"> Tu Opinión es Importante</h4>
                                <p>¿En que día de la semana te Gustaria Asistir de Ropa Casual?</p>
                                <div class="">
                                    <form action="https://recursos.grupoccima.com/" method="post">
                                        <input type="radio" id="Lunes" name="dia" value="Lunes">
                                        <label for="Lunes">Miércoles</label><br>
                                        <input type="radio" id="Martes" name="dia" value="Martes">
                                        <label for="Martes">Jueves</label><br>
                                        <input type="radio" id="Miercoles" name="dia" value="Miercoles">
                                        <label for="Miercoles">Viernes</label>
                                        <div class="mt-3 d-flex justify-content-center pt-3">
                                            <button type="button" class="btn btn-primary rounded-pill px-5"> Votar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <br>
            </div>
        </main>

    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./../public/js/preloader.js"></script>
    <script src="./../public/js/app.js"></script>
    <script src="./../js/bootstrap-datetimepicker.min.js"></script>
</body>

</html>