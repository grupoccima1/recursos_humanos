<?php
include './class/conexion.php';

$correo = $_POST['exampleInputEmail1'];
$pass = $_POST['exampleInputPassword1'];


$les="SELECT count(*) FROM usuarios WHERE correo = '$correo' AND password = '$pass'";
$ser=mysqli_query($conexion,$les);
$som = mysqli_fetch_row($ser); 


$les1="SELECT * FROM usuarios WHERE correo = '$correo' AND password = '$pass'";
$ser1=mysqli_query($conexion,$les1);
$som1 = mysqli_fetch_row($ser1);


 switch ($som[0]) {
   case '1':
       switch ($som1[4]) {
           case '1':
                session_start();
                $_SESSION['usuario'] = $som1[1];
                echo "<script>window.location='./master/dashboard_master.php';</script>";
           
            break;
            case '2':
                session_start();
                $_SESSION['usuario'] = $som1[1];
                echo "<script>window.location='./medio/dashboard_medio.php';</script>";
        
                
            break;
            case '3':
                session_start();
                $_SESSION['usuario'] = $som1[1];
                echo "<script>window.location='./promedio/dashboard_promedio.php';</script>";
                
                
            break;

        }
        break;
    
    default:
        echo "los datos son incorrectos";
        break;
 }

?>