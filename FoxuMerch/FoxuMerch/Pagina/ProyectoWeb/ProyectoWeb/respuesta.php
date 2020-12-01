<?php
session_start();
?>
<html>
<link rel="stylesheet" href="CSS/style.css">
<body>

  <div class="cont">
    <div class="formato">
      <h3>Pedido registrado</h3>
      Su pedido ha sido registrado. <?php echo $_POST["nom"]; ?><br>
      Gracias por comprar con nosotros. <br> <br>
      <form action="pedidos.php" method="post">
        <input type="submit" style="background-color: #74C5D2;" name="submit" value="RESULTADOS">
      </form>
    </div>
  </div>

</body>
</html>
