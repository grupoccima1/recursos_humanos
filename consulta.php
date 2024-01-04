<?php 

require './class/conexion.php';

$id = $conexion->real_escape_string($_POST['id']);

$sql = "SELECT id_empleado, nombre, ap_paterno, ap_materno FROM empleados WHERE id_empleado = $id LIMIT 1";
$resultado = $conexion->query($sql);
$rows = $resultado->num_rows;

$datos = [];

if($rows > 0){
    $datos = $resultado->fetch_assoc();
}

echo json_encode($datos, JSON_UNESCAPED_UNICODE);