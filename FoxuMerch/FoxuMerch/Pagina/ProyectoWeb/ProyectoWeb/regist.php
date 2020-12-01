<?php

// Create connection
$conn = mysqli_connect("localhost", "root", "root", "registro");

// Check connection
if (isset($_POST["register"])) {
    if (strlen($_POST["name"]) >= 1 && strlen($_POST['email']) >= 1) {
      $name = trim($_POST["name"]);
      $email = trim($_POST["email"]);
      $password = trim($_POST["password"]);


      $sql = "INSERT INTO datos (`nombre`, `email`, `password`) VALUES ('$name', '$email', '$password');";
      $resultado = mysqli_query($conn, $sql);
	    if ($resultado) {
	    	?>
	    	<h3 class="ok">¡Te has inscripto correctamente!</h3>
           <?php
	    } else {
	    	?>
	    	<h3 class="bad">¡Ups ha ocurrido un error!</h3>
           <?php
	    }
    }   else {
	    	?>
	    	<h3 class="bad">¡Por favor complete los campos!</h3>
           <?php
    }
}

?>
