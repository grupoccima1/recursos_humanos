<?php
    require_once 'conexion.php';


    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./../css/all2.css">
    <title>Document</title>
</head>

<body>


    <center>
        <div class="contenedor">
        <h1> Beneficiario</h1>

        <div class="table_res">
            <div class="table-responsive">
                <table class="table">
                    <thead class="table">
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido paterno</th>
                            <th scope="col">Apellido materno</th>
                            <th scope="col">Parentesco</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                                $sel="SELECT nombre,ap_paterno,ap_materno,parentesco FROM beneficiario";
                                $res=mysqli_query($conexion,$sel);
                                while($mos=mysqli_fetch_row($res)){?>
                                        <tr class=""></tr>
                                        <td><?php echo $mos[0]; ?></td>
                                        <td><?php echo $mos[1]; ?></td>
                                        <td><?php echo $mos[2]; ?></td>
                                        <td><?php echo $mos[3]; ?></td>
                                        <td>
                                        <button type="button" class="btn btn-primary btn-lg deletedbt" data-bs-toggle="modal" data-bs-target="#del">
                                        <?php echo "<a href='beneficiario.php?id=".$mos[0]."'>Modificar</a>";  ?>
                                        </button>
                                        </td>
                                        </td>
                                        <td>
                                        <button type="button" class="btn btn-danger btn-lg editbtn">
                                            <?php echo "<a href='elim.php?id=".$mos[0]."'>Eliminar</a>";  ?>
                                        </button>
                                        </td>
                                        </tr>
                                        <?php
                                            }   
                        ?>
                    </tbody>
                </table>
            </div>
        </div>



        </div>
    </center>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
</body>


</html>

