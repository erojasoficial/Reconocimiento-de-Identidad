<?php 
require('conexion2.php');
 
header("Content-Type: text/html;charset=utf-8");
 ?>
<!DOCTYPE html>
<html>

<head>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,700,700i%7CMaitree:200,300,400,600,700&amp;subset=latin-ext" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>


<body>

<div class="container">	

  <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<center><h3>Criminales</h3></center><br>
<center>nombres: <input type="text" name="nombres" id="nombres"/></center><br>
<center>delito: <input type="text" name="delito" id="delito"/></center><br>
<center>recompensa: <input type="text" name="recompensa" id="recompensa"/></center><br>
<center><input type="submit" class="radius" " value="Grabar" name="btnClickI" id="btnClickI" /> &nbsp;&nbsp;&nbsp;
</form>
<input type="submit"  class="radius" onclick="cerrarse()" value="Cancelar" name="" id="" /> </center><br>


<?php 



if(isset($_POST['btnClickI'])){?>
<?php 	
  $nombres = $_POST['nombres'];
  $delito = $_POST['delito'];
  $recompensa = $_POST['recompensa'];


  $insert7="INSERT INTO personas (nombres, delito, recompensa) VALUES('$nombres','$delito','$recompensa')";
  $rest_insert7=$mysqli->query($insert7);

 }

 ?>



</div>	


<script> 
function cerrarse(){ 
window.close() 
} 
</script> 



</body>
</html>