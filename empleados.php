<?php
session_start();

$session = $_SESSION['usuario'];

if($session == null || $session = ''){
 echo "no tienes permisos para estar aqui";
 die();
}

include "./class/conexion.php";

?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY CCIMA | Dashboard</title>
    <link rel="shortcut icon" type="image/x-icon" href="public/img/icons/logo-icon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="public/css/main.css">
    <link rel="stylesheet" href="public/css/style.css">
</head>

<body id="body-pd" style="background-color: #F1F3F6;">
    <header class="header" id="header">
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div class="d-flex">
            <div class="me-3">
                <a class="nav-link dropdown-toggle fw-bolder text-blue-500" href="#" id="notifiDropdown" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false">
                    <img class="rounded-circle me-1" src="public/img/icons/notifications.svg" alt=""
                        style="width: 30px;">
                </a>
                <ul id="notificaciones" class="dropdown-menu mt-2" aria-labelledby="notifiDropdown">
                    <li class="mt-3">
                        <a class="dropdown-item" href="#">
                            <div class="sherpa d-flex">
                                <div class="">
                                    <img class="sherpa-book rounded-circle" style="width: 30px;"
                                        src="public/img/avatar/alan_gonzales.jpg" alt="">
                                </div>
                                <div class="ms-2">
                                    <span class="d-block sherpa-name text-blue-500 fw-bold">Alan Gonzalez</span>
                                    <span class="sherpa-position" style="font-size: .8rem;">Compartio una Foto en su
                                        Muro</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="mt-3">
                        <a class="dropdown-item" href="#">
                            <div class="sherpa d-flex">
                                <div class="">
                                    <img class="sherpa-book rounded-circle" style="width: 30px;"
                                        src="public/img/avatar/dulce_mendoza.jpg" alt="">
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
            <a class="nav-link dropdown-toggle fw-bolder text-blue-500 d-flex align-items-center" href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">
                <img class="rounded-circle me-1" src="public/img/avatar/america_vazquez.jpg" alt=""
                    style="width: 35px;">
                    <span class="d-none d-md-block">
                    <?php echo $_SESSION['usuario'] ?>
                    </span>
            </a>
            <ul class="dropdown-menu mt-2" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Perfil</a></li>
                <li><a class="dropdown-item" href="#">Configuracion de Privacidad</a></li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Salir</a></li>
            </ul>

        </div>
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav_main">
            <div>
                <a href="dashboard.html" class="nav_logo">
                    <i class='bx bx-layer nav_logo-icon'></i>
                    <span class="nav_logo-name">MyCCIMA</span>
                </a>
                <div class="nav_list">
                    <a href="dashboard.html" class="nav_link">
                        <i class='bx bx-grid-alt nav_icon'></i>
                        <span class="nav_name">Dashboard</span>
                    </a>
                    <a href="empleados.html" class="nav_link active">
                        <i class='bx bx-user nav_icon'></i>
                        <span class="nav_name">Empleados</span>
                    </a>
                    <a href="index.html" class="nav_link">
                        <i class='bx bx-message-square-detail nav_icon'></i>
                        <span class="nav_name">Noticias</span> </a>
                    <a href="ccimabook.html" class="nav_link">
                        <i class='bx bx-bookmark nav_icon'></i>
                        <span class="nav_name">CCIMABook</span> </a>
                    <a href="profile.html" class="nav_link">
                        <i class='bx bx-folder nav_icon'></i>
                        <span class="nav_name">Perfil</span>
                    </a>
                </div>
            </div> <a href="login.html" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span
                    class="nav_name">Salir</span> </a>
        </nav>
    </div>
    
    <main>
        <!--Container Main start-->
        <div class="container-fluid" style="background-color: #F1F3F6;">
            <div class="d-flex justify-content-between pt-2">
                <h4 class="fs-2 text-uppercase text-blue-500">Empleados</h4>
                <span class=" fs-6  text-uppercase pe-3 text-progreso">generemos progreso</span>
            </div>
            <section>
                <div class="table-responsive">
                    <table id="table-employee" class="table">
                        <thead class="bg-blue-500 text-white">
                            <tr>
                                <th class="text-center" scope="col">Empleados</th>
                                <th class="text-center" scope="col">Edad</th>
                                <th class="text-center" scope="col">Antiguedad</th>
                                <th class="text-center" scope="col">CURP</th>
                                <th class="text-center" scope="col">RFC</th>
                                <th class="text-center" scope="col">IMSS</th>
                                <th class="text-center" scope="col">Opciones</th>
                            </tr>
                        </thead>

                        <!-- codigo para jalar info de la tabla -->
                        <?php
                        $sel="SELECT nombre,ap_paterno,ap_materno,edad,puesto,antiguedad,curp,rfc,infonavit FROM empleados AS e INNER JOIN departamento AS d ON e.id_empleado = d.id_empleado INNER JOIN contrato AS c ON e.id_empleado = c.id_empleado INNER JOIN datos_fiscales AS df ON e.id_empleado = df.id_empleado";
                        $res=mysqli_query($conexion,$sel);
                        while($mos=mysqli_fetch_row($res)){ ?>

                        <tbody>
                            <tr>
                                <td>
                                    <div class="sherpa d-flex">
                                        <div class="">
                                            <img class="sherpa-book rounded-circle" style="width: 38px;"
                                                src="public/img/avatar/alan_gonzales.jpg" alt="">
                                        </div>
                                        <div class="ms-2">
                                            <span class="d-block sherpa-name text-blue-500 fw-bold"><?php echo $mos[0]." ".$mos[1]." ".$mos[2];  ?></span>
                                            <span class="sherpa-position" style="font-size: .8rem;"><?php echo $mos[4]?> </span>
                                        </div>
                                    </div>
                                </td>
                                <td><?php echo $mos[3] ?> Años</td>
                                <td><?php echo $mos[5] ?> Años</td>
                                <td><?php echo $mos[6] ?></td>
                                <td><?php echo $mos[7] ?></td>
                                <td><?php echo $mos[8] ?></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            <img src="public/img/icons/options.svg" alt="" style="width: 20px;">
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li><a class="dropdown-item" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal">Ver Información</a></li>
                                            <li><a class="dropdown-item" href="#">Editar</a></li>
                                            <li><a class="dropdown-item" href="#">Eliminar</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <?php
                        }
                    ?>
    
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </main>

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Información del Empleado</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="containr-fluid">
                        <div class="row">
                            <div class="col-12 col-md-3">
                                <img src="public/img/avatar/alan_gonzales.jpg" alt="">
                                <h5 class="mt-3 text-blue-500">Documentación</h5>
                                <ul class="ms-2" style="list-style: none; ">
                                    <li class="fs-12"> <a class="text-decoration-none text-blue-500" href="">Acta de
                                            Nacimiento</a> </li>
                                    <li class="fs-12"> <a class="text-decoration-none text-blue-500" href="">CURP</a>
                                    </li>
                                    <li class="fs-12"> <a class="text-decoration-none text-blue-500" href="">RFC</a>
                                    </li>
                                    <li class="fs-12"> <a class="text-decoration-none text-blue-500" href="">Titulo</a>
                                    </li>
                                    <li class="fs-12"> <a class="text-decoration-none text-blue-500" href="">FIEL</a>
                                    </li>
                                    <li class="fs-12"> <a class="text-decoration-none text-blue-500" href="">Acta
                                            Administrativa(s)</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-md-9">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td colspan="3" class="text-blue-500 fs-5">Datos
                                                    Personales</td>
                                            </tr>
                                            <tr>
                                                <td><span class="fs-12 fst-italic d-block">Nombre:</span> <span
                                                        class="fw-bold text-blue-500">Alan</span></td>
                                                <td><span class="fs-12 fst-italic d-block">Apellido Paterno: </span><span
                                                        class="fw-bold text-blue-500">Gonzalez </span></td>
                                                <td><span class="fs-12 fst-italic d-block">Apellido Materno: </span><span
                                                        class="fw-bold text-blue-500">Montes de Oca</span></td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">Sexo:</span> <span
                                                        class="fw-bold text-blue-500">Masculino</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Edad: </span> <span
                                                        class="fw-bold text-blue-500"> 33 Años</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Lugar de Nacimiento</span> <span
                                                        class="fw-bold text-blue-500">CDMX</span> </td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">Fecha de nacimiento: </span>
                                                    <span class="fw-bold text-blue-500">12-Mayo-1995</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Nacionalidad:</span> <span
                                                        class="fw-bold text-blue-500">Mexicana</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Numero de telefono
                                                        personal:</span> <span class="fw-bold text-blue-500">+52
                                                        (123)-444-7890</span></td>
    
                                            </tr>
                                            <tr>
                                                <td colspan="3"><span class="fs-12 fst-italic d-block">Domicilio:</span>
                                                    <span class="fw-bold text-blue-500"> Blvd: Bernardo Quintana 88,
                                                        Carretaras Querétaro; Querétaro</span></td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">Correo personal:</span> <span
                                                        class="fw-bold text-blue-500">johndoe@example.com</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Estudios: </span> <span
                                                        class="fw-bold text-blue-500">Lic. en Diseño Gráfico</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Estado cívil:</span> <span
                                                        class="fw-bold text-blue-500">Soltero</span> </td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">IMSS:</span> <span
                                                        class="fw-bold text-blue-500">14139766183</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">CURP:</span> <span
                                                        class="fw-bold text-blue-500">VELA971118HQTLNL03</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">RFC:</span> <span
                                                        class="fw-bold text-blue-500"> VELA971118793 </span></td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">Hijos:</span> <span
                                                        class="fw-bold text-blue-500">Ninguno</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Tipo de Sangre:</span> <span
                                                        class="fw-bold text-blue-500">(O +)</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Alergias</span> <span
                                                        class="fw-bold text-blue-500">Penicilina</span> </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" class="text-blue-500 fs-5">Datos
                                                    Laborales</td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">Unidad de negocio: </span> <span
                                                        class="fw-bold text-blue-500">Navetec</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Departamento: </span> <span
                                                        class="fw-bold text-blue-500">Comercializacion</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Puesto: </span> <span
                                                        class="fw-bold text-blue-500">Lider de Diseño</span> </td>
                                            </tr>
    
                                            <tr>
    
                                                <td> <span class="fs-12 fst-italic d-block">Fecha de ingreso: </span> <span
                                                        class="fw-bold text-blue-500">25-Diciembre-2019</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Tipo de Contrato:</span> <span
                                                        class="fw-bold text-blue-500">indeterminado</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Vacaciones:</span> <span
                                                        class="fw-bold text-blue-500">12 dias</span> </td>
                                            </tr>
                                            
                                            
                            
    
                                            <tr>
                                                <td colspan="3" class="text-blue-500 fs-5">
                                                    Contacto de emergencia</td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">Nombre: </span> <span
                                                        class="fw-bold text-blue-500">Jackeline Gonzalez Montes de
                                                        Oca</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Teléfono: </span> <span
                                                        class="fw-bold text-blue-500">+52 (123)-444-7890</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Parentesco: </span> <span
                                                        class="fw-bold text-blue-500">Hermana</span> </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" class="text-blue-500 fs-5">
                                                    Benificiarios</td>
                                            </tr>
                                            <tr>
                                                <td> <span class="fs-12 fst-italic d-block">Nombre: </span> <span
                                                        class="fw-bold text-blue-500">Jackeline Gonzalez Montes de
                                                        Oca</span></td>
                                                <td> <span class="fs-12 fst-italic d-block">Teléfono: </span> <span
                                                        class="fw-bold text-blue-500">+52 (123)-444-7890</span> </td>
                                                <td> <span class="fs-12 fst-italic d-block">Parentesco: </span> <span
                                                        class="fw-bold text-blue-500">Hermana</span> </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="public/js/app.js"></script>
</body>

</html>